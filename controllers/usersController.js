const express = require('express');
const router = express.Router();

const {
  getAllUsers,
  getUserProfile,
  createUser,
} = require('../queries/userQueries'); 

router.get('/', async (req, res) => {
  
  const users = await getAllUsers();
  
  if (!Array.isArray(users)) {
    return res.status(500).json({ error: 'Server Error. Please Try Again.' });
  } else {
    return res.json(users);
  }
});

router.get('/:id', async (req, res) => {
  const userId = req.params.id
  const user = await getUserProfile(userId);

  if (user.id) {
    return res.json(user);
  } else {
    return res.status(500).json({ error: 'Server Error. Please Try Again.' });

  }
});

router.post('/', async (req, res) => {
  console.log('* * * Entered Router.post * * *')
  const { first_name, last_name, user_name, email, phone1, city, home_state, zip_code } = req.body;
  console.log('===>', first_name, last_name, city)
  try {
    const createdUser = await createUser(first_name, last_name, user_name, email, phone1, city, home_state, zip_code );

    if (createdUser.error) {
      return res.status(400).json({ error: createdUser.error });
    } else {
      return res.status(201).json(createdUser);
    }
  } catch (error) {
    console.error('Error creating user:', error);
    return res.status(500).json({ error: 'Server Error. Please Try Again.' });
  }
});

module.exports = router;
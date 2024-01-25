const db = require('../db/dbConfig.js');

const getAllUsers = async () => {
  try {
    const users = await db.any('SELECT * FROM gtr_users');
    return users;
  } catch (error) {
    console.error('Error in getAllUsers:', error);
    return null;
  }
};

const getUserProfile = async (userId)=> {
  try {
    const userProfile = await db.one('SELECT * FROM gtr_users WHERE gtr_users.id = $1', userId);
    // console.log('userprofile ==>', userProfile)
    return userProfile;
  } catch (error) {
    console.error(`Error in getUserProfile for userId ${userId}: `, error);
    return null;
  }

}
const createUser = async ( first_name, last_name, user_name, email, phone1, city, home_state, zip_code )=> {
  try {
    const newUser = await db.one('INSERT INTO gtr_users (first_name, last_name, user_name, email, phone1, city, home_state, zip_code) VALUES ( $1, $2, $3, $4, $5, $6, $7, $8 ) RETURNING * ', [first_name, last_name, user_name, email, phone1, city, home_state, zip_code])
    console.log('newUser ==>', newUser)
    return newUser;
  } catch (error) {
    console.error(`Error creating new user: `, error);
    return null;
  }

}




module.exports = {
  getAllUsers,
  getUserProfile,
  createUser,
//   updateUser,
//   deleteUser,
//   createUserProfile,
};

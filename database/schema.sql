/* Users Collection */
{
  "_id": ObjectId,
  "username": String,
  "email": String,
  "password": String, // hashed password
  "learningPath": [ObjectId], // array of course IDs
  "progress": [{
    "courseId": ObjectId,
    "completedExercises": [ObjectId] // array of completed exercise IDs
  }],
  "joinedAt": Date
}

/* Courses Collection */
{
  "_id": ObjectId,
  "title": String,
  "description": String,
  "createdBy": ObjectId, // user ID of the course creator
  "createdAt": Date,
  "exercises": [ObjectId] // array of exercise IDs
}

/* Exercises Collection */
{
  "_id": ObjectId,
  "title": String,
  "description": String,
  "codeSnippet": String,
  "solution": String,
  "courseId": ObjectId, // ID of the course this exercise belongs to
  "createdAt": Date
}

/* Discussions Collection */
{
  "_id": ObjectId,
  "courseId": ObjectId, // ID of the course this discussion belongs to
  "userId": ObjectId, // ID of the user who started the discussion
  "message": String,
  "createdAt": Date
}

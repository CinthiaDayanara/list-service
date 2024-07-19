const express = require('express');
const connectDB = require('./config/db');
const userRoutes = require('./routes/user');
require('dotenv').config();

const app = express();

connectDB();

app.use(express.json({ extended: false }));

app.use('/api/user', userRoutes);

const PORT = process.env.PORT || 5001;

app.listen(PORT, () => console.log(`Server started on port ${PORT}`));

```javascript
const socketio = require('socket.io');

module.exports = (server) => {
    const io = socketio(server);

    io.on('connection', (socket) => {
        console.log('New client connected');

        // Event for real-time collaboration
        socket.on('collaboration', (data) => {
            socket.broadcast.emit('collaboration', data);
        });

        // Event for real-time feedback
        socket.on('feedback', (data) => {
            socket.broadcast.emit('feedback', data);
        });

        socket.on('disconnect', () => {
            console.log('Client disconnected');
        });
    });
};
```

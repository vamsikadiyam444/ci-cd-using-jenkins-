<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My DevOps Page</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #ff9a9e, #fad0c4);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.2);
            text-align: center;
            animation: rainbow 5s infinite alternate;
        }
        h1 {
            font-size: 2.5em;
            color: #ff4d4d;
            margin-bottom: 20px;
        }
        p {
            font-size: 1.5em;
            color: #3333ff;
            margin: 10px 0;
        }
        @keyframes rainbow {
            0% { background-color: #ffeb3b; }
            25% { background-color: #ff5722; }
            50% { background-color: #4caf50; }
            75% { background-color: #2196f3; }
            100% { background-color: #9c27b0; }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Hi! 👋</h1>
        <p>This is Vamsi. Just started learning DevOps. 👍</p>
        <p>I'm learning DevOps using <strong>Jenkins</strong> for <strong>CI/CD</strong>. 🚀</p>
    </div>
</body>
</html>


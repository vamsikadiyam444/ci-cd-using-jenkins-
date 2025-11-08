<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>DevOps Dashboard</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #667eea, #764ba2);
            margin: 0;
            padding: 20px;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .container {
            background: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0,0,0,0.2);
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        h1 {
            color: #333;
            margin-bottom: 10px;
            font-size: 2.5em;
        }

        .subtitle {
            color: #666;
            margin-bottom: 30px;
        }

        .status {
            background: #f8f9fa;
            padding: 15px;
            border-radius: 10px;
            margin: 20px 0;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        .status-dot {
            width: 10px;
            height: 10px;
            background: #2ecc71;
            border-radius: 50%;
            animation: pulse 2s infinite;
        }

        .metrics {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 15px;
            margin: 25px 0;
        }

        .metric {
            padding: 15px;
            background: #f8f9fa;
            border-radius: 10px;
        }

        .metric-value {
            font-size: 1.8em;
            font-weight: bold;
            color: #333;
        }

        .metric-label {
            color: #666;
            font-size: 0.9em;
        }

        .deploy-btn {
            background: #667eea;
            color: white;
            border: none;
            padding: 15px 30px;
            border-radius: 8px;
            font-size: 1.1em;
            cursor: pointer;
            width: 100%;
            transition: background 0.3s;
        }

        .deploy-btn:hover {
            background: #5a6fd8;
        }

        .deploy-btn:disabled {
            background: #ccc;
            cursor: not-allowed;
        }

        @keyframes pulse {
            0%, 100% { opacity: 1; }
            50% { opacity: 0.5; }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 DevOps</h1>
        <p class="subtitle">CI/CD Pipeline Dashboard</p>
        
        <div class="status">
            <div class="status-dot"></div>
            <span>All Systems Operational</span>
        </div>

        <div class="metrics">
            <div class="metric">
                <div class="metric-value">99.9%</div>
                <div class="metric-label">Uptime</div>
            </div>
            <div class="metric">
                <div class="metric-value">2.1s</div>
                <div class="metric-label">Deploy Time</div>
            </div>
        </div>

        <button class="deploy-btn" onclick="deploy()">Deploy Now</button>
    </div>

    <script>
        function deploy() {
            const btn = document.querySelector('.deploy-btn');
            btn.disabled = true;
            btn.textContent = 'Deploying...';
            
            setTimeout(() => {
                btn.textContent = 'Deployed!';
                btn.style.background = '#2ecc71';
                
                setTimeout(() => {
                    btn.textContent = 'Deploy Now';
                    btn.style.background = '';
                    btn.disabled = false;
                }, 2000);
            }, 3000);
        }
    </script>
</body>
</html>


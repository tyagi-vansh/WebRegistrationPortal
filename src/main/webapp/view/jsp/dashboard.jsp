<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Quicksand:wght@300;400;500;600;700&display=swap');
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Quicksand', sans-serif;
        }

        body {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background: #000;
            color: #fff;
        }

        header {
            background: #222;
            padding: 20px;
            text-align: center;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.5);
        }

        header h1 {
            color: #0f0;
            margin-bottom: 10px;
        }

        .logout {
            background: #0f0;
            color: #000;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-weight: 600;
            font-size: 1em;
        }

        .logout:hover {
            opacity: 0.8;
        }

        .content {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
            gap: 20px;
            background: linear-gradient(#000, #222);
        }

        .card {
            background: #333;
            border-radius: 4px;
            padding: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.9);
            width: 300px;
            text-align: center;
        }

        .card h2 {
            color: #0f0;
            margin-bottom: 15px;
        }

        .card p {
            color: #aaa;
            margin-bottom: 10px;
        }

        @media (max-width: 600px) {
            .card {
                width: 90%;
            }
        }
    </style>
</head>

<body>
    <header>
        <h1>Welcome to the Dashboard</h1>
        <a href="/login"><button class="logout">Logout</button></a>
    </header>
    <div class="content">
        <div class="card">
            <h2>User Information</h2>
        </div>
        <div class="card">
            <h2>Settings</h2>
            <p>Change your preferences here.</p>
        </div>
        <div class="card">
            <h2>Statistics</h2>
            <p>View your activity statistics.</p>
        </div>
    </div>
</body>

</html>

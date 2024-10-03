<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Signup & Login Options</title>
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
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background: #000;
        }
        section {
            position: relative;
            background: #222;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.5);
            text-align: center;
        }
        h2 {
            font-size: 2em;
            color: #0f0;
            margin-bottom: 30px;
        }
        .button {
            background: #0f0;
            color: #000;
            border: none;
            padding: 15px 30px;
            font-size: 1.2em;
            font-weight: 600;
            margin: 10px;
            cursor: pointer;
            border-radius: 5px;
            transition: background 0.3s;
        }
        .button:hover {
            background: #00cc00;
        }
        @media (max-width: 600px) {
            h2 {
                font-size: 1.5em;
            }
            .button {
                padding: 10px 20px;
                font-size: 1em;
            }
        }
    </style>
</head>
<body>
    <section>
        <h2>Welcome</h2>
        <a href="/signup">
            <button class="button">Signup</button>
        </a>
        <a href="/login">
            <button class="button">Login</button>
        </a>
    </section>
</body>
</html>

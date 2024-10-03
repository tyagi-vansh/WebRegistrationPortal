<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Signup</title>
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
            position: absolute;
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            gap: 2px;
            flex-wrap: wrap;
            overflow: hidden;
        }

        section::before {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            background: linear-gradient(#000, #0f0, #000);
            animation: animate 5s linear infinite;
        }

        @keyframes animate {
            0% {
                transform: translateY(-100%);
            }

            100% {
                transform: translateY(100%);
            }
        }

        section .signup {
            position: absolute;
            width: 400px;
            background: #222;
            z-index: 1000;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px;
            border-radius: 4px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.9);
        }

        section .signup .content {
            position: relative;
            width: 100%;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            gap: 40px;
        }

        section .signup .content h2 {
            font-size: 2em;
            color: #0f0;
            text-transform: uppercase;
        }

        section .signup .content .form {
            width: 100%;
            display: flex;
            flex-direction: column;
            gap: 25px;
        }

        section .signup .content .form .inputBox {
            position: relative;
            width: 100%;
        }

        section .signup .content .form .inputBox input {
            position: relative;
            width: 100%;
            background: #333;
            border: none;
            outline: none;
            padding: 25px 10px 7.5px;
            border-radius: 4px;
            color: #fff;
            font-weight: 500;
            font-size: 1em;
        }

        section .signup .content .form .inputBox i {
            position: absolute;
            left: 0;
            padding: 15px 10px;
            font-style: normal;
            color: #aaa;
            transition: 0.5s;
            pointer-events: none;
        }

        .signup .content .form .inputBox input:focus~i,
        .signup .content .form .inputBox input:valid~i {
            transform: translateY(-7.5px);
            font-size: 0.8em;
            color: #fff;
        }

        .signup .content .form .inputBox input[type="submit"] {
            padding: 10px;
            background: #0f0;
            color: #000;
            font-weight: 600;
            font-size: 1.35em;
            letter-spacing: 0.05em;
            cursor: pointer;
        }

        input[type="submit"]:active {
            opacity: 0.6;
        }

        @media (max-width: 900px) {
            section span {
                width: calc(10vw - 2px);
                height: calc(10vw - 2px);
            }
        }

        @media (max-width: 600px) {
            section span {
                width: calc(20vw - 2px);
                height: calc(20vw - 2px);
            }
        }
    </style>
</head>

<body>
    <section>
        <span></span> <span></span> <span></span> <span></span>
        <div class="signup">
            <div class="content">
                <h2>Sign Up</h2>
                <c:if test="${not empty message}">
                    <h3 style="color: red;">${message}</h3>
                </c:if>
                <form action="/submit-signup" method="POST">
                    <div class="form">
                        <div class="inputBox">
                            <input type="text" name="username" required> <i>Username</i>
                        </div>
                        <div class="inputBox">
                            <input type="email" name="email" required> <i>Email</i>
                        </div>
                        <div class="inputBox">
                            <input type="password" name="password" required> <i>Password</i>
                        </div>
                        <div class="inputBox">
                            <input type="text" name="address" required> <i>Address</i>
                        </div>
                        <div class="inputBox">
                            <input type="tel" name="mobile" required> <i>Mobile</i>
                        </div>
                        <div class="inputBox">
                            <input type="number" name="age" required> <i>Age</i>
                        </div>
                        <div class="inputBox">
                            <input type="submit" value="Sign Up">
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
</body>

</html>

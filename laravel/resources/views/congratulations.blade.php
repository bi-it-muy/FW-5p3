<!DOCTYPE html>
<html lang="de-CH">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Gratulation</title>
  <style>
    body {
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      background-color: #282c34;
      color: white;
      text-align: center;
      font-family: 'Arial', sans-serif;
    }

    main {
      border: 3px solid #3de904;
      padding: 20px;
      border-radius: 15px;
      box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
    }

    h1 {
      font-size: 4.5rem;
      margin-bottom: 0.5rem;
      animation: fadeIn 5s;
    }

    .name {
      font-weight: bold;
      color: #f00;
    }

    p {
      font-size: 3.2rem;
      color: #adbac7;
    }

    /* Keyframes für FadeIn-Animation */
    @keyframes fadeIn {
      from {
        opacity: 0;
      }
      to {
        opacity: 1;
      }
    }

    /* Responsive Design */
    @media (max-width: 600px) {
      h1 {
        font-size: 2rem;
      }

      p {
        font-size: 1rem;
      }
    }
  </style>
</head>

<body>
  <main>
    <header>
      <h1>Herzlichen Glückwunsch!</h1>
    </header>
    <section>
      <p class="name">{{ $name }}</p>
      <p>Sie können jetzt auch mit Scheisse entwickeln.</p>
    </section>
  </main>
</body>

</html>

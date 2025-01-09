<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Agora - Create Post</title>
    <link rel="stylesheet" href="styleprofile.css">
</head>
<body>

    <header>
        <h1>Agora</h1>
    </header>

    <main>
        <h2>Create a New Post</h2>
        <form action="CreatePostServlet" method="post">
            <label for="title">Title:</label><br>
            <input type="text" id="title" name="title" required><br><br>

            <label for="content">Content:</label><br>
            <textarea id="content" name="content" required></textarea><br><br>

            <input type="submit" value="Create Post">
        </form>
    </main>

</body>
</html>
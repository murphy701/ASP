<%@ Page Language="C#" AutoEventWireup="true" CodeFIle="HomePage.aspx.cs" Inherits="HomePage" %>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Community</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous"/>
   <style>
       body {
    height: 100vh;
    background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),
    url("https://images.unsplash.com/photo-1572021335469-31706a17aaef?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80");
    background-size: cover;
    background-position: center;
    text-shadow: 0 0.05rem 0.1rem rgba(0, 0, 0, 0.5);
    box-shadow: inset 0 0 5rem rgba(0, 0, 0, 0.5);
}

.cover-container {
    max-width: 60vw;
}

.nav-link {
    padding: 0.25rem 0;
    font-weight: 700;
    color: rgba(255,255,255,0.5);
    margin-left: 1rem;
    border-bottom: 0.25rem solid transparent;
}

    .nav-link:hover {
        color: rgba(255,255,255,0.5);
        border-bottom-color: rgba(255,255,255,0.5);
    }

    .nav-link.active {
        color: white;
        border-bottom-color: white;
    }

.btn-secondary, .btn-secondary:hover {
    color: #333;
    text-shadow: none;
}

   </style>
</head>

<body class="d-flex text-center text-white bg-dark">

    <div class="d-flex w-100 h-100 p-3 mx-auto flex-column">
        <header class="mb-auto">
            <form id="form1" runat="server">
                <nav class="nav nav-masthead justify-content-center float-md-right">
                    <a class="navbar-brand" href="homePage.aspx">Community</a>
                    <% if (Request.Cookies["name"] == null) { %>
                    <a class="nav-link ms-auto" href="users/login.aspx">Login</a>
                    <a class="nav-link" href="users/SignUp.aspx">Register</a>
                    <% } %>
                    <% else{ %>
                        <asp:Label ID="username" class="navbar-brand ms-auto fs-5" runat="server"><%= Request.Cookies["name"].Value %></asp:Label>
                        <asp:LinkButton ID="LinkButton1" runat="server" class="nav-link" OnClick="btnLogout_Click">Logout</asp:LinkButton>
                    <% } %>
                </nav> 
            </form>
        </header>
        <main class="px-3">
            <h1>Community</h1>
            <a href="main/Show.aspx" class="btn btn-lg btn-secondary font-weight-bold border-white bg-white">View
               Main</a>
            <a href="main/Show.aspx" class="btn btn-lg btn-secondary font-weight-bold border-white bg-white">View
               Main</a>
        </main>

        <footer class="mt-auto text-white-50">
            <p>&copy; 2022 </p>
        </footer>
    </div>   
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
        crossorigin="anonymous"></script>
</body>

</html>
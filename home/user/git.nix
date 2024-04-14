let
  userName = "Arnaud BEUX";
  email = "nytuo.yt@gmail.com";
in
{
    programs.git = {
        enable = true;
        userName = userName;
        userEmail = email;
    };
}

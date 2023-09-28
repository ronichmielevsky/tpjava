using System.Data.SqlClient;
using System.Collections.Generic;
using Dapper;

static class BD{
    private static string _connectionString = @"server=localhost;DataBase=login;Trusted_connection=True;";
    
public static void AgregarCuenta(Usuario user){
    string SQL = "INSERT INTO Usuario(Nombre,UserName,Contraseña,Email,Telefono) VALUES (@nombre, @username, @contraseña, @email, @telefono)";
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new { nombre = user.Nombre, username = user.UserName, contraseña = user.Contraseña, email = user.Email, telefono = user.Telefono});
        }
}

public static Usuario VerificarCuenta(string username, string contraseña){
    Usuario roni = null;
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Usuario WHERE UserName=@pusername AND Contraseña=@pcontraseña";
            roni = db.QueryFirstOrDefault<Usuario>(SQL, new { pusername = username, pcontraseña = contraseña});
        }
        return roni;
}
}
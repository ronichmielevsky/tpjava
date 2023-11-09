using System.Data.SqlClient;
using System.Collections.Generic;
using Dapper;

static class BD{
    private static string _connectionString = @"server=localhost;DataBase=login;Trusted_connection=True;";
    
public static void AgregarCuenta(Usuario user){
    string SQL = "INSERT INTO Usuario(Username,Contraseña,Nombre,Email,Telefono) VALUES (@username, @contraseña, @nombre, @email, @telefono)";
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new { nombre = user.Nombre, username = user.UserName, contraseña = user.Contraseña, email = user.Email, telefono = user.Telefono});
        }
}

public static List<string> ListarUsuarios(){
    List<string> _usuarios=null;
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT UserName FROM Usuario";
            _usuarios = db.Query<string>(SQL).ToList();;
        }
        return _usuarios;
}
public static Usuario VerificarCuenta(string username, string contraseña){
    Usuario roni = new Usuario();
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT * FROM Usuario WHERE UserName = @pUserName AND Contraseña = @pContraseña";
            roni = db.QueryFirstOrDefault<Usuario>(SQL, new {pUserName = username, pContraseña = contraseña });
        }
        return roni;
}
public static Usuario OlvideCont(string username){
    Usuario roni = null;
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            string SQL = "SELECT Contraseña FROM Usuario WHERE UserName = @pUserName";
            roni = db.QueryFirstOrDefault<Usuario>(SQL, new {pUserName = username});
        }
        return roni;
}

public static Inmobiliaria TraerInmobiliaria(string idusuario)
        {
         Usuario inmo = null;
          using (SqlConnection db = new SqlConnection(_connectionString)){
            string SQL = "SELECT * FROM Usuario WHERE IdUsuario = @pIdUsuario";
            inmo = db.QueryFirstOrDefault<Usuario>(SQL, new {pIdUsuario = idusuario});
        }
            return inmo;        
    }
    

public static Propiedades TraerCas(string idpropiedad){
         Usuario casa = null;
          using (SqlConnection db = new SqlConnection(_connectionString))
          {
            string SQL = "SELECT * FROM Usuario WHERE IdPropiedad = @pIdpropiedad";
            casa = db.QueryFirstOrDefault<Usuario>(SQL, new {pIdPropiedad = idpropiedad});
          }
            return casa;
        }   

}
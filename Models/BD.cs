using System.Data.SqlClient;
using System.Collections.Generic;
using Dapper;
static class BD{
    private static string _connectionString = @"server=localhost;DataBase=login;Trusted_connection=True;";
    
public static void AgregarUsuario(Usuario user){
    string SQL = "INSERT INTO Usuario(Nombre,UserName,Contraseña,Email,Telefono) VALUES(@nombre, @username, @contraseña, @email, @telefono)";
     using (SqlConnection db = new SqlConnection(_connectionString))
        {
            db.Execute(SQL, new { pIdCandidato = can.IdCandidato, pIdPartido = can.idPartido, pApellido = can.Apellido, pNombre = can.Nombre, pFechaNacimiento = can.FechaNacimiento, pFoto = can.Foto, pPostulacion = can.Postulacion });
        }
}
}
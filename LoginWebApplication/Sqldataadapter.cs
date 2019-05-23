using System.Data.SqlClient;

namespace LoginWebApplication
{
    internal class Sqldataadapter
    {
        private SqlConnection con;
        private string v;

        public Sqldataadapter(string v, SqlConnection con)
        {
            this.v = v;
            this.con = con;
        }
    }
}
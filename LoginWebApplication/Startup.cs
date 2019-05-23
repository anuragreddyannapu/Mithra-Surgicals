using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(LoginWebApplication.Startup))]
namespace LoginWebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(FinalProjesi.Startup))]
namespace FinalProjesi
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

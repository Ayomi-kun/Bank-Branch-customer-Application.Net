using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BasicBankApplication.Startup))]
namespace BasicBankApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

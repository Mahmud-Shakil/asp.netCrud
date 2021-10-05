using System;
using System.Collections.Generic;
using System.Web;
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

namespace Projects
{
    public static class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            var settings = new FriendlyUrlSettings();
            settings.AutoRedirectMode = RedirectMode.Temporary;
            routes.EnableFriendlyUrls(settings);
            routes.MapPageRoute("Home", "Home", "~/Home.aspx");
            routes.MapPageRoute("Register", "Register", "~/Registration/Register.aspx");
            routes.MapPageRoute("Login", "Login", "~/Login.aspx");
            routes.MapPageRoute("ObjCrud", "ObjCrud", "~/ObjCrud.aspx");
            routes.MapPageRoute("SqlCrud", "SqlCrud", "~/SqlCrud.aspx");
            routes.MapPageRoute("EntityCrud", "EntityCrud", "~/EntityCrud.aspx");
            routes.MapPageRoute("Controls", "Controls", "~/Controls.aspx");
            routes.MapPageRoute("default_error", "default_error", "~/DefaultError.aspx");
            routes.MapPageRoute("unauthorized_error", "unauthorized_error", "~/AuthenticationError.aspx");
            routes.MapPageRoute("page_not_found_error", "page_not_found_error", "~/PageNotFoundError.aspx");
            routes.MapPageRoute("internal_server_error", "internal_server_error", "~/ServerError.aspx");

        }
    }
}

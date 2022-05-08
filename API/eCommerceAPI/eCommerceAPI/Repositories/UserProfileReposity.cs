using eCommerceAPI.Entity;
using eCommerceAPI.Entity.Model;
using eCommerceAPI.IRepositories;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerceAPI.Repositories
{
    public class UserProfileReposity : IUserProfileReposity
    {
        private readonly IConfiguration _configuration;
        public UserProfileReposity(IConfiguration configuration)
        {
            _configuration = configuration;
        }
        public async Task<UserProfileModel> Login(UserProfileQuery query)
        {
            var result = new UserProfileModel();
            var decryptKey = _configuration.GetValue<string>("AppSettings:DecryptKey");



            return result;
        }
    }
}

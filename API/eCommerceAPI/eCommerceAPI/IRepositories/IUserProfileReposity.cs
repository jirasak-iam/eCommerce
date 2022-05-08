using eCommerceAPI.Entity;
using eCommerceAPI.Entity.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerceAPI.IRepositories
{
    public interface IUserProfileReposity
    {
        Task<UserProfileModel> Login(UserProfileQuery query);
    }
}

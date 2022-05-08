using eCommerceAPI.Entity;
using eCommerceAPI.IRepositories;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Threading.Tasks;

namespace eCommerceAPI.Controllers
{
    [Route("api/UserProfile")]
    [ApiController]
    public class UserProfileController : ControllerBase
    {
        
        private IUserProfileReposity _userProfileRepository;

        public UserProfileController(IUserProfileReposity userProfileRepository)
        {
            _userProfileRepository = userProfileRepository;
        }

        [HttpGet]
        [Route("/UserProfile/Login")]
        public async Task<JsonResult> Login([FromBody] UserProfileQuery query)
        {
            var response = await _userProfileRepository.Login(query);
            return new JsonResult(response);
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace eCommerceAPI.Entity.Model
{
    public class UserProfileModel
    {
        public string UserName { get; set; }
        public string UserPass { get; set; }
        public Results Result { get; set; }
    }
}

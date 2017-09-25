using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TerpFarm.Domain.DeafClients
{
    /// <summary>
    /// 
    /// </summary>
    public class DeafClient
    {
        private string name = null;
        private string signingPreference = null;
        private string terpPreference = null;

        public string Name
        {
            get
            {
                return name;
            }
            set
            {
                name = value;
            }
        }

        public string SigningPreference
        {
            get
            {
                return signingPreference;
            }
            set
            {
                signingPreference = value;
            }
        }

        public string TerpPreference
        {
            get
            {
                return terpPreference;
            }
            set
            {
                terpPreference = value;
            }
        }

        public bool ValidateDeafClient()
        {
            if (Name == null) return false;
            if (SigningPreference == null) return false;
            if (terpPreference == null) return false;
            return true;
        }
    }
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TerpFarm.Domain.Interpreters
{
    /// <summary>
    /// 
    /// </summary>
    public class Interpreter
    {
        private string name = null;
        private string address1 = null;
        private string address2 = null;
        private string city = null;
        private string zip = null;
        private string phone = null;
        private string email = null;
        private string notes = null;

        private string state = null;
        private int yearsOfExperience = 0;
        private string certification = null;
        private bool insured = false;
        private bool licensure = false;

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

        public string Address1
        {
            get
            {
                return address1;
            }
            set
            {
                address1 = value;
            }
        }

        public string Address2
        {
            get
            {
                return address2;
            }
            set
            {
                address2 = value;
            }
        }

        public string City
        {
            get
            {
                return city;
            }
            set
            {
                city = value;
            }
        }

        public string State
        {
            get
            {
                return state;
            }
            set
            {
                state = value;
            }
        }

        public string Zip
        {
            get
            {
                return zip;
            }
            set
            {
                zip = value;
            }
        }

        public string Phone
        {
            get
            {
                return phone;
            }
            set
            {
                phone = value;
            }
        }

        public string Email
        {
            get
            {
                return email;
            }
            set
            {
                email = value;
            }
        }

        public string Notes
        {
            get
            {
                return notes;
            }
            set
            {
                notes = value;
            }
        }

        public int YearsOfExperience
        {
            get
            {
                return yearsOfExperience;
            }
            set
            {
                yearsOfExperience = value;
            }
        }

        public string Certification
        {
            get
            {
                return certification;
            }
            set
            {
                certification = value;
            }
        }

        public bool Licensure
        {
            get
            {
                return licensure;
            }
            set
            {
                licensure = value;
            }
        }

        public bool Insured
        {
            get
            {
                return insured;
            }
            set
            {
                insured = value;
            }
        }

        public bool ValidateInterpreter()
        {
            if (Name == null) return false;
            if (Address1 == null) return false;
            if (Address2 == null) return false;
            if (City == null) return false;
            if (State == null) return false;
            if (Zip == null) return false;
            if (Zip.ToString().Length != 5) return false;
            if (Phone == null) return false;
            if (Email == null) return false;
            if (YearsOfExperience <= 0) return false;
            if (certification == null) return false;
            return true;
        }
    }
}
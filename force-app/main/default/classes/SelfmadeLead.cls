public with sharing class SelfmadeLead {

    public Integer id;  //1234
    public String created;  //2023-02-27T18:33:23.013575+01:00
    public cls_location location;
    public cls_product product;
    public cls_customer customer;
    public cls_parameters parameters;
    public cls_calculations calculations;
    public cls_prices prices;
    public cls_photos[] photos;
    public cls_legal legal;
  
    public class cls_location {
      public Integer id;  //567
      public String name;  //Niederlassung München
    }
  
    public class cls_product {
      public Integer id;  //890
      public String name;  //PV-Anlage, 415 Wp, Kauf
    }
  
    public class cls_customer {
      public String first_name;  //John
      public String last_name;  //Doe
      public String street;  //Hauptstraße
      public String street_number;  //123
      public String zipcode;  //12345
      public String city;  //Berlin
      public cls_coordinate coordinate;
      public String email;  //john.doe@example.com
      public String phone;  //+491234567890
      public Integer year_of_birth;  //1978
    }
  
    public class cls_coordinate {
      public Double lat;  //52.12345
      public Double lng;  //13.12345
    }
  
    public class cls_parameters {
      public String house_type;  //detached house
      public Decimal energy_consumption;  //7000
      public boolean is_interested_in_emobility;
      public boolean is_interested_in_heat_pump;
      public boolean is_interested_in_batteries;
      public Integer roof_angle;  //30
      public Integer roof_orientation;  //155
      public String roof_area;  //more-than-100-qm
      public String roof_material;  //clay
      public String roof_renovated_period;  //new_building
      public String installation_time;  //1-6 months
      public boolean customer_is_owner;
    }
  
    public class cls_calculations {
      public Double netto_capacity;  //12.75
      public String suitability;  //verygood
      public cls_pv_area pv_area;
      public Integer max_energy;  //74758
      public Integer number_of_panels;  //28
      public Integer yearly_yield;  //9174
      public Integer autarky;  //67
      public Double co2_savings;  //4.2
    }
  
    public class cls_pv_area {
      public Double well_suited;  //323.9
      public Double suited;  //95.9
      public Integer barely_suited;  //0
    }
  
    public class cls_prices {
      public Double with_battery;  //23456.78
      public Double without_battery;  //12345.67
    }
  
    public class cls_photos {
      public String type;  //gable view
      public String url;  //https://images.example.com/8491384-1D92A491/gable-view/1234567-8901234.jpg
      public String score;  //good
    }
  
    public class cls_legal {
      public boolean terms_and_conditions_accepted;
      public boolean data_privacy_accepted;
    }
  }
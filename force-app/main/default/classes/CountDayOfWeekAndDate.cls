public with sharing class CountDayOfWeekAndDate {

    private static Map<String, Integer> weightOfDayOdWeek = new Map<String, Integer>{
        'Mon'     => 1,
        'Tue'    => 2,
        'Wed'  => 3,
        'Thu'   => 4,
        'Fri'     => 5,
        'Sat'   => 6,
        'Sun'     => 7     
    }; 

    public static Map<String, Integer> getweightOfDayOdWeek() {
        return weightOfDayOdWeek;
    }

    public static Integer getDayOfTheWeek(Date userDate) {
        DateTime myDateTime = (DateTime) userDate;
        String dayOfWeek = myDateTime.format('E');
        Integer getWeightOfDay = getweightOfDayOdWeek().get(dayOfWeek); 
        return getWeightOfDay;
    }

    public static Date countDayName(String reqestDayName, Date dateOfDayOnRequiredWeek) {
        Integer getWeightOfDay = getweightOfDayOdWeek().get(reqestDayName) - getDayOfTheWeek(dateOfDayOnRequiredWeek);
        System.debug(dateOfDayOnRequiredWeek.addDays(getWeightOfDay));
        return dateOfDayOnRequiredWeek.addDays(getWeightOfDay);
    }
}
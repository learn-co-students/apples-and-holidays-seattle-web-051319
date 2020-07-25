require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten


end

def all_supplies_in_holidays(holiday_hash)
  holiday_supplies.each do |season, holiday|
    puts "#{season.capitalize}:"
     holiday.each do |holiday_name, supplies|
      temp_holiday_name = holiday_name.to_s.split("_").map {|word| word.capitalize}.join(" ")
      temp_supplies = supplies.join(", ")
      puts "  #{temp_holiday_name}: #{temp_supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_supplies.collect do |season, holidays|
    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
        holidays_with_bbqs << holiday
      end
    end
  end
    return holidays_with_bbqs
end

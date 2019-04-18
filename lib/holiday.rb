def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|holiday, items| items.push(supply)}
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, list|
    puts "#{season.to_s.capitalize}:"
    list.each do |holiday, items|
      holiday_frm = holiday.to_s.split("_").each {|word| word.capitalize!} .join(" ")
      puts "  #{holiday_frm}: #{items.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq = []
  holiday_hash.each do |season, list|
    list.each do |holiday, items|
      bbq.push(holiday) if items.include?("BBQ")
    end
  end
  bbq
end

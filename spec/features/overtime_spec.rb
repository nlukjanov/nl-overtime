require "rails_helper"

describe 'overtime calculation' do
  it 'calculates accurate overtime values for salaried employees' do
    thousand_34 = SalariedOvertimeCalculator.calculate(weekly_salary: 1000.0, total_hours: 43.0)
    nine_hundred_55 = SalariedOvertimeCalculator.calculate(weekly_salary: 900.0, total_hours: 55.5)
    expect(thousand_34.to_i).to eq(34)
    expect(nine_hundred_55.to_i).to eq(125)
  end
end
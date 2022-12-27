# frozen_string_literal: true
require './lib/calculator'
describe Calculator do
  describe "#add" do
    context "Given two numbers" do
      context "5,2" do
        it "returns 7" do
          expect(Calculator.add("5, 2")).to eql(7)
        end
      end
      context "-5,2" do
        it "returns -3" do
          expect(Calculator.add("-5, 2")).to eql(-3)
        end
      end
      context "-5,-12" do
        it "returns -17" do
          expect(Calculator.add("-5, -12")).to eql(-17)
        end
      end
      context "-5,-1" do
        it "returns -6" do
          expect(Calculator.add("-5, -1")).to eql(-6)
        end
      end
      context "-5,-1" do
        it "returns -6" do
          expect(Calculator.add("-5, -2")).to eql(-7)
        end
      end
    end
  end
end


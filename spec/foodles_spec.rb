# frozen_string_literal: true

RSpec.describe Foodles::TechnicalTest do
  it "has a version number" do
    expect(Foodles::VERSION).not_to be nil
  end

  let(:new_technical_test) { Foodles::TechnicalTest.new }

  describe :sorted_frequencies_by_word do
    subject(:sorted_frequencies_by_word) { new_technical_test.sorted_frequencies_and_word(sentence, n) }

    context "when the example given is tested" do
      let(:sentence) { "baz bar foo foo zblah zblah zblah baz toto bar" }
      let(:n) { 3 }

      it "returns the expected array of values well sorted and ordered" do
        expect(subject).to eq([["zblah", 3], ["bar", 2], ["baz", 2]])
      end
    end

    context "when nil is given as sentences" do
      let(:sentence) { nil }
      let(:n) { 3 }

      it "raises SentenceIsNilError" do
        expect { subject }.to raise_error Foodles::SentenceIsNilError
      end
    end

    context "when n is negative" do
      let(:sentence) { "toto toto tuti titi" }
      let(:n) { -5 }

      it "raises NIsNegativeError" do
        expect { subject }.to raise_error Foodles::NIsNegativeError
      end
    end

    context "when 0 is given as n" do
      let(:sentence) { "toto toto tuti titi" }
      let(:n) { 0 }

      it "raises SentenceIsNilError" do
        expect(subject).to eq([])
      end
    end

    context "when extected number of item is not reached" do
      let(:sentence) { "toto toto tuti titi" }
      let(:n) { 6 }

      it "returns all words with frequency" do
        expect(subject).to eq([["toto", 2], ["titi", 1], ["tuti", 1]])
      end
    end
  end
end

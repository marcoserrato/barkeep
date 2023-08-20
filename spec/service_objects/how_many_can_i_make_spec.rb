describe HowManyCanIMake do
  let(:cocktail) { create(:recipe) }
  let(:reagents) { [create(:reagent), create(:reagent, name: "test")] }
  let(:drinks) { described_class.how_many(cocktail).can_i_make_with(reagents) }

  it "works" do
    drinks
  end
end

context "PUT /restaurants/:id" do
  context "complete params" do
    before do
      @restaurant = FactoryGirl.create :restaurant
      @restaurant_info = {id: @restaurant.id, restaurant: {name: "mcrails"}}
    end
    subject{ put "/restaurants/#{@restaurant.id}", @restaurant_info }
    it { expect(subject).to redirect_to restaurant_path(id:1) }
  end

  context "incomplete params" do
    subject{ put "/restaurants/1", {id: 1} }
    it { expect(subject).to redirect_to root_path }
  end
end

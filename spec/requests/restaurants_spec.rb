context "POST /restaurants" do
  context "complete params" do
    restaurant = {restaurant: {name: "mcrails"}}
    subject{ post "/restaurants", restaurant }
    it "redirects to show" do
      expect(subject).to redirect_to restaurant_path(id:1)
    end
  end

  context "incomplete params" do
    subject{ post "/restaurants", {}}
    it "redirects to new" do
      expect(subject).to redirect_to(new_restaurant_path)
    end
  end
end

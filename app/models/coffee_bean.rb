class CoffeeBean
  attr_reader :name, :acidity, :bitterness, :body, :flavor

  def initialize(name:, acidity:, bitterness:, body:, flavor:)
    @name = name
    @acidity = acidity
    @bitterness = bitterness
    @body = body
    @flavor = flavor
  end

  def self.all
    [
      new(name: "Ethiopia", acidity: 5, bitterness: 2, body: 2, flavor: "fruity"),
      new(name: "Kenya", acidity: 5, bitterness: 3, body: 3, flavor: "fruity"),
      new(name: "Costa Rica", acidity: 4, bitterness: 2, body: 3, flavor: "balanced"),
      new(name: "Colombia", acidity: 3, bitterness: 3, body: 3, flavor: "balanced"),
      new(name: "Guatemala", acidity: 3, bitterness: 4, body: 4, flavor: "chocolate"),
      new(name: "Brazil", acidity: 2, bitterness: 4, body: 4, flavor: "nutty"),
      new(name: "Indonesia (Mandheling)", acidity: 1, bitterness: 5, body: 5, flavor: "chocolate"),
      new(name: "India", acidity: 2, bitterness: 5, body: 5, flavor: "spicy"),
      new(name: "Panama", acidity: 5, bitterness: 2, body: 2, flavor: "floral")
    ]
  end
end

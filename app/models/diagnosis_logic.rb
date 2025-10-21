class DiagnosisLogic
  TYPE_MAP = [
    {
      type: "FRUITY × CLEAR",
      condition: ->(avg) { avg[:acidity] >= 4 && avg[:bitterness] <= 2 && avg[:body] <= 3 },
      recommend: ["Ethiopia", "Kenya", "Panama"],
      description: "酸味と華やかさを楽しむタイプ。軽やかで明るい味わい。"
    },
    {
      type: "FRUITY × RICH",
      condition: ->(avg) { avg[:acidity] >= 4 && avg[:body] >= 4 && avg[:bitterness] <= 3 },
      recommend: ["Costa Rica", "Guatemala"],
      description: "果実味とコクのバランスが取れた味わい。"
    },
    {
      type: "BITTER × CLEAR",
      condition: ->(avg) { avg[:bitterness] >= 4 && avg[:body] <= 3 && avg[:acidity] <= 3 },
      recommend: ["Colombia", "Brazil"],
      description: "ほどよい苦味とすっきりした後味。万人向けの中間タイプ。"
    },
    {
      type: "BITTER × RICH",
      condition: ->(avg) { avg[:bitterness] >= 4 && avg[:body] >= 4 && avg[:acidity] <= 2 },
      recommend: ["Indonesia (Mandheling)", "India"],
      description: "深煎りの香ばしさと重厚感。ミルクとも好相性。"
    }
  ]

  def self.diagnose(params)
    # params例: { acidity: "5", bitterness: "3", body: "4", flavor: "fruity" }
    avg = {
      acidity: params[:acidity].to_i,
      bitterness: params[:bitterness].to_i,
      body: params[:body].to_i
    }

    type_info = TYPE_MAP.find { |t| t[:condition].call(avg) } ||
                { type: "BALANCED", recommend: ["Colombia", "Costa Rica"], description: "バランスの取れた味わい。" }

    recommended = CoffeeBean.all.select { |b| type_info[:recommend].include?(b.name) }

    {
      type: type_info[:type],
      description: type_info[:description],
      beans: recommended
    }
  end
end

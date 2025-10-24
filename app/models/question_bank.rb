class QuestionBank
  QUESTIONS = [
    {
      id: 1,
      param: :acidity,
      title: "Q1. コーヒの酸味についてはどうですか？",
      options: [
        { label: "強い酸味が好き", value: 5 },
        { label: "少しあると良い", value: 3 },
        { label: "酸味は苦手", value: 1 }
      ]
    },
    {
      id: 2,
      param: :bitterness,
      title: "② 苦味はどのくらい好きですか？",
      options: [
        { label: "しっかり苦い方が好き", value: 5 },
        { label: "少し苦いくらいが良い", value: 3 },
        { label: "苦味は控えめが良い", value: 1 }
      ]
    },
    {
      id: 3,
      param: :body,
      title: "③ 飲み口の印象としてどちらが好みですか？",
      options: [
        { label: "軽くてすっきり", value: 2 },
        { label: "バランスが取れている", value: 3 },
        { label: "まろやかでコクがある", value: 5 }
      ]
    },
    {
      id: 4,
      param: :flavor,
      title: "④ 香り・風味で惹かれるのはどれですか？",
      options: [
        { label: "フルーティ・華やか", value: "fruity" },
        { label: "チョコやナッツの香ばしさ", value: "chocolate" },
        { label: "特にこだわらない", value: "balanced" }
      ]
    }
  ].freeze
end

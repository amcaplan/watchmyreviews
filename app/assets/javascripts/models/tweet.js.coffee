Watchmyreviews.Tweet = DS.Model.extend
  userHandle: DS.attr()
  userName: DS.attr()
  text: DS.attr()
  sentiment: DS.attr()

Watchmyreviews.Tweet.FIXTURES = [
  {
    id: 1,
    userHandle: "gabrielelana",
    userName: "Gabriele Lana",
    text: "Say whatever you want but @dhh is the only one who brought actual code to the discussion #isTDDDead come on guys #nofluffjuststuff",
    sentiment: 0.5
  },
  {
    id: 2,
    userHandle: "mrbyte2001",
    userName: "Dirk Dreyer-Hochstei",
    text: "RT @martinfowler: Next part of #isTDDDead conversation with @dhh @KentBeck and me will be Tuesday May 20 at 1100 Eastern https://t.co/xl2Ma…",
    sentiment: 0
  },
  {
    id: 3,
    userHandle: "thiagoghisi",
    userName: "Thiago Ghisi",
    text: "RT @unclebobmartin: @mzimecki @KentBeck @dhh If TDD was dead, it wouldn’t be the topic of such an interesting debate.",
    sentiment: 0.625
  },
  {
    id: 4,
    userHandle: "rafiamafia",
    userName: "rafia qutab",
    text: "@dhh I guess one needs to ask: how many layers of encapsulation is too many? :S",
    sentiment: 0.5
  },
  {
    id: 5,
    userHandle: "patrickdonegan",
    userName: "Patrick Donegan",
    text: "\"Captured by quality\" - Making stuff good is rewarding, making stuff great is intoxicating. @dhh #signalvnoise http://t.co/4hG1cow87M",
    sentiment: 0.24358974359000002
  },
  {
    id: 6,
    userHandle: "neocsr",
    userName: "Christian Sousa",
    text: "RT @unclebobmartin: RT @ryber: I heard in part IV of \"is TDD dead?\" we learn that @unclebobmartin is @dhh 's father.",
    sentiment: -0.325
  },
  {
    id: 7,
    userHandle: "dylanhulbert",
    userName: "Dylan Hulbert",
    text: "RT @dhh: Round two of \"Is TDD dead?\" will focus on test-induced design damage. Starts in 1 hour w/ @kentbeck, @martinfowler: https://t.co/H…",
    sentiment: -0.19999999999999996
  },
  {
    id: 8,
    userHandle: "snowmaker",
    userName: "Jared Friedman",
    text: "@37signals, @dhh, Scribd got DDoS'd by the same blackmailer: dari***@gmail.com. Would like to pool resources on this - can we talk?",
    sentiment: -0.5
  },
  {
    id: 9,
    userHandle: "AntonKril",
    userName: "Anton Kril",
    text: "I guess, @dhh is just tired of answering questions about active record in rails:) https://t.co/OgdPGXXijd",
    sentiment: 0.910714285714
  },
  {
    id: 10,
    userHandle: "pazustep",
    userName: "Marcus Brito",
    text: "“UML class diagram of the ping pong program” o tipo de coisa que me faz simpatizar com o @dhh quando ele reclama de academicismo exagerado.",
    sentiment: 0.125
  },
  {
    id: 11,
    userHandle: "ImreKoszo",
    userName: "Imre Koszo",
    text: "RT @ryber: I heard in part IV of \"is TDD dead?\" we learn that @unclebobmartin is @dhh 's father.",
    sentiment: -0.325
  },
  {
    id: 12,
    userHandle: "Alkhldi7",
    userName: "عبدالله",
    text: "RT @m90807060: \"@Dhh: البراك رداً على تصريح مازن الجراح في الرأي : لو كان ترحيل البدون قرارا بيدك وبيد أمثالك لفعلته وانت الذي تؤكد اتفاقاً…",
    sentiment: 0
  },
  {
    id: 13,
    userHandle: "guptron",
    userName: "Sundeep Gupta",
    text: "RT @thoughtworks: Part III of #IsTDDDead w/ @martinfowler, @kentbeck &amp; @dhh, May 20th 11am ET. RSVP here - http://t.co/C5lr62wnqS http://t…",
    sentiment: 0.25
  },
  {
    id: 14,
    userHandle: "jak1192",
    userName: "Jonah Katz",
    text: "cool https://t.co/EG5W494WMa @dhh",
    sentiment: 0
  },
  {
    id: 15,
    userHandle: "seth_macpherson",
    userName: "Seth MacPherson",
    text: "Thanks @gigasquid this was really good \"@dhh is the fox news of Ruby: http://t.co/WZl8LBWufu\"",
    sentiment: 1.114423076923
  },
  {
    id: 16,
    userHandle: "AnthonyFormhals",
    userName: "Anthony Formhals",
    text: "@dhh FOR SECOND CONSECUTIVE YEAR VIOLENT AND PROPERTY CRIME RATES INCREASED http://t.co/AYoKK6Ootm http://t.co/OxLfhl46yq",
    sentiment: -0.46875
  },
  {
    id: 17,
    userHandle: "kylog",
    userName: "Kylo Ginsberg",
    text: "RT @unclebobmartin: RT @ryber: I heard in part IV of \"is TDD dead?\" we learn that @unclebobmartin is @dhh 's father.",
    sentiment: -0.325
  },
  {
    id: 18,
    userHandle: "aiborisov",
    userName: "Alexander Borisov",
    text: "RT @martinfowler: Next part of #isTDDDead conversation with @dhh @KentBeck and me will be Tuesday May 20 at 1100 Eastern https://t.co/xl2Ma…",
    sentiment: 0
  },
  {
    id: 19,
    userHandle: "nik_southworth",
    userName: "Nik",
    text: "RT @marekstachura: Great talk about TDD, developer confidence and happiness by @dhh , @KentBeck and @martinfowler https://t.co/BDpqYQmLXS",
    sentiment: -0.770833333333
  }
]
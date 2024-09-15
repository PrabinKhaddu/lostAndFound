import 'package:grocery/core/models/dummy_product_model.dart';

class Dummy {
  static List<ItemModel> items = [
    ItemModel(
      name: 'Lost Wallet',
      description:
          'A black leather wallet containing various personal cards, including a driver’s license and credit cards. It was last seen at the Central Park entrance.',
      cover: 'https://images.unsplash.com/photo-1531190260877-c8d11eb5afaf',
      images: [
        'https://images.unsplash.com/photo-1512415073221-64c70eee25bc',
      ],
      locationFound: 'Central Park',
      dateFound: '2024-09-01',
      contactNumber: '123-456-7890',
      isClaimed: false,
      type: ItemType.lost,
      id: 1,
    ),
    ItemModel(
      name: 'Missing Dog',
      description:
          'A friendly Golden Retriever named Max. He has a collar with his name tag but is very shy around strangers. Last seen near Maple Street.',
      cover: 'https://images.unsplash.com/photo-1534361960057-19889db9621e',
      images: [
        'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
      ],
      locationFound: 'Maple Street',
      dateFound: '2024-09-02',
      contactNumber: '234-567-8901',
      isClaimed: false,
      rewardAmount: 100.0,
      type: ItemType.found,
      id: 2,
    ),
    ItemModel(
      name: 'Found Bicycle',
      description:
          'A blue mountain bike found without a lock. It appears to be in good condition and was left near the Downtown area.',
      cover: 'https://images.unsplash.com/photo-1485965120184-e220f721d03e',
      images: [
        "https://images.unsplash.com/photo-1507035895480-2b3156c31fc8",
      ],
      locationFound: 'Downtown',
      dateFound: '2024-09-03',
      contactNumber: '345-678-9012',
      isClaimed: true,
      rewardAmount: null,
      type: ItemType.lost,
      id: 3,
    ),
    ItemModel(
      name: 'Lost Keys',
      description:
          'A set of keys on a blue keychain, including a house key and a car key. Last seen at the library near the main entrance.',
      cover: 'https://images.unsplash.com/photo-1608461552968-47c6d3dab832',
      images: [
        'https://images.unsplash.com/photo-1608461552968-47c6d3dab832',
      ],
      locationFound: 'Library',
      dateFound: '2024-09-04',
      contactNumber: '456-789-0123',
      isClaimed: false,
      rewardAmount: 20.0,
      type: ItemType.found,
      id: 4,
    ),
    ItemModel(
      name: 'Found Glasses',
      description:
          'A pair of reading glasses with a stylish brown frame. Found on a table at the coffee shop, they are in good condition.',
      cover: 'https://images.unsplash.com/photo-1511499767150-a48a237f0083',
      images: [
        'https://images.unsplash.com/photo-1511499767150-a48a237f0083',
      ],
      locationFound: 'Coffee Shop',
      dateFound: '2024-09-05',
      contactNumber: '567-890-1234',
      isClaimed: false,
      rewardAmount: null,
      type: ItemType.lost,
      id: 5,
    ),
    ItemModel(
      name: 'Lost Phone',
      description:
          'An iPhone 12 in black color with a cracked screen. It was last seen at the bus stop during rush hour.',
      cover: 'https://images.unsplash.com/photo-1529653762956-b0a27278529c',
      images: [
        'https://images.unsplash.com/photo-1529653762956-b0a27278529c',
      ],
      locationFound: 'Bus Stop',
      dateFound: '2024-09-06',
      contactNumber: '678-901-2345',
      isClaimed: false,
      rewardAmount: 75.0,
      type: ItemType.found,
      id: 6,
    ),
    ItemModel(
      name: 'Found Backpack',
      description:
          'A blue backpack filled with school supplies, including notebooks and pens. Found at the local high school.',
      cover: 'https://images.unsplash.com/photo-1592388748465-8c4dca8dd703',
      images: ['https://images.unsplash.com/photo-1592388748465-8c4dca8dd703'],
      locationFound: 'High School',
      dateFound: '2024-09-07',
      contactNumber: '789-012-3456',
      isClaimed: true,
      rewardAmount: null,
      type: ItemType.lost,
      id: 7,
    ),
    ItemModel(
      name: 'Lost Cat',
      description:
          'A black cat with striking green eyes. Very shy and was last seen hiding in the bushes on Elm Street.',
      cover: 'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba',
      images: [
        'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba',
      ],
      locationFound: 'Elm Street',
      dateFound: '2024-09-08',
      contactNumber: '890-123-4567',
      isClaimed: false,
      rewardAmount: 150.0,
      type: ItemType.found,
      id: 8,
    ),
    ItemModel(
      name: 'Found Ring',
      description:
          'A beautiful gold ring with a diamond, found at the shopping mall. It appears to be of significant value.',
      cover: 'https://images.unsplash.com/photo-1567523977592-7959bc5df51e',
      images: [
        'https://images.unsplash.com/photo-1567523977592-7959bc5df51e',
      ],
      locationFound: 'Shopping Mall',
      dateFound: '2024-09-09',
      contactNumber: '901-234-5678',
      isClaimed: false,
      rewardAmount: 200.0,
      type: ItemType.lost,
      id: 9,
    ),
    ItemModel(
      name: 'Lost Jacket',
      description:
          'A stylish black leather jacket, size M. Last seen at the movie theater during a late-night screening.',
      cover: 'https://images.unsplash.com/photo-1532704102644-883111bdf82d',
      images: ['https://images.unsplash.com/photo-1532704102644-883111bdf82d'],
      locationFound: 'Movie Theater',
      dateFound: '2024-09-10',
      contactNumber: '012-345-6789',
      isClaimed: false,
      rewardAmount: 30.0,
      type: ItemType.found,
      id: 10,
    ),
    ItemModel(
      name: 'Found Teddy Bear',
      description:
          'A large, fluffy teddy bear, brown in color. It was found at the city park and is in excellent condition.',
      cover: 'https://images.unsplash.com/photo-1562040506-a9b32cb51b94',
      images: ['https://images.unsplash.com/photo-1562040506-a9b32cb51b94'],
      locationFound: 'City Park',
      dateFound: '2024-09-11',
      contactNumber: '123-456-7890',
      isClaimed: false,
      rewardAmount: null,
      type: ItemType.lost,
      id: 11,
    ),
    ItemModel(
      name: 'Lost Camera',
      description:
          'A Canon DSLR camera with a zoom lens, found at the art gallery. It includes a memory card with photos.',
      cover: 'https://images.unsplash.com/photo-1460134846237-51c777df6111',
      images: [
        'https://images.unsplash.com/photo-1460134846237-51c777df6111',
      ],
      locationFound: 'Art Gallery',
      dateFound: '2024-09-12',
      contactNumber: '234-567-8901',
      isClaimed: false,
      rewardAmount: 100.0,
      type: ItemType.found,
      id: 12,
    ),
    ItemModel(
      name: 'Found Umbrella',
      description:
          'A black umbrella, slightly damaged but still functional. Found at the train station during a rainy day.',
      cover: 'https://images.unsplash.com/photo-1499678450342-29ebee16d1ab',
      images: ['https://images.unsplash.com/photo-1499678450342-29ebee16d1ab'],
      locationFound: 'Train Station',
      dateFound: '2024-09-13',
      contactNumber: '345-678-9012',
      isClaimed: false,
      rewardAmount: null,
      type: ItemType.lost,
      id: 13,
    ),
    ItemModel(
      name: 'Lost Necklace',
      description:
          'A silver necklace with a heart pendant, last seen at the beach during a family outing.',
      cover: 'https://images.unsplash.com/photo-1685970731571-72ede0cb26ea',
      images: ['https://images.unsplash.com/photo-1685970731571-72ede0cb26ea'],
      locationFound: 'Beach',
      dateFound: '2024-09-14',
      contactNumber: '456-789-0123',
      isClaimed: false,
      rewardAmount: 50.0,
      type: ItemType.found,
      id: 14,
    ),
    ItemModel(
      name: 'Found Skateboard',
      description:
          'A red skateboard in good condition, found at the skate park. It has some minor scratches but is fully functional.',
      cover: 'https://images.unsplash.com/photo-1499083773823-5000fa2b23e4',
      images: ['https://images.unsplash.com/photo-1499083773823-5000fa2b23e4'],
      locationFound: 'Skate Park',
      dateFound: '2024-09-15',
      contactNumber: '567-890-1234',
      isClaimed: true,
      rewardAmount: null,
      type: ItemType.lost,
      id: 15,
    ),
    ItemModel(
      name: 'Lost Earring',
      description:
          'A gold earring with a pearl, last seen at a fashion store. It is a single piece and may have significant sentimental value.',
      cover: 'https://images.unsplash.com/photo-1701777892770-df3bf8006fd8',
      images: ['https://images.unsplash.com/photo-1701777892770-df3bf8006fd8'],
      locationFound: 'Fashion Store',
      dateFound: '2024-09-16',
      contactNumber: '678-901-2345',
      isClaimed: false,
      rewardAmount: 25.0,
      type: ItemType.lost,
      id: 16,
    ),
    ItemModel(
      name: 'Found Book',
      description:
          'A novel titled "The Great Gatsby" found at a bookstore. The book is in excellent condition with no markings.',
      cover: 'https://images.unsplash.com/photo-1491841573634-28140fc7ced7',
      images: ['https://images.unsplash.com/photo-1491841573634-28140fc7ced7'],
      locationFound: 'Bookstore',
      dateFound: '2024-09-17',
      contactNumber: '789-012-3456',
      isClaimed: false,
      rewardAmount: null,
      type: ItemType.found,
      id: 17,
    ),
    ItemModel(
      name: 'Lost Glove',
      description:
          'A red winter glove, size L, left behind at the ice rink. It is warm and cozy, perfect for the chilly weather.',
      cover: 'https://images.unsplash.com/photo-1598548568115-872fc177b078',
      images: [
        'https://images.unsplash.com/photo-1598548568115-872fc177b078',
      ],
      locationFound: 'Ice Rink',
      dateFound: '2024-09-18',
      contactNumber: '890-123-4567',
      isClaimed: false,
      rewardAmount: 10.0,
      type: ItemType.lost,
      id: 18,
    ),
    ItemModel(
      name: 'Found Scarf',
      description:
          'A blue knitted scarf found at the market. It is soft and warm, perfect for winter days.',
      cover: 'https://images.unsplash.com/photo-1457545195570-67f207084966',
      images: ['https://images.unsplash.com/photo-1457545195570-67f207084966'],
      locationFound: 'Market',
      dateFound: '2024-09-19',
      contactNumber: '901-234-5678',
      isClaimed: false,
      rewardAmount: null,
      type: ItemType.found,
      id: 19,
    ),
    ItemModel(
      name: 'Lost Tablet',
      description:
          'A Samsung Galaxy Tab in a black case, left behind at school. It has educational apps installed and is very useful for students.',
      cover: 'https://images.unsplash.com/photo-1464380573004-8ca85a08751a',
      images: ['https://images.unsplash.com/photo-1464380573004-8ca85a08751a'],
      locationFound: 'School',
      dateFound: '2024-09-20',
      contactNumber: '012-345-6789',
      isClaimed: false,
      rewardAmount: 80.0,
      type: ItemType.lost,
      id: 20,
    ),
    ItemModel(
      name: 'Found Watch',
      description:
          'A silver wristwatch with a slightly scratched surface, found at the gym. It has a classic design and is still working perfectly.',
      cover: 'https://images.unsplash.com/photo-1524805444758-089113d48a6d',
      images: ['https://images.unsplash.com/photo-1524805444758-089113d48a6d'],
      locationFound: 'Gym',
      dateFound: '2024-09-21',
      contactNumber: '123-456-7890',
      isClaimed: false,
      rewardAmount: 60.0,
      type: ItemType.found,
      id: 21,
    ),
    // ItemModel(
    //   name: 'Lost Pet Fish',
    //   description:
    //       'A small goldfish in a bowl. It is friendly and was last seen at the local pet store.',
    //   cover: 'https://example.com/images/fish_cover.jpg',
    //   images: [
    //     'https://example.com/images/fish1.jpg',
    //     'https://example.com/images/fish2.jpg'
    //   ],
    //   locationFound: 'Pet Store',
    //   dateFound: '2024-09-22',
    //   contactNumber: '234-567-8901',
    //   isClaimed: false,
    //   rewardAmount: 30.0,
    // ),
    // ItemModel(
    //   name: 'Found Drone',
    //   description:
    //       'A quadcopter drone in red color, found in a field. It is in working condition and includes a remote controller.',
    //   cover: 'https://example.com/images/drone_cover.jpg',
    //   images: [
    //     'https://example.com/images/drone1.jpg',
    //     'https://example.com/images/drone2.jpg'
    //   ],
    //   locationFound: 'Field',
    //   dateFound: '2024-09-23',
    //   contactNumber: '345-678-9012',
    //   isClaimed: true,
    //   rewardAmount: null,
    // ),
    // ItemModel(
    //   name: 'Lost Action Figure',
    //   description:
    //       'A limited edition superhero action figure, last seen at a toy store. It is collectible and in its original packaging.',
    //   cover: 'https://example.com/images/action_figure_cover.jpg',
    //   images: [
    //     'https://example.com/images/action_figure1.jpg',
    //     'https://example.com/images/action_figure2.jpg'
    //   ],
    //   locationFound: 'Toy Store',
    //   dateFound: '2024-09-24',
    //   contactNumber: '456-789-0123',
    //   isClaimed: false,
    //   rewardAmount: 15.0,
    // ),
    // ItemModel(
    //   name: 'Found Phone Charger',
    //   description:
    //       'A universal phone charger in white color, found on a university campus. It is compatible with most smartphones.',
    //   cover: 'https://example.com/images/charger_cover.jpg',
    //   images: [
    //     'https://example.com/images/charger1.jpg',
    //     'https://example.com/images/charger2.jpg'
    //   ],
    //   locationFound: 'University Campus',
    //   dateFound: '2024-09-25',
    //   contactNumber: '567-890-1234',
    //   isClaimed: false,
    //   rewardAmount: null,
    // ),
    // ItemModel(
    //   name: 'Lost Soccer Ball',
    //   description:
    //       'A FIFA branded soccer ball, slightly deflated, left behind at the soccer field after a game.',
    //   cover: 'https://example.com/images/soccer_ball_cover.jpg',
    //   images: [
    //     'https://example.com/images/soccer_ball1.jpg',
    //     'https://example.com/images/soccer_ball2.jpg'
    //   ],
    //   locationFound: 'Soccer Field',
    //   dateFound: '2024-09-26',
    //   contactNumber: '678-901-2345',
    //   isClaimed: false,
    //   rewardAmount: 10.0,
    // ),
    // ItemModel(
    //   name: 'Found Fishing Rod',
    //   description:
    //       'A spinning fishing rod in good condition, found near the lake. It is ready for use and includes a reel.',
    //   cover: 'https://example.com/images/fishing_rod_cover.jpg',
    //   images: [
    //     'https://example.com/images/fishing_rod1.jpg',
    //     'https://example.com/images/fishing_rod2.jpg'
    //   ],
    //   locationFound: 'Lake',
    //   dateFound: '2024-09-27',
    //   contactNumber: '789-012-3456',
    //   isClaimed: false,
    //   rewardAmount: null,
    // ),
    // ItemModel(
    //   name: 'Lost Rollerblades',
    //   description:
    //       'A pair of white rollerblades, size 10, left at the skating rink. They are in good condition and ready for skating.',
    //   cover: 'https://example.com/images/rollerblades_cover.jpg',
    //   images: [
    //     'https://example.com/images/rollerblades1.jpg',
    //     'https://example.com/images/rollerblades2.jpg'
    //   ],
    //   locationFound: 'Skating Rink',
    //   dateFound: '2024-09-28',
    //   contactNumber: '890-123-4567',
    //   isClaimed: false,
    //   rewardAmount: 40.0,
    // ),
  ];
}

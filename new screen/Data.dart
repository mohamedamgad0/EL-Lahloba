

class Data {
  static const chats = <Chat>[
    Chat(
        urlAvatar:
        'photo/MohamedaMGAD1.png',
        username: 'Mohamed Amgad',
        message: 'Sadat Acdemy',
        message2: '01092895125',
      prize: '100 L.E',

    ),
    Chat(
        urlAvatar:
        'photo/GannaAdel.png',
        username: 'Ganna Adel',
        message: 'Omrania',
        message2: '01140506578',
      prize: '120 L.E',
    ),
    Chat(
        urlAvatar:
        'photo/NairamOHAMED.jpg',
        username: 'Naira Mohamed',
        message: 'Maadi',
        message2: '01249601855',
      prize: '150 L.E',
    ),
    Chat(
        urlAvatar:
        'photo/SalmaFadybng.png',
        username: 'Salma Fady',
        message: 'Gates',
        message2: '01116734898',
      prize: '500 L.E',

    ),
    Chat(
        urlAvatar:
        'photo/Eyad Waled.png',
        username: 'Eyad Waleed',
        message: 'Giza',
        message2: '01554233838',
        prize: '20 L.E',
    ),
  ];


}


class Chat {
  final String urlAvatar;
  final String username;
  final String message;
  final String message2;
  final String prize;

  const Chat({
    required this.urlAvatar,
    required this.username,
    required this.message,
    required this.message2,
    required this.prize,
  });
}

class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({required this.name, required this.message, required this.time, required this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "John Doe",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      avatarUrl: "https://randomuser.me/api/portraits/men/1.jpg"),
  ChatModel(
      name: "Harvey Spectre",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      avatarUrl: "https://randomuser.me/api/portraits/men/2.jpg"),
  ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      avatarUrl: "https://randomuser.me/api/portraits/men/3.jpg"),
  ChatModel(
      name: "Rachel",
      message: "I'm good!",
      time: "10:30",
      avatarUrl: "https://randomuser.me/api/portraits/women/1.jpg"),
  ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl: "https://randomuser.me/api/portraits/men/4.jpg"),
  ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      avatarUrl: "https://randomuser.me/api/portraits/men/5.jpg"),
];

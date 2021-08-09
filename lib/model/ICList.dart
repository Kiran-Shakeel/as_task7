List<Item> icList = [
  Item(phone: "Mama", location: "Pakistan", time: "Yesterday"),
  Item(phone: "Papa", location: "Pakistan", time: "Today"),
  Item(phone: "042123456", location: "Unknown", time: "22/05/21")
];

List<Item> ogList = [
  Item(phone: "Friend", location: "Pakistan", time: "Yesterday"),
  Item(phone: "Aapi", location: "Pakistan", time: "Today"),
  Item(phone: "Sir", location: "Unknown", time: "Yesterday")
];

List<Item> missedList = [
  Item(phone: "Mama", location: "Pakistan", time: "Yesterday"),
  Item(phone: "042112222", location: "Pakistan", time: "Today"),
  Item(phone: "Papa", location: "Pakistan", time: "22/05/21")
];


class Item {
  String phone, location, time;
  Item({
    required this.time,
    required this.location,
    required this.phone,
  });
 
}

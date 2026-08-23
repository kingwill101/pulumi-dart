// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAddressGroupsAddressGroup {
  final pulumi.Input<int> capacity;
  final pulumi.Input<List<String>> items;
  /// The location of the Address Group.
  ///
  /// - - -
  final pulumi.Input<String> location;
  /// The name of the Address Group.
  final pulumi.Input<String> name;

  /// Creates a new [GetAddressGroupsAddressGroup].
  /// [capacity] Required.
  /// [items] Required.
  /// [location] The location of the Address Group.
  /// [name] The name of the Address Group.
  const GetAddressGroupsAddressGroup({
    required this.capacity,
    required this.items,
    required this.location,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'items': items,
      'location': location,
      'name': name,
    };
  }

  factory GetAddressGroupsAddressGroup.fromMap(Map<String, dynamic> map) {
    return GetAddressGroupsAddressGroup(
      capacity: pulumi.Input.fromValue(map['capacity'] as int),
      items: pulumi.Input.fromValue((map['items'] as List).cast<String>()),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

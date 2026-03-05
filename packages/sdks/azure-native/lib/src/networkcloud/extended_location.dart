// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtendedLocation {
  /// The resource ID of the extended location on which the resource will be created.
  final pulumi.Input<String> name;
  /// The extended location type, for example, CustomLocation.
  final pulumi.Input<String> type;

  /// Creates a new [ExtendedLocation].
  /// [name] The resource ID of the extended location on which the resource will be created.
  /// [type] The extended location type, for example, CustomLocation.
  ExtendedLocation({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ForZone provides information about which zones should consume this endpoint.
class ForZone {
  /// name represents the name of the zone.
  final pulumi.Input<String> name;

  /// Creates a new [ForZone].
  /// [name] name represents the name of the zone.
  ForZone({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory ForZone.fromMap(Map<String, dynamic> map) {
    return ForZone(name: pulumi.Input.fromValue(map['name'] as String));
  }
}

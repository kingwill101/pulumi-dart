// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended Location.
class ExtendedLocationResponse {
  /// Name of extended location.
  final pulumi.Input<String>? name;
  /// Type of extended location.
  final pulumi.Input<String> type;

  /// Creates a new [ExtendedLocationResponse].
  /// [name] Name of extended location.
  /// [type] Type of extended location.
  ExtendedLocationResponse({
    this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': type,
    };
  }

  factory ExtendedLocationResponse.fromMap(Map<String, dynamic> map) {
    return ExtendedLocationResponse(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      type: (map['type'] as String).input(),
    );
  }
}


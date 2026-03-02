// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Extended Location.
class ExtendedLocation {
  /// Name of extended location.
  final pulumi.Input<String>? name;

  /// Creates a new [ExtendedLocation].
  /// [name] Name of extended location.
  ExtendedLocation({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ExtendedLocation.fromMap(Map<String, dynamic> map) {
    return ExtendedLocation(
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


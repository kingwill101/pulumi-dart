// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The extended location definition.
class SpringbootsitesModelResponseExtendedLocation {
  /// The extended location name.
  final pulumi.Input<String?>? name;
  /// The extended location type.
  final pulumi.Input<String?>? type;

  /// Creates a new [SpringbootsitesModelResponseExtendedLocation].
  /// [name] The extended location name.
  /// [type] The extended location type.
  const SpringbootsitesModelResponseExtendedLocation({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory SpringbootsitesModelResponseExtendedLocation.fromMap(Map<String, dynamic> map) {
    return SpringbootsitesModelResponseExtendedLocation(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

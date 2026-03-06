// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ForZone provides information about which zones should consume this endpoint.
class ForZonePatch {
  /// name represents the name of the zone.
  final pulumi.Input<String>? name;

  /// Creates a new [ForZonePatch].
  /// [name] name represents the name of the zone.
  const ForZonePatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ForZonePatch.fromMap(Map<String, dynamic> map) {
    return ForZonePatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


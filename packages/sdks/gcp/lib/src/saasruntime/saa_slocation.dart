// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SaaSLocation {
  /// Name of location.
  final pulumi.Input<String>? name;

  /// Creates a new [SaaSLocation].
  /// [name] Name of location.
  const SaaSLocation({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory SaaSLocation.fromMap(Map<String, dynamic> map) {
    return SaaSLocation(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

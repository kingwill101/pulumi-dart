// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IngressProfile represents an ingress profile.
class IngressProfile {
  /// The ingress profile name.
  final pulumi.Input<String>? name;
  /// Ingress visibility.
  final pulumi.Input<String>? visibility;

  /// Creates a new [IngressProfile].
  /// [name] The ingress profile name.
  /// [visibility] Ingress visibility.
  const IngressProfile({
    this.name,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'visibility': ?visibility,
    };
  }

  factory IngressProfile.fromMap(Map<String, dynamic> map) {
    return IngressProfile(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

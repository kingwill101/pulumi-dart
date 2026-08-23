// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IngressProfile represents an ingress profile.
class IngressProfileResponse {
  /// The IP of the ingress.
  final pulumi.Input<String> ip;
  /// The ingress profile name.
  final pulumi.Input<String>? name;
  /// Ingress visibility.
  final pulumi.Input<String>? visibility;

  /// Creates a new [IngressProfileResponse].
  /// [ip] The IP of the ingress.
  /// [name] The ingress profile name.
  /// [visibility] Ingress visibility.
  const IngressProfileResponse({
    required this.ip,
    this.name,
    this.visibility,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ip': ip,
      'name': ?name,
      'visibility': ?visibility,
    };
  }

  factory IngressProfileResponse.fromMap(Map<String, dynamic> map) {
    return IngressProfileResponse(
      ip: pulumi.Input.fromValue(map['ip'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      visibility: (() { final guardedValue = map['visibility']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

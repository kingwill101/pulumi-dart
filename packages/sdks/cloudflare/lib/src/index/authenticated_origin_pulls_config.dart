// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthenticatedOriginPullsConfig {
  /// Certificate identifier tag.
  final pulumi.Input<String?>? certId;
  /// Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  final pulumi.Input<bool?>? enabled;
  /// The hostname on the origin for which the client certificate uploaded will be used.
  final pulumi.Input<String?>? hostname;

  /// Creates a new [AuthenticatedOriginPullsConfig].
  /// [certId] Certificate identifier tag.
  /// [enabled] Indicates whether hostname-level authenticated origin pulls is enabled. A null value voids the association.
  /// [hostname] The hostname on the origin for which the client certificate uploaded will be used.
  const AuthenticatedOriginPullsConfig({
    this.certId,
    this.enabled,
    this.hostname,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certId': ?certId,
      'enabled': ?enabled,
      'hostname': ?hostname,
    };
  }

  factory AuthenticatedOriginPullsConfig.fromMap(Map<String, dynamic> map) {
    return AuthenticatedOriginPullsConfig(
      certId: (() { final guardedValue = map['certId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

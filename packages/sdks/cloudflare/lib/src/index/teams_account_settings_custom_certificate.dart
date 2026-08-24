// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TeamsAccountSettingsCustomCertificate {
  /// Indicate the internal certificate status.
  final pulumi.Input<String?>? bindingStatus;
  /// Specify whether to enable a custom certificate authority for signing Gateway traffic.
  final pulumi.Input<bool> enabled;
  /// Specify the UUID of the certificate (ID from MTLS certificate store).
  final pulumi.Input<String?>? id;
  final pulumi.Input<String?>? updatedAt;

  /// Creates a new [TeamsAccountSettingsCustomCertificate].
  /// [bindingStatus] Indicate the internal certificate status.
  /// [enabled] Specify whether to enable a custom certificate authority for signing Gateway traffic.
  /// [id] Specify the UUID of the certificate (ID from MTLS certificate store).
  /// [updatedAt] Optional.
  const TeamsAccountSettingsCustomCertificate({
    this.bindingStatus,
    required this.enabled,
    this.id,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bindingStatus': ?bindingStatus,
      'enabled': enabled,
      'id': ?id,
      'updatedAt': ?updatedAt,
    };
  }

  factory TeamsAccountSettingsCustomCertificate.fromMap(Map<String, dynamic> map) {
    return TeamsAccountSettingsCustomCertificate(
      bindingStatus: (() { final guardedValue = map['bindingStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

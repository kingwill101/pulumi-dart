// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostnameTlsSettingsResult {
  /// This is the time the tls setting was originally created for this hostname.
  final pulumi.Input<String> createdAt;
  /// The hostname for which the tls settings are set.
  final pulumi.Input<String> hostname;
  /// Deployment status for the given tls setting.
  final pulumi.Input<String> status;
  /// This is the time the tls setting was updated.
  final pulumi.Input<String> updatedAt;
  /// The TLS setting value.
  /// The type depends on the `settingId` used in the request path:
  final pulumi.Input<String> value;

  /// Creates a new [GetHostnameTlsSettingsResult].
  /// [createdAt] This is the time the tls setting was originally created for this hostname.
  /// [hostname] The hostname for which the tls settings are set.
  /// [status] Deployment status for the given tls setting.
  /// [updatedAt] This is the time the tls setting was updated.
  /// [value] The TLS setting value.
  const GetHostnameTlsSettingsResult({
    required this.createdAt,
    required this.hostname,
    required this.status,
    required this.updatedAt,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createdAt': createdAt,
      'hostname': hostname,
      'status': status,
      'updatedAt': updatedAt,
      'value': value,
    };
  }

  factory GetHostnameTlsSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetHostnameTlsSettingsResult(
      createdAt: pulumi.Input.fromValue(map['createdAt'] as String),
      hostname: pulumi.Input.fromValue(map['hostname'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      updatedAt: pulumi.Input.fromValue(map['updatedAt'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

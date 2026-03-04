// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ManagedZoneCloudLoggingConfig {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final pulumi.Input<bool> enableLogging;

  /// Creates a new [ManagedZoneCloudLoggingConfig].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  ManagedZoneCloudLoggingConfig({required this.enableLogging});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableLogging': enableLogging};
  }

  factory ManagedZoneCloudLoggingConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneCloudLoggingConfig(
      enableLogging: pulumi.Input.fromValue(map['enableLogging'] as bool),
    );
  }
}

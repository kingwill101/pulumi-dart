// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfigResponseDnsV1beta2 {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final pulumi.Input<bool> enableLogging;
  final pulumi.Input<String> kind;

  /// Creates a new [ManagedZoneCloudLoggingConfigResponseDnsV1beta2].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  /// [kind] Required.
  ManagedZoneCloudLoggingConfigResponseDnsV1beta2({
    required this.enableLogging,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableLogging': enableLogging, 'kind': kind};
  }

  factory ManagedZoneCloudLoggingConfigResponseDnsV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return ManagedZoneCloudLoggingConfigResponseDnsV1beta2(
      enableLogging: pulumi.Input.fromValue(map['enableLogging'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

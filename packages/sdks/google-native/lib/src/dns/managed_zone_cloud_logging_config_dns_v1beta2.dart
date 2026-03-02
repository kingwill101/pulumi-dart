// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Logging configurations for publicly visible zones.
class ManagedZoneCloudLoggingConfigDnsV1beta2 {
  /// If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  final pulumi.Input<bool>? enableLogging;
  final pulumi.Input<String>? kind;

  /// Creates a new [ManagedZoneCloudLoggingConfigDnsV1beta2].
  /// [enableLogging] If set, enable query logging for this ManagedZone. False by default, making logging opt-in.
  /// [kind] Optional.
  ManagedZoneCloudLoggingConfigDnsV1beta2({
    this.enableLogging,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableLogging': ?enableLogging,
      'kind': ?kind,
    };
  }

  factory ManagedZoneCloudLoggingConfigDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneCloudLoggingConfigDnsV1beta2(
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging'] as bool).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
    );
  }
}


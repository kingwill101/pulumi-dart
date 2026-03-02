// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_service_directory_config_namespace_dns_v1beta2.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigDnsV1beta2 {
  final pulumi.Input<String>? kind;
  /// Contains information about the namespace associated with the zone.
  final pulumi.Input<ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2>? namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfigDnsV1beta2].
  /// [kind] Optional.
  /// [namespace] Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfigDnsV1beta2({
    this.kind,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'namespace': ?pulumi.Input.mapOptionalInputValue<ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2, Map<String, dynamic>>(namespace, (value) => value.toMap()),
    };
  }

  factory ManagedZoneServiceDirectoryConfigDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigDnsV1beta2(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      namespace: map['namespace'] == null ? null : (ManagedZoneServiceDirectoryConfigNamespaceDnsV1beta2.fromMap((map['namespace']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


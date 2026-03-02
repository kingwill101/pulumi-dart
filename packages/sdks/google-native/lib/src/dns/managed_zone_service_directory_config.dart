// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_service_directory_config_namespace.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfig {
  final pulumi.Input<String>? kind;
  /// Contains information about the namespace associated with the zone.
  final pulumi.Input<ManagedZoneServiceDirectoryConfigNamespace>? namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfig].
  /// [kind] Optional.
  /// [namespace] Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfig({
    this.kind,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
      'namespace': ?pulumi.Input.mapOptionalInputValue<ManagedZoneServiceDirectoryConfigNamespace, Map<String, dynamic>>(namespace, (value) => value.toMap()),
    };
  }

  factory ManagedZoneServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfig(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      namespace: map['namespace'] == null ? null : (ManagedZoneServiceDirectoryConfigNamespace.fromMap((map['namespace']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


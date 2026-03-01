// ignore_for_file: unused_element, unnecessary_cast

import 'managed_zone_service_directory_config_namespace.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfig {
  final String? kind;
  /// Contains information about the namespace associated with the zone.
  final ManagedZoneServiceDirectoryConfigNamespace? namespace;

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
      'namespace': ?namespace == null ? null : namespace!.toMap(),
    };
  }

  factory ManagedZoneServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfig(
      kind: map['kind'] == null ? null : map['kind'] as String,
      namespace: map['namespace'] == null ? null : ManagedZoneServiceDirectoryConfigNamespace.fromMap((map['namespace'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_service_directory_config_namespace_response.dart';

/// Contains information about Service Directory-backed zones.
class ManagedZoneServiceDirectoryConfigResponse {
  final pulumi.Input<String> kind;
  /// Contains information about the namespace associated with the zone.
  final pulumi.Input<ManagedZoneServiceDirectoryConfigNamespaceResponse> namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfigResponse].
  /// [kind] Required.
  /// [namespace] Contains information about the namespace associated with the zone.
  ManagedZoneServiceDirectoryConfigResponse({
    required this.kind,
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': kind,
      'namespace': pulumi.Input.mapInputValue<ManagedZoneServiceDirectoryConfigNamespaceResponse, Map<String, dynamic>>(namespace, (value) => value.toMap()),
    };
  }

  factory ManagedZoneServiceDirectoryConfigResponse.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfigResponse(
      kind: pulumi.Input.fromValue(map['kind'] as String),
      namespace: pulumi.Input.fromValue(ManagedZoneServiceDirectoryConfigNamespaceResponse.fromMap((map['namespace']! as Map).cast<String, dynamic>())),
    );
  }
}


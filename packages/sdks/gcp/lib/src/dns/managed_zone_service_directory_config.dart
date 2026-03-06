// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_zone_service_directory_config_namespace.dart';

class ManagedZoneServiceDirectoryConfig {
  /// The namespace associated with the zone.
  /// Structure is documented below.
  final pulumi.Input<ManagedZoneServiceDirectoryConfigNamespace> namespace;

  /// Creates a new [ManagedZoneServiceDirectoryConfig].
  /// [namespace] The namespace associated with the zone.
  const ManagedZoneServiceDirectoryConfig({
    required this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': pulumi.Input.mapInputValue<ManagedZoneServiceDirectoryConfigNamespace, Map<String, dynamic>>(namespace, (value) => value.toMap()),
    };
  }

  factory ManagedZoneServiceDirectoryConfig.fromMap(Map<String, dynamic> map) {
    return ManagedZoneServiceDirectoryConfig(
      namespace: pulumi.Input.fromValue(ManagedZoneServiceDirectoryConfigNamespace.fromMap((map['namespace']! as Map).cast<String, dynamic>())),
    );
  }
}


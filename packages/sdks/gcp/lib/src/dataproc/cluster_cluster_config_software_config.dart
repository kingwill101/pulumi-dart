// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigSoftwareConfig {
  /// The Cloud Dataproc image version to use
  /// for the cluster - this controls the sets of software versions
  /// installed onto the nodes when you create clusters. If not specified, defaults to the
  /// latest version. For a list of valid versions see
  /// [Cloud Dataproc versions](https://cloud.google.com/dataproc/docs/concepts/dataproc-versions)
  final pulumi.Input<String?>? imageVersion;
  /// The set of optional components to activate on the cluster. See [Available Optional Components](https://cloud.google.com/dataproc/docs/concepts/components/overview#available_optional_components).
  ///
  /// - - -
  final pulumi.Input<List<String>?>? optionalComponents;
  /// A list of override and additional properties (key/value pairs)
  /// used to modify various aspects of the common configuration files used when creating
  /// a cluster. For a list of valid properties please see
  /// [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties)
  final pulumi.Input<Map<String, String>?>? overrideProperties;
  /// A list of the properties used to set the daemon config files.
  /// This will include any values supplied by the user via `cluster_config.software_config.override_properties`
  final pulumi.Input<Map<String, String>?>? properties;

  /// Creates a new [ClusterClusterConfigSoftwareConfig].
  /// [imageVersion] The Cloud Dataproc image version to use
  /// [optionalComponents] The set of optional components to activate on the cluster. See [Available Optional Components](https://cloud.google.com/dataproc/docs/concepts/components/overview#available_optional_components).
  /// [overrideProperties] A list of override and additional properties (key/value pairs)
  /// [properties] A list of the properties used to set the daemon config files.
  const ClusterClusterConfigSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.overrideProperties,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersion': ?imageVersion,
      'optionalComponents': ?optionalComponents,
      'overrideProperties': ?overrideProperties,
      'properties': ?properties,
    };
  }

  factory ClusterClusterConfigSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigSoftwareConfig(
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalComponents: (() { final guardedValue = map['optionalComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      overrideProperties: (() { final guardedValue = map['overrideProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

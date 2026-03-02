// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigSoftwareConfig {
  /// The Cloud Dataproc image version to use
  /// for the cluster - this controls the sets of software versions
  /// installed onto the nodes when you create clusters. If not specified, defaults to the
  /// latest version. For a list of valid versions see
  /// [Cloud Dataproc versions](https://cloud.google.com/dataproc/docs/concepts/dataproc-versions)
  final pulumi.Input<String>? imageVersion;
  /// The set of optional components to activate on the cluster. See [Available Optional Components](https://cloud.google.com/dataproc/docs/concepts/components/overview#available_optional_components).
  ///
  /// - - -
  final pulumi.Input<List<String>>? optionalComponents;
  /// A list of override and additional properties (key/value pairs)
  /// used to modify various aspects of the common configuration files used when creating
  /// a cluster. For a list of valid properties please see
  /// [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties)
  final pulumi.Input<Map<String, String>>? overrideProperties;
  /// A list of the properties used to set the daemon config files.
  /// This will include any values supplied by the user via `cluster_config.software_config.override_properties`
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [ClusterClusterConfigSoftwareConfig].
  /// [imageVersion] The Cloud Dataproc image version to use
  /// [optionalComponents] The set of optional components to activate on the cluster. See [Available Optional Components](https://cloud.google.com/dataproc/docs/concepts/components/overview#available_optional_components).
  /// [overrideProperties] A list of override and additional properties (key/value pairs)
  /// [properties] A list of the properties used to set the daemon config files.
  ClusterClusterConfigSoftwareConfig({
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
      imageVersion: map['imageVersion'] == null ? null : (map['imageVersion'] as String).input(),
      optionalComponents: map['optionalComponents'] == null ? null : ((map['optionalComponents'] as List).cast<String>()).input(),
      overrideProperties: map['overrideProperties'] == null ? null : ((map['overrideProperties'] as Map).cast<String, String>()).input(),
      properties: map['properties'] == null ? null : ((map['properties'] as Map).cast<String, String>()).input(),
    );
  }
}


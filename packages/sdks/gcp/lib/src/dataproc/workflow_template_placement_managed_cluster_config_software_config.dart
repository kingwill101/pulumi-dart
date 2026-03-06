// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig {
  /// The version of software inside the cluster. It must be one of the supported [Dataproc Versions](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the ["preview" version](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  final pulumi.Input<String>? imageVersion;
  /// The set of components to activate on the cluster.
  final pulumi.Input<List<String>>? optionalComponents;
  /// The properties to set on daemon config files.
  ///
  /// Property keys are specified in `prefix:property` format, for example `core:hadoop.tmp.dir`. The following are supported prefixes and their mappings:
  ///
  /// * capacity-scheduler: `capacity-scheduler.xml`
  /// * core: `core-site.xml`
  /// * distcp: `distcp-default.xml`
  /// * hdfs: `hdfs-site.xml`
  /// * hive: `hive-site.xml`
  /// * mapred: `mapred-site.xml`
  /// * pig: `pig.properties`
  /// * spark: `spark-defaults.conf`
  /// * yarn: `yarn-site.xml`
  ///
  ///
  /// For more information, see [Cluster properties](https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig].
  /// [imageVersion] The version of software inside the cluster. It must be one of the supported [Dataproc Versions](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the ["preview" version](https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  /// [optionalComponents] The set of components to activate on the cluster.
  /// [properties] The properties to set on daemon config files.
  const WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersion': ?imageVersion,
      'optionalComponents': ?optionalComponents,
      'properties': ?properties,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig(
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalComponents: (() { final guardedValue = map['optionalComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


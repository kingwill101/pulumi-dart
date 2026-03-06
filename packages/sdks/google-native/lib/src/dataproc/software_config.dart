// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'software_config_optional_components_item.dart';

/// Specifies the selection and config of software inside the cluster.
class SoftwareConfig {
  /// Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  final pulumi.Input<String>? imageVersion;
  /// Optional. The set of components to activate on the cluster.
  final pulumi.Input<List<SoftwareConfigOptionalComponentsItem>>? optionalComponents;
  /// Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [SoftwareConfig].
  /// [imageVersion] Optional. The version of software inside the cluster. It must be one of the supported Dataproc Versions (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#supported_dataproc_versions), such as "1.2" (including a subminor version, such as "1.2.29"), or the "preview" version (https://cloud.google.com/dataproc/docs/concepts/versioning/dataproc-versions#other_versions). If unspecified, it defaults to the latest Debian version.
  /// [optionalComponents] Optional. The set of components to activate on the cluster.
  /// [properties] Optional. The properties to set on daemon config files.Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. The following are supported prefixes and their mappings: capacity-scheduler: capacity-scheduler.xml core: core-site.xml distcp: distcp-default.xml hdfs: hdfs-site.xml hive: hive-site.xml mapred: mapred-site.xml pig: pig.properties spark: spark-defaults.conf yarn: yarn-site.xmlFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  const SoftwareConfig({
    this.imageVersion,
    this.optionalComponents,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'imageVersion': ?imageVersion,
      'optionalComponents': ?pulumi.Input.mapOptionalInputValue<List<SoftwareConfigOptionalComponentsItem>, List<String>>(optionalComponents, (value) => pulumi.Input.encodeList<SoftwareConfigOptionalComponentsItem, String>(value, (value) => value.wireValue)),
      'properties': ?properties,
    };
  }

  factory SoftwareConfig.fromMap(Map<String, dynamic> map) {
    return SoftwareConfig(
      imageVersion: (() { final guardedValue = map['imageVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      optionalComponents: (() { final guardedValue = map['optionalComponents']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SoftwareConfigOptionalComponentsItem>(guardedValue, (value) => SoftwareConfigOptionalComponentsItem.fromValue(value as String))); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The software configuration for this Dataproc cluster running on Kubernetes.
class KubernetesSoftwareConfigResponse {
  /// The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
  final pulumi.Input<Map<String, String>> componentVersion;
  /// The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  final pulumi.Input<Map<String, String>> properties;

  /// Creates a new [KubernetesSoftwareConfigResponse].
  /// [componentVersion] The components that should be installed in this Dataproc cluster. The key must be a string from the KubernetesComponent enumeration. The value is the version of the software to be installed. At least one entry must be specified.
  /// [properties] The properties to set on daemon config files.Property keys are specified in prefix:property format, for example spark:spark.kubernetes.container.image. The following are supported prefixes and their mappings: spark: spark-defaults.confFor more information, see Cluster properties (https://cloud.google.com/dataproc/docs/concepts/cluster-properties).
  const KubernetesSoftwareConfigResponse({
    required this.componentVersion,
    required this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'componentVersion': componentVersion,
      'properties': properties,
    };
  }

  factory KubernetesSoftwareConfigResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesSoftwareConfigResponse(
      componentVersion: pulumi.Input.fromValue((map['componentVersion'] as Map).cast<String, String>()),
      properties: pulumi.Input.fromValue((map['properties'] as Map).cast<String, String>()),
    );
  }
}


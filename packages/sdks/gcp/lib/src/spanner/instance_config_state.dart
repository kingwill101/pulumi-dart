// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_config_replica.dart';

/// Input properties used for looking up and filtering InstanceConfig resources.
class InstanceConfigState {
  /// Base configuration name, e.g. nam3, based on which this configuration is created.
  /// Only set for user managed configurations.
  /// baseConfig must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  final pulumi.Input<String>? baseConfig;
  /// Output only. Whether this instance config is a Google or User Managed Configuration.
  final pulumi.Input<String>? configType;
  /// The name of this instance configuration as it appears in UIs.
  final pulumi.Input<String>? displayName;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// An object containing a list of "key": value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// A unique identifier for the instance configuration. Values are of the
  /// form projects/<project>/instanceConfigs/[a-z][-a-z0-9]*
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The geographic placement of nodes in this instance configuration and their replication properties.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceConfigReplica>>? replicas;

  /// Creates a new [InstanceConfigState].
  /// [baseConfig] Base configuration name, e.g. nam3, based on which this configuration is created.
  /// [configType] Output only. Whether this instance config is a Google or User Managed Configuration.
  /// [displayName] The name of this instance configuration as it appears in UIs.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] An object containing a list of "key": value pairs.
  /// [name] A unique identifier for the instance configuration. Values are of the
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [replicas] The geographic placement of nodes in this instance configuration and their replication properties.
  InstanceConfigState({
    this.baseConfig,
    this.configType,
    this.displayName,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.project,
    this.pulumiLabels,
    this.replicas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseConfig': ?baseConfig,
      'configType': ?configType,
      'displayName': ?displayName,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<InstanceConfigReplica>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<InstanceConfigReplica, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory InstanceConfigState.fromMap(Map<String, dynamic> map) {
    return InstanceConfigState(
      baseConfig: map['baseConfig'] == null ? null : (map['baseConfig'] as String).input(),
      configType: map['configType'] == null ? null : (map['configType'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      replicas: map['replicas'] == null ? null : (pulumi.Input.decodeList<InstanceConfigReplica>(map['replicas'], (value) => InstanceConfigReplica.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


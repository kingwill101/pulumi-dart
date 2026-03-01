// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'replica_info.dart';

/// {@template pulumi_spanner_v1_instance_config_args_doc}
/// The set of arguments for InstanceConfig.
/// {@endtemplate}
/// {@macro pulumi_spanner_v1_instance_config_args_doc}
class InstanceConfigArgs {
  /// Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration is created. Only set for user managed configurations. `base_config` must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  final pulumi.Input<String>? baseConfig;
  /// The name of this instance configuration as it appears in UIs.
  final pulumi.Input<String>? displayName;
  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a instance config from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform instance config updates in order to avoid race conditions: An etag is returned in the response which contains instance configs, and systems are expected to put that etag in the request to update instance config to ensure that their change will be applied to the same version of the instance config. If no etag is provided in the call to update instance config, then the existing instance config is overwritten blindly.
  final pulumi.Input<String>? etag;
  /// The ID of the instance config to create. Valid identifiers are of the form `custom-[-a-z0-9]*[a-z0-9]` and must be between 2 and 64 characters in length. The `custom-` prefix is required to avoid name conflicts with Google managed configurations.
  final pulumi.Input<String> instanceConfigId;
  /// Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. Therefore, you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  final pulumi.Input<Map<String, String>>? labels;
  /// Allowed values of the "default_leader" schema option for databases in instances that use this instance configuration.
  final pulumi.Input<List<String>>? leaderOptions;
  /// A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The geographic placement of nodes in this instance configuration and their replication properties.
  final pulumi.Input<List<ReplicaInfo>>? replicas;
  /// An option to validate, but not actually execute, a request, and provide the same response.
  final pulumi.Input<bool>? validateOnly;

  /// Creates a new [InstanceConfigArgs].
  /// [baseConfig] Base configuration name, e.g. projects//instanceConfigs/nam3, based on which this configuration is created. Only set for user managed configurations. `base_config` must refer to a configuration of type GOOGLE_MANAGED in the same project as this configuration.
  /// [displayName] The name of this instance configuration as it appears in UIs.
  /// [etag] etag is used for optimistic concurrency control as a way to help prevent simultaneous updates of a instance config from overwriting each other. It is strongly suggested that systems make use of the etag in the read-modify-write cycle to perform instance config updates in order to avoid race conditions: An etag is returned in the response which contains instance configs, and systems are expected to put that etag in the request to update instance config to ensure that their change will be applied to the same version of the instance config. If no etag is provided in the call to update instance config, then the existing instance config is overwritten blindly.
  /// [instanceConfigId] The ID of the instance config to create. Valid identifiers are of the form `custom-[-a-z0-9]*[a-z0-9]` and must be between 2 and 64 characters in length. The `custom-` prefix is required to avoid name conflicts with Google managed configurations.
  /// [labels] Cloud Labels are a flexible and lightweight mechanism for organizing cloud resources into groups that reflect a customer's organizational needs and deployment strategies. Cloud Labels can be used to filter collections of resources. They can be used to control how resource metrics are aggregated. And they can be used as arguments to policy management rules (e.g. route, firewall, load balancing, etc.). * Label keys must be between 1 and 63 characters long and must conform to the following regular expression: `a-z{0,62}`. * Label values must be between 0 and 63 characters long and must conform to the regular expression `[a-z0-9_-]{0,63}`. * No more than 64 labels can be associated with a given resource. See https://goo.gl/xmQnxf for more information on and examples of labels. If you plan to use labels in your own code, please note that additional characters may be allowed in the future. Therefore, you are advised to use an internal label representation, such as JSON, which doesn't rely upon specific characters being disallowed. For example, representing labels as the string: name + "_" + value would prove problematic if we were to allow "_" in a future release.
  /// [leaderOptions] Allowed values of the "default_leader" schema option for databases in instances that use this instance configuration.
  /// [name] A unique identifier for the instance configuration. Values are of the form `projects//instanceConfigs/a-z*`.
  /// [project] Optional.
  /// [replicas] The geographic placement of nodes in this instance configuration and their replication properties.
  /// [validateOnly] An option to validate, but not actually execute, a request, and provide the same response.
  InstanceConfigArgs({
    pulumi.Output<String>? baseConfig,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? etag,
    required pulumi.Output<String> instanceConfigId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<List<String>>? leaderOptions,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<List<ReplicaInfo>>? replicas,
    pulumi.Output<bool>? validateOnly,
  }) :
      baseConfig = pulumi.Input.asOptionalInput<String>(baseConfig),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      etag = pulumi.Input.asOptionalInput<String>(etag),
      instanceConfigId = pulumi.Input.asInput<String>(instanceConfigId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      leaderOptions = pulumi.Input.asOptionalInput<List<String>>(leaderOptions),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      replicas = pulumi.Input.asOptionalInput<List<ReplicaInfo>>(replicas),
      validateOnly = pulumi.Input.asOptionalInput<bool>(validateOnly);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseConfig': ?baseConfig,
      'displayName': ?displayName,
      'etag': ?etag,
      'instanceConfigId': instanceConfigId,
      'labels': ?labels,
      'leaderOptions': ?leaderOptions,
      'name': ?name,
      'project': ?project,
      'replicas': ?pulumi.Input.mapOptionalInputValue<List<ReplicaInfo>, List<Map<String, dynamic>>>(replicas, (value) => pulumi.Input.encodeList<ReplicaInfo, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validateOnly': ?validateOnly,
    };
  }

  factory InstanceConfigArgs.fromMap(Map<String, dynamic> map) {
    return InstanceConfigArgs(
      baseConfig: map['baseConfig'] == null ? null : pulumi.Output.create<String>(map['baseConfig'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      instanceConfigId: pulumi.Output.create<String>(map['instanceConfigId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      leaderOptions: map['leaderOptions'] == null ? null : pulumi.Output.create<List<String>>((map['leaderOptions'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      replicas: map['replicas'] == null ? null : pulumi.Output.create<List<ReplicaInfo>>(pulumi.Input.decodeList<ReplicaInfo>(map['replicas'], (value) => ReplicaInfo.fromMap((value as Map).cast<String, dynamic>()))),
      validateOnly: map['validateOnly'] == null ? null : pulumi.Output.create<bool>(map['validateOnly'] as bool),
    );
  }
}


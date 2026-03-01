// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_host_config.dart';
import 'instance_private_config.dart';
import 'instance_workforce_identity_federation_config.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Time the Instance was created in UTC.
  final pulumi.Input<String>? createTime;
  /// The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// to be abandoned, rather than deleted. Setting `DELETE` deletes the resource
  /// and all its contents. Setting `PREVENT` prevents the resource from accidental
  /// deletion by erroring out during plan.
  /// Default is `PREVENT`.  Possible values are:
  /// * DELETE
  /// * PREVENT
  /// * ABANDON
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// A list of hostnames for this instance.
  /// Structure is documented below.
  final pulumi.Input<List<InstanceHostConfig>>? hostConfigs;
  /// The name for the Instance.
  final pulumi.Input<String>? instanceId;
  /// Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final pulumi.Input<String>? kmsKey;
  /// Labels as key value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the Instance.
  final pulumi.Input<String>? location;
  /// The resource name for the Instance.
  final pulumi.Input<String>? name;
  /// Private settings for private instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePrivateConfig>? privateConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// The current state of the Instance.
  final pulumi.Input<String>? state;
  /// Provides information about the current instance state.
  final pulumi.Input<String>? stateNote;
  /// Time the Instance was updated in UTC.
  final pulumi.Input<String>? updateTime;
  /// Configuration for Workforce Identity Federation to support third party identity provider.
  /// If unset, defaults to the Google OIDC IdP.
  /// Structure is documented below.
  final pulumi.Input<InstanceWorkforceIdentityFederationConfig>? workforceIdentityFederationConfig;

  /// Creates a new [InstanceState].
  /// [createTime] Time the Instance was created in UTC.
  /// [deletionPolicy] The deletion policy for the instance. Setting `ABANDON` allows the resource
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [hostConfigs] A list of hostnames for this instance.
  /// [instanceId] The name for the Instance.
  /// [kmsKey] Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  /// [labels] Labels as key value pairs.
  /// [location] The location for the Instance.
  /// [name] The resource name for the Instance.
  /// [privateConfig] Private settings for private instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The current state of the Instance.
  /// [stateNote] Provides information about the current instance state.
  /// [updateTime] Time the Instance was updated in UTC.
  /// [workforceIdentityFederationConfig] Configuration for Workforce Identity Federation to support third party identity provider.
  InstanceState({
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? deletionPolicy,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<List<InstanceHostConfig>>? hostConfigs,
    pulumi.Output<String>? instanceId,
    pulumi.Output<String>? kmsKey,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<InstancePrivateConfig>? privateConfig,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<String>? state,
    pulumi.Output<String>? stateNote,
    pulumi.Output<String>? updateTime,
    pulumi.Output<InstanceWorkforceIdentityFederationConfig>? workforceIdentityFederationConfig,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      deletionPolicy = pulumi.Input.asOptionalInput<String>(deletionPolicy),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      hostConfigs = pulumi.Input.asOptionalInput<List<InstanceHostConfig>>(hostConfigs),
      instanceId = pulumi.Input.asOptionalInput<String>(instanceId),
      kmsKey = pulumi.Input.asOptionalInput<String>(kmsKey),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateConfig = pulumi.Input.asOptionalInput<InstancePrivateConfig>(privateConfig),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      state = pulumi.Input.asOptionalInput<String>(state),
      stateNote = pulumi.Input.asOptionalInput<String>(stateNote),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime),
      workforceIdentityFederationConfig = pulumi.Input.asOptionalInput<InstanceWorkforceIdentityFederationConfig>(workforceIdentityFederationConfig);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'hostConfigs': ?pulumi.Input.mapOptionalInputValue<List<InstanceHostConfig>, List<Map<String, dynamic>>>(hostConfigs, (value) => pulumi.Input.encodeList<InstanceHostConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceId': ?instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'privateConfig': ?pulumi.Input.mapOptionalInputValue<InstancePrivateConfig, Map<String, dynamic>>(privateConfig, (value) => value.toMap()),
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'stateNote': ?stateNote,
      'updateTime': ?updateTime,
      'workforceIdentityFederationConfig': ?pulumi.Input.mapOptionalInputValue<InstanceWorkforceIdentityFederationConfig, Map<String, dynamic>>(workforceIdentityFederationConfig, (value) => value.toMap()),
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      deletionPolicy: map['deletionPolicy'] == null ? null : pulumi.Output.create<String>(map['deletionPolicy'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      hostConfigs: map['hostConfigs'] == null ? null : pulumi.Output.create<List<InstanceHostConfig>>(pulumi.Input.decodeList<InstanceHostConfig>(map['hostConfigs'], (value) => InstanceHostConfig.fromMap((value as Map).cast<String, dynamic>()))),
      instanceId: map['instanceId'] == null ? null : pulumi.Output.create<String>(map['instanceId'] as String),
      kmsKey: map['kmsKey'] == null ? null : pulumi.Output.create<String>(map['kmsKey'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateConfig: map['privateConfig'] == null ? null : pulumi.Output.create<InstancePrivateConfig>(InstancePrivateConfig.fromMap((map['privateConfig'] as Map).cast<String, dynamic>())),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      stateNote: map['stateNote'] == null ? null : pulumi.Output.create<String>(map['stateNote'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
      workforceIdentityFederationConfig: map['workforceIdentityFederationConfig'] == null ? null : pulumi.Output.create<InstanceWorkforceIdentityFederationConfig>(InstanceWorkforceIdentityFederationConfig.fromMap((map['workforceIdentityFederationConfig'] as Map).cast<String, dynamic>())),
    );
  }
}


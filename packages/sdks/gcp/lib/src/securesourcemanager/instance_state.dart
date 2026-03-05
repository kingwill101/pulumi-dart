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
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.hostConfigs,
    this.instanceId,
    this.kmsKey,
    this.labels,
    this.location,
    this.name,
    this.privateConfig,
    this.project,
    this.pulumiLabels,
    this.state,
    this.stateNote,
    this.updateTime,
    this.workforceIdentityFederationConfig,
  });

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
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      hostConfigs: (() { final guardedValue = map['hostConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<InstanceHostConfig>(guardedValue, (value) => InstanceHostConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceId: (() { final guardedValue = map['instanceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateConfig: (() { final guardedValue = map['privateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePrivateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stateNote: (() { final guardedValue = map['stateNote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforceIdentityFederationConfig: (() { final guardedValue = map['workforceIdentityFederationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceWorkforceIdentityFederationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


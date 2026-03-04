// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_access_rules_options.dart';

/// Input properties used for looking up and filtering Instance resources.
class InstanceState {
  /// Access control rules for the Lustre instance. Configures default root
  /// squashing behavior and specific access rules based on IP addresses.
  /// Structure is documented below.
  final pulumi.Input<InstanceAccessRulesOptions>? accessRulesOptions;

  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `18000` to `954000`, in increments of 9000.
  final pulumi.Input<String>? capacityGib;

  /// Timestamp when the instance was created.
  final pulumi.Input<String>? createTime;

  /// A user-readable description of the instance.
  final pulumi.Input<String>? description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;

  /// The filesystem name for this instance. This name is used by client-side
  /// tools, including when mounting the instance. Must be eight characters or
  /// less and can only contain letters and numbers.
  final pulumi.Input<String>? filesystem;

  /// Indicates whether you want to enable support for GKE clients. By default,
  /// GKE clients are not supported.
  final pulumi.Input<bool>? gkeSupportEnabled;

  /// The name of the Managed Lustre instance.
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  final pulumi.Input<String>? instanceId;

  /// The KMS key id to use for encryption of the Lustre instance.
  final pulumi.Input<String>? kmsKey;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;

  /// Mount point of the instance in the format `IP_ADDRESS@tcp:/FILESYSTEM`.
  final pulumi.Input<String>? mountPoint;

  /// Identifier. The name of the instance.
  final pulumi.Input<String>? name;

  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  final pulumi.Input<String>? network;

  /// The throughput of the instance in MB/s/TiB.
  /// Valid values are 125, 250, 500, 1000.
  final pulumi.Input<String>? perUnitStorageThroughput;

  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  final pulumi.Input<String>? placementPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;

  /// The state of the instance.
  /// Please see https://cloud.google.com/managed-lustre/docs/reference/rest/v1/projects.locations.instances#state for values
  final pulumi.Input<String>? state;

  /// The reason why the instance is in a certain state.
  final pulumi.Input<String>? stateReason;

  /// Timestamp when the instance was last updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [InstanceState].
  /// [accessRulesOptions] Access control rules for the Lustre instance. Configures default root
  /// [capacityGib] The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// [createTime] Timestamp when the instance was created.
  /// [description] A user-readable description of the instance.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [filesystem] The filesystem name for this instance. This name is used by client-side
  /// [gkeSupportEnabled] Indicates whether you want to enable support for GKE clients. By default,
  /// [instanceId] The name of the Managed Lustre instance.
  /// [kmsKey] The KMS key id to use for encryption of the Lustre instance.
  /// [labels] Labels as key value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [mountPoint] Mount point of the instance in the format `IP_ADDRESS@tcp:/FILESYSTEM`.
  /// [name] Identifier. The name of the instance.
  /// [network] The full name of the VPC network to which the instance is connected.
  /// [perUnitStorageThroughput] The throughput of the instance in MB/s/TiB.
  /// [placementPolicy] The placement policy name for the instance in the format of
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [state] The state of the instance.
  /// [stateReason] The reason why the instance is in a certain state.
  /// [updateTime] Timestamp when the instance was last updated.
  InstanceState({
    this.accessRulesOptions,
    this.capacityGib,
    this.createTime,
    this.description,
    this.effectiveLabels,
    this.filesystem,
    this.gkeSupportEnabled,
    this.instanceId,
    this.kmsKey,
    this.labels,
    this.location,
    this.mountPoint,
    this.name,
    this.network,
    this.perUnitStorageThroughput,
    this.placementPolicy,
    this.project,
    this.pulumiLabels,
    this.state,
    this.stateReason,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRulesOptions':
          ?pulumi.Input.mapOptionalInputValue<
            InstanceAccessRulesOptions,
            Map<String, dynamic>
          >(accessRulesOptions, (value) => value.toMap()),
      'capacityGib': ?capacityGib,
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'filesystem': ?filesystem,
      'gkeSupportEnabled': ?gkeSupportEnabled,
      'instanceId': ?instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': ?location,
      'mountPoint': ?mountPoint,
      'name': ?name,
      'network': ?network,
      'perUnitStorageThroughput': ?perUnitStorageThroughput,
      'placementPolicy': ?placementPolicy,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'state': ?state,
      'stateReason': ?stateReason,
      'updateTime': ?updateTime,
    };
  }

  factory InstanceState.fromMap(Map<String, dynamic> map) {
    return InstanceState(
      accessRulesOptions: (() {
        final guardedValue = map['accessRulesOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InstanceAccessRulesOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      capacityGib: (() {
        final guardedValue = map['capacityGib'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      effectiveLabels: (() {
        final guardedValue = map['effectiveLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      filesystem: (() {
        final guardedValue = map['filesystem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gkeSupportEnabled: (() {
        final guardedValue = map['gkeSupportEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      instanceId: (() {
        final guardedValue = map['instanceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kmsKey: (() {
        final guardedValue = map['kmsKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountPoint: (() {
        final guardedValue = map['mountPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      network: (() {
        final guardedValue = map['network'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      perUnitStorageThroughput: (() {
        final guardedValue = map['perUnitStorageThroughput'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      placementPolicy: (() {
        final guardedValue = map['placementPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pulumiLabels: (() {
        final guardedValue = map['pulumiLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      stateReason: (() {
        final guardedValue = map['stateReason'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      updateTime: (() {
        final guardedValue = map['updateTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

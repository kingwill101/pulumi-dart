// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'multicast_domain_connection_config.dart';
import 'multicast_domain_state.dart';

/// Input properties used for looking up and filtering MulticastDomain resources.
class MulticastDomainNetworkservicesState {
  /// The resource name of the multicast admin VPC network.
  /// Use the following format:
  /// `projects/{project}/locations/global/networks/{network}`.
  final pulumi.Input<String>? adminNetwork;
  /// VPC connectivity information.
  /// Structure is documented below.
  final pulumi.Input<MulticastDomainConnectionConfig>? connectionConfig;
  /// The timestamp when the multicast domain was created.
  final pulumi.Input<String>? createTime;
  /// An optional text description of the multicast domain.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Labels as key-value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String>? location;
  /// The multicast domain group this domain should be associated with.
  /// Use the following format:
  /// `projects/{project}/locations/global/multicastDomainGroups/{multicast_domain_group}`.
  final pulumi.Input<String>? multicastDomainGroup;
  /// A unique name for the multicast domain.
  /// The name is restricted to letters, numbers, and hyphen, with the first
  /// character a letter, and the last a letter or a number. The name must not
  /// exceed 48 characters.
  final pulumi.Input<String>? multicastDomainId;
  /// Identifier. The resource name of the multicast domain.
  /// Use the following format:
  /// `projects/*/locations/global/multicastDomains/*`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// (Output)
  /// The state of the multicast resource.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// DELETING
  /// DELETE_FAILED
  /// UPDATING
  /// UPDATE_FAILED
  /// INACTIVE
  final pulumi.Input<List<MulticastDomainState>>? states;
  /// The Google-generated UUID for the resource. This value is
  /// unique across all multicast domain resources. If a domain is deleted and
  /// another with the same name is created, the new domain is assigned a
  /// different unique_id.
  final pulumi.Input<String>? uniqueId;
  /// The timestamp when the multicast domain was most recently
  /// updated.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [MulticastDomainNetworkservicesState].
  /// [adminNetwork] The resource name of the multicast admin VPC network.
  /// [connectionConfig] VPC connectivity information.
  /// [createTime] The timestamp when the multicast domain was created.
  /// [description] An optional text description of the multicast domain.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Labels as key-value pairs.
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [multicastDomainGroup] The multicast domain group this domain should be associated with.
  /// [multicastDomainId] A unique name for the multicast domain.
  /// [name] Identifier. The resource name of the multicast domain.
  /// [project] The ID of the project in which the resource belongs.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [states] (Output)
  /// [uniqueId] The Google-generated UUID for the resource. This value is
  /// [updateTime] The timestamp when the multicast domain was most recently
  MulticastDomainNetworkservicesState({
    pulumi.Output<String>? adminNetwork,
    pulumi.Output<MulticastDomainConnectionConfig>? connectionConfig,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? description,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? multicastDomainGroup,
    pulumi.Output<String>? multicastDomainId,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<List<MulticastDomainState>>? states,
    pulumi.Output<String>? uniqueId,
    pulumi.Output<String>? updateTime,
  }) :
      adminNetwork = pulumi.Input.asOptionalInput<String>(adminNetwork),
      connectionConfig = pulumi.Input.asOptionalInput<MulticastDomainConnectionConfig>(connectionConfig),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      description = pulumi.Input.asOptionalInput<String>(description),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      multicastDomainGroup = pulumi.Input.asOptionalInput<String>(multicastDomainGroup),
      multicastDomainId = pulumi.Input.asOptionalInput<String>(multicastDomainId),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      states = pulumi.Input.asOptionalInput<List<MulticastDomainState>>(states),
      uniqueId = pulumi.Input.asOptionalInput<String>(uniqueId),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminNetwork': ?adminNetwork,
      'connectionConfig': ?pulumi.Input.mapOptionalInputValue<MulticastDomainConnectionConfig, Map<String, dynamic>>(connectionConfig, (value) => value.toMap()),
      'createTime': ?createTime,
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'location': ?location,
      'multicastDomainGroup': ?multicastDomainGroup,
      'multicastDomainId': ?multicastDomainId,
      'name': ?name,
      'project': ?project,
      'pulumiLabels': ?pulumiLabels,
      'states': ?pulumi.Input.mapOptionalInputValue<List<MulticastDomainState>, List<Map<String, dynamic>>>(states, (value) => pulumi.Input.encodeList<MulticastDomainState, Map<String, dynamic>>(value, (value) => value.toMap())),
      'uniqueId': ?uniqueId,
      'updateTime': ?updateTime,
    };
  }

  factory MulticastDomainNetworkservicesState.fromMap(Map<String, dynamic> map) {
    return MulticastDomainNetworkservicesState(
      adminNetwork: map['adminNetwork'] == null ? null : pulumi.Output.create<String>(map['adminNetwork'] as String),
      connectionConfig: map['connectionConfig'] == null ? null : pulumi.Output.create<MulticastDomainConnectionConfig>(MulticastDomainConnectionConfig.fromMap((map['connectionConfig'] as Map).cast<String, dynamic>())),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      multicastDomainGroup: map['multicastDomainGroup'] == null ? null : pulumi.Output.create<String>(map['multicastDomainGroup'] as String),
      multicastDomainId: map['multicastDomainId'] == null ? null : pulumi.Output.create<String>(map['multicastDomainId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      states: map['states'] == null ? null : pulumi.Output.create<List<MulticastDomainState>>(pulumi.Input.decodeList<MulticastDomainState>(map['states'], (value) => MulticastDomainState.fromMap((value as Map).cast<String, dynamic>()))),
      uniqueId: map['uniqueId'] == null ? null : pulumi.Output.create<String>(map['uniqueId'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


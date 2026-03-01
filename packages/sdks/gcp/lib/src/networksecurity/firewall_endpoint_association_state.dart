// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering FirewallEndpointAssociation resources.
class FirewallEndpointAssociationState {
  /// Time the firewall endpoint was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// > **Note:** The API will reject the request if this value is set to true when creating the resource,
  /// otherwise on an update the association can be disabled.
  final pulumi.Input<bool>? disabled;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// The URL of the firewall endpoint that is being associated.
  final pulumi.Input<String>? firewallEndpoint;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location (zone) of the firewall endpoint association.
  final pulumi.Input<String>? location;
  /// The name of the firewall endpoint association resource.
  final pulumi.Input<String>? name;
  /// The URL of the network that is being associated.
  final pulumi.Input<String>? network;
  /// The name of the parent this firewall endpoint association belongs to.
  /// Format: projects/{project_id}.
  final pulumi.Input<String>? parent;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  final pulumi.Input<bool>? reconciling;
  /// Server-defined URL of this resource.
  final pulumi.Input<String>? selfLink;
  /// The current state of the endpoint.
  final pulumi.Input<String>? state;
  /// The URL of the TlsInspectionPolicy that is being associated.
  final pulumi.Input<String>? tlsInspectionPolicy;
  /// Time the firewall endpoint was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FirewallEndpointAssociationState].
  /// [createTime] Time the firewall endpoint was created in UTC.
  /// [disabled] Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [firewallEndpoint] The URL of the firewall endpoint that is being associated.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location (zone) of the firewall endpoint association.
  /// [name] The name of the firewall endpoint association resource.
  /// [network] The URL of the network that is being associated.
  /// [parent] The name of the parent this firewall endpoint association belongs to.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  /// [selfLink] Server-defined URL of this resource.
  /// [state] The current state of the endpoint.
  /// [tlsInspectionPolicy] The URL of the TlsInspectionPolicy that is being associated.
  /// [updateTime] Time the firewall endpoint was updated in UTC.
  FirewallEndpointAssociationState({
    pulumi.Output<String>? createTime,
    pulumi.Output<bool>? disabled,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<String>? firewallEndpoint,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? network,
    pulumi.Output<String>? parent,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? state,
    pulumi.Output<String>? tlsInspectionPolicy,
    pulumi.Output<String>? updateTime,
  }) :
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      disabled = pulumi.Input.asOptionalInput<bool>(disabled),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      firewallEndpoint = pulumi.Input.asOptionalInput<String>(firewallEndpoint),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      network = pulumi.Input.asOptionalInput<String>(network),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      state = pulumi.Input.asOptionalInput<String>(state),
      tlsInspectionPolicy = pulumi.Input.asOptionalInput<String>(tlsInspectionPolicy),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'disabled': ?disabled,
      'effectiveLabels': ?effectiveLabels,
      'firewallEndpoint': ?firewallEndpoint,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'network': ?network,
      'parent': ?parent,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'selfLink': ?selfLink,
      'state': ?state,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
      'updateTime': ?updateTime,
    };
  }

  factory FirewallEndpointAssociationState.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointAssociationState(
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      disabled: map['disabled'] == null ? null : pulumi.Output.create<bool>(map['disabled'] as bool),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      firewallEndpoint: map['firewallEndpoint'] == null ? null : pulumi.Output.create<String>(map['firewallEndpoint'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      network: map['network'] == null ? null : pulumi.Output.create<String>(map['network'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null ? null : pulumi.Output.create<String>(map['tlsInspectionPolicy'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


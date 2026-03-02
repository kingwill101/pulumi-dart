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
    this.createTime,
    this.disabled,
    this.effectiveLabels,
    this.firewallEndpoint,
    this.labels,
    this.location,
    this.name,
    this.network,
    this.parent,
    this.pulumiLabels,
    this.reconciling,
    this.selfLink,
    this.state,
    this.tlsInspectionPolicy,
    this.updateTime,
  });

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
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels'] as Map).cast<String, String>()).input(),
      firewallEndpoint: map['firewallEndpoint'] == null ? null : (map['firewallEndpoint'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: map['network'] == null ? null : (map['network'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels'] as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling'] as bool).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink'] as String).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null ? null : (map['tlsInspectionPolicy'] as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime'] as String).input(),
    );
  }
}


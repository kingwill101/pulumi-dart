// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_firewall_endpoint_association_firewall_endpoint_association_args_doc}
/// The set of arguments for FirewallEndpointAssociation.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_firewall_endpoint_association_firewall_endpoint_association_args_doc}
class FirewallEndpointAssociationArgs {
  /// Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// > **Note:** The API will reject the request if this value is set to true when creating the resource,
  /// otherwise on an update the association can be disabled.
  final pulumi.Input<bool>? disabled;
  /// The URL of the firewall endpoint that is being associated.
  final pulumi.Input<String> firewallEndpoint;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location (zone) of the firewall endpoint association.
  final pulumi.Input<String> location;
  /// The name of the firewall endpoint association resource.
  final pulumi.Input<String>? name;
  /// The URL of the network that is being associated.
  final pulumi.Input<String> network;
  /// The name of the parent this firewall endpoint association belongs to.
  /// Format: projects/{project_id}.
  final pulumi.Input<String>? parent;
  /// The URL of the TlsInspectionPolicy that is being associated.
  final pulumi.Input<String>? tlsInspectionPolicy;

  /// Creates a new [FirewallEndpointAssociationArgs].
  /// [disabled] Whether the association is disabled. True indicates that traffic will not be intercepted.
  /// [firewallEndpoint] The URL of the firewall endpoint that is being associated.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location (zone) of the firewall endpoint association.
  /// [name] The name of the firewall endpoint association resource.
  /// [network] The URL of the network that is being associated.
  /// [parent] The name of the parent this firewall endpoint association belongs to.
  /// [tlsInspectionPolicy] The URL of the TlsInspectionPolicy that is being associated.
  FirewallEndpointAssociationArgs({
    this.disabled,
    required this.firewallEndpoint,
    this.labels,
    required this.location,
    this.name,
    required this.network,
    this.parent,
    this.tlsInspectionPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'firewallEndpoint': firewallEndpoint,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'network': network,
      'parent': ?parent,
      'tlsInspectionPolicy': ?tlsInspectionPolicy,
    };
  }

  factory FirewallEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointAssociationArgs(
      disabled: map['disabled'] == null ? null : (map['disabled'] as bool).input(),
      firewallEndpoint: (map['firewallEndpoint'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      network: (map['network'] as String).input(),
      parent: map['parent'] == null ? null : (map['parent'] as String).input(),
      tlsInspectionPolicy: map['tlsInspectionPolicy'] == null ? null : (map['tlsInspectionPolicy'] as String).input(),
    );
  }
}


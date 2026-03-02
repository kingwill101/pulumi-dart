// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_firewall_endpoint_association_args_doc}
/// Arguments for getFirewallEndpointAssociation.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_firewall_endpoint_association_args_doc}
class GetFirewallEndpointAssociationArgs {
  final pulumi.Input<String> firewallEndpointAssociationId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFirewallEndpointAssociationArgs].
  /// [firewallEndpointAssociationId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFirewallEndpointAssociationArgs({
    required this.firewallEndpointAssociationId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallEndpointAssociationId': firewallEndpointAssociationId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFirewallEndpointAssociationArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointAssociationArgs(
      firewallEndpointAssociationId: (map['firewallEndpointAssociationId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


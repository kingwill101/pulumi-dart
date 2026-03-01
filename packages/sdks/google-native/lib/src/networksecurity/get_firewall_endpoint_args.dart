// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_firewall_endpoint_args_doc}
/// Arguments for getFirewallEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_firewall_endpoint_args_doc}
class GetFirewallEndpointArgs {
  final pulumi.Input<String> firewallEndpointId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;

  /// Creates a new [GetFirewallEndpointArgs].
  /// [firewallEndpointId] Required.
  /// [location] Required.
  /// [organizationId] Required.
  GetFirewallEndpointArgs({
    required pulumi.Output<String> firewallEndpointId,
    required pulumi.Output<String> location,
    required pulumi.Output<String> organizationId,
  }) :
      firewallEndpointId = pulumi.Input.asInput<String>(firewallEndpointId),
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firewallEndpointId': firewallEndpointId,
      'location': location,
      'organizationId': organizationId,
    };
  }

  factory GetFirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GetFirewallEndpointArgs(
      firewallEndpointId: pulumi.Output.create<String>(map['firewallEndpointId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      organizationId: pulumi.Output.create<String>(map['organizationId'] as String),
    );
  }
}


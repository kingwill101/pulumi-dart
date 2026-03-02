// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_endpoint_settings.dart';

/// {@template pulumi_networksecurity_firewall_endpoint_firewall_endpoint_args_doc}
/// The set of arguments for FirewallEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_firewall_endpoint_firewall_endpoint_args_doc}
class FirewallEndpointArgs {
  /// Project to bill on endpoint uptime usage.
  final pulumi.Input<String> billingProjectId;
  /// Settings for the endpoint.
  /// Structure is documented below.
  final pulumi.Input<FirewallEndpointEndpointSettings>? endpointSettings;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location (zone) of the firewall endpoint.
  final pulumi.Input<String> location;
  /// The name of the firewall endpoint resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this firewall endpoint belongs to.
  /// Format: organizations/{organization_id}.
  final pulumi.Input<String> parent;

  /// Creates a new [FirewallEndpointArgs].
  /// [billingProjectId] Project to bill on endpoint uptime usage.
  /// [endpointSettings] Settings for the endpoint.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location (zone) of the firewall endpoint.
  /// [name] The name of the firewall endpoint resource.
  /// [parent] The name of the parent this firewall endpoint belongs to.
  FirewallEndpointArgs({
    required this.billingProjectId,
    this.endpointSettings,
    this.labels,
    required this.location,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingProjectId': billingProjectId,
      'endpointSettings': ?pulumi.Input.mapOptionalInputValue<FirewallEndpointEndpointSettings, Map<String, dynamic>>(endpointSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'parent': parent,
    };
  }

  factory FirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointArgs(
      billingProjectId: (map['billingProjectId'] as String).input(),
      endpointSettings: map['endpointSettings'] == null ? null : (FirewallEndpointEndpointSettings.fromMap((map['endpointSettings'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}


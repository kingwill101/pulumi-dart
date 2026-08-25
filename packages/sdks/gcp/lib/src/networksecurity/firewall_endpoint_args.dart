// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_endpoint_settings.dart';

/// {@template pulumi_networksecurity_firewall_endpoint_firewall_endpoint_args_doc}
/// The set of arguments for FirewallEndpoint.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_firewall_endpoint_firewall_endpoint_args_doc}
class FirewallEndpointArgs {
  /// Project to charge for the deployed firewall endpoint.
  /// This field is required for organization-scoped endpoints.
  /// For project-scoped endpoints, it is optional but must match the
  /// endpoint's project if specified.
  final pulumi.Input<String?>? billingProjectId;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Settings for the endpoint.
  /// Structure is documented below.
  final pulumi.Input<FirewallEndpointEndpointSettings?>? endpointSettings;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>?>? labels;
  /// The location (zone) of the firewall endpoint.
  final pulumi.Input<String> location;
  /// The name of the firewall endpoint resource.
  final pulumi.Input<String?>? name;
  /// The name of the parent this firewall endpoint belongs to.
  /// Format: `organizations/{organization_id}` or `projects/{project_id}`.
  final pulumi.Input<String> parent;

  /// Creates a new [FirewallEndpointArgs].
  /// [billingProjectId] Project to charge for the deployed firewall endpoint.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [endpointSettings] Settings for the endpoint.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location (zone) of the firewall endpoint.
  /// [name] The name of the firewall endpoint resource.
  /// [parent] The name of the parent this firewall endpoint belongs to.
  const FirewallEndpointArgs({
    this.billingProjectId,
    this.deletionPolicy,
    this.endpointSettings,
    this.labels,
    required this.location,
    this.name,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingProjectId': ?billingProjectId,
      'deletionPolicy': ?deletionPolicy,
      'endpointSettings': ?pulumi.Input.mapOptionalInputValue<FirewallEndpointEndpointSettings, Map<String, dynamic>>(endpointSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'parent': parent,
    };
  }

  factory FirewallEndpointArgs.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointArgs(
      billingProjectId: (() { final guardedValue = map['billingProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointSettings: (() { final guardedValue = map['endpointSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallEndpointEndpointSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
    );
  }
}

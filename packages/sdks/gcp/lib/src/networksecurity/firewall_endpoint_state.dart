// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_endpoint_endpoint_settings.dart';

/// Input properties used for looking up and filtering FirewallEndpoint resources.
class FirewallEndpointState {
  /// List of networks that are associated with this endpoint in the local zone.
  /// This is a projection of the FirewallEndpointAssociations pointing at this
  /// endpoint. A network will only appear in this list after traffic routing is
  /// fully configured. Format: projects/{project}/global/networks/{name}.
  final pulumi.Input<List<String>>? associatedNetworks;
  /// Project to charge for the deployed firewall endpoint.
  /// This field is required for organization-scoped endpoints.
  /// For project-scoped endpoints, it is optional but must match the
  /// endpoint's project if specified.
  final pulumi.Input<String>? billingProjectId;
  /// Time the firewall endpoint was created in UTC.
  final pulumi.Input<String>? createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Settings for the endpoint.
  /// Structure is documented below.
  final pulumi.Input<FirewallEndpointEndpointSettings>? endpointSettings;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location (zone) of the firewall endpoint.
  final pulumi.Input<String>? location;
  /// The name of the firewall endpoint resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this firewall endpoint belongs to.
  /// Format: `organizations/{organization_id}` or `projects/{project_id}`.
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
  /// Time the firewall endpoint was updated in UTC.
  final pulumi.Input<String>? updateTime;

  /// Creates a new [FirewallEndpointState].
  /// [associatedNetworks] List of networks that are associated with this endpoint in the local zone.
  /// [billingProjectId] Project to charge for the deployed firewall endpoint.
  /// [createTime] Time the firewall endpoint was created in UTC.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [endpointSettings] Settings for the endpoint.
  /// [labels] A map of key/value label pairs to assign to the resource.
  /// [location] The location (zone) of the firewall endpoint.
  /// [name] The name of the firewall endpoint resource.
  /// [parent] The name of the parent this firewall endpoint belongs to.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [reconciling] Whether reconciling is in progress, recommended per https://google.aip.dev/128.
  /// [selfLink] Server-defined URL of this resource.
  /// [state] The current state of the endpoint.
  /// [updateTime] Time the firewall endpoint was updated in UTC.
  const FirewallEndpointState({
    this.associatedNetworks,
    this.billingProjectId,
    this.createTime,
    this.deletionPolicy,
    this.effectiveLabels,
    this.endpointSettings,
    this.labels,
    this.location,
    this.name,
    this.parent,
    this.pulumiLabels,
    this.reconciling,
    this.selfLink,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'associatedNetworks': ?associatedNetworks,
      'billingProjectId': ?billingProjectId,
      'createTime': ?createTime,
      'deletionPolicy': ?deletionPolicy,
      'effectiveLabels': ?effectiveLabels,
      'endpointSettings': ?pulumi.Input.mapOptionalInputValue<FirewallEndpointEndpointSettings, Map<String, dynamic>>(endpointSettings, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'parent': ?parent,
      'pulumiLabels': ?pulumiLabels,
      'reconciling': ?reconciling,
      'selfLink': ?selfLink,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory FirewallEndpointState.fromMap(Map<String, dynamic> map) {
    return FirewallEndpointState(
      associatedNetworks: (() { final guardedValue = map['associatedNetworks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      billingProjectId: (() { final guardedValue = map['billingProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      endpointSettings: (() { final guardedValue = map['endpointSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FirewallEndpointEndpointSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parent: (() { final guardedValue = map['parent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      reconciling: (() { final guardedValue = map['reconciling']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

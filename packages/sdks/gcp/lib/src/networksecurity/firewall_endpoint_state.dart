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
  /// Project to bill on endpoint uptime usage.
  final pulumi.Input<String>? billingProjectId;
  /// Time the firewall endpoint was created in UTC.
  final pulumi.Input<String>? createTime;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
  /// Settings for the endpoint.
  /// Structure is documented below.
  final pulumi.Input<FirewallEndpointEndpointSettings>? endpointSettings;
  /// A map of key/value label pairs to assign to the resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location (zone) of the firewall endpoint.
  final pulumi.Input<String>? location;
  /// The name of the firewall endpoint resource.
  final pulumi.Input<String>? name;
  /// The name of the parent this firewall endpoint belongs to.
  /// Format: organizations/{organization_id}.
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
  /// [billingProjectId] Project to bill on endpoint uptime usage.
  /// [createTime] Time the firewall endpoint was created in UTC.
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
  FirewallEndpointState({
    this.associatedNetworks,
    this.billingProjectId,
    this.createTime,
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
      associatedNetworks: map['associatedNetworks'] == null ? null : ((map['associatedNetworks']! as List).cast<String>()).input(),
      billingProjectId: map['billingProjectId'] == null ? null : (map['billingProjectId']! as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
      effectiveLabels: map['effectiveLabels'] == null ? null : ((map['effectiveLabels']! as Map).cast<String, String>()).input(),
      endpointSettings: map['endpointSettings'] == null ? null : (FirewallEndpointEndpointSettings.fromMap((map['endpointSettings']! as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      parent: map['parent'] == null ? null : (map['parent']! as String).input(),
      pulumiLabels: map['pulumiLabels'] == null ? null : ((map['pulumiLabels']! as Map).cast<String, String>()).input(),
      reconciling: map['reconciling'] == null ? null : (map['reconciling']! as bool).input(),
      selfLink: map['selfLink'] == null ? null : (map['selfLink']! as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      updateTime: map['updateTime'] == null ? null : (map['updateTime']! as String).input(),
    );
  }
}


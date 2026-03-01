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
    pulumi.Output<List<String>>? associatedNetworks,
    pulumi.Output<String>? billingProjectId,
    pulumi.Output<String>? createTime,
    pulumi.Output<Map<String, String>>? effectiveLabels,
    pulumi.Output<FirewallEndpointEndpointSettings>? endpointSettings,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? parent,
    pulumi.Output<Map<String, String>>? pulumiLabels,
    pulumi.Output<bool>? reconciling,
    pulumi.Output<String>? selfLink,
    pulumi.Output<String>? state,
    pulumi.Output<String>? updateTime,
  }) :
      associatedNetworks = pulumi.Input.asOptionalInput<List<String>>(associatedNetworks),
      billingProjectId = pulumi.Input.asOptionalInput<String>(billingProjectId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      effectiveLabels = pulumi.Input.asOptionalInput<Map<String, String>>(effectiveLabels),
      endpointSettings = pulumi.Input.asOptionalInput<FirewallEndpointEndpointSettings>(endpointSettings),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      parent = pulumi.Input.asOptionalInput<String>(parent),
      pulumiLabels = pulumi.Input.asOptionalInput<Map<String, String>>(pulumiLabels),
      reconciling = pulumi.Input.asOptionalInput<bool>(reconciling),
      selfLink = pulumi.Input.asOptionalInput<String>(selfLink),
      state = pulumi.Input.asOptionalInput<String>(state),
      updateTime = pulumi.Input.asOptionalInput<String>(updateTime);

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
      associatedNetworks: map['associatedNetworks'] == null ? null : pulumi.Output.create<List<String>>((map['associatedNetworks'] as List).cast<String>()),
      billingProjectId: map['billingProjectId'] == null ? null : pulumi.Output.create<String>(map['billingProjectId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      effectiveLabels: map['effectiveLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['effectiveLabels'] as Map).cast<String, String>()),
      endpointSettings: map['endpointSettings'] == null ? null : pulumi.Output.create<FirewallEndpointEndpointSettings>(FirewallEndpointEndpointSettings.fromMap((map['endpointSettings'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parent: map['parent'] == null ? null : pulumi.Output.create<String>(map['parent'] as String),
      pulumiLabels: map['pulumiLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['pulumiLabels'] as Map).cast<String, String>()),
      reconciling: map['reconciling'] == null ? null : pulumi.Output.create<bool>(map['reconciling'] as bool),
      selfLink: map['selfLink'] == null ? null : pulumi.Output.create<String>(map['selfLink'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
      updateTime: map['updateTime'] == null ? null : pulumi.Output.create<String>(map['updateTime'] as String),
    );
  }
}


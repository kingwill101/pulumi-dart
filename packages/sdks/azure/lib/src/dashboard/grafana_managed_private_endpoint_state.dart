// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering GrafanaManagedPrivateEndpoint resources.
class GrafanaManagedPrivateEndpointState {
  /// The id of the associated managed Grafana. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? grafanaId;
  /// Specifies a list of private link group IDs. The value of this will depend on the private link resource to which you are connecting. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<List<String>>? groupIds;
  /// The Azure Region where the Dashboard Grafana Managed Private Endpoint should exist. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Dashboard Grafana Managed Private Endpoint. Must be between 2 and 20 alphanumeric characters or dashes, must begin with letter and end with a letter or number. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? name;
  /// The ID of the resource to which this Dashboard Grafana Managed Private Endpoint will connect. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? privateLinkResourceId;
  /// The region in which to create the private link. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? privateLinkResourceRegion;
  /// A domain name for this endpoint to be used within Grafana. Must be just a domain, without schema, and with at least three parts.
  final pulumi.Input<String>? privateLinkServiceUrl;
  /// A message to provide in the request which will be seen by approvers.
  final pulumi.Input<String>? requestMessage;
  /// A mapping of tags which should be assigned to the Dashboard Grafana Managed Private Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GrafanaManagedPrivateEndpointState].
  /// [grafanaId] The id of the associated managed Grafana. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [groupIds] Specifies a list of private link group IDs. The value of this will depend on the private link resource to which you are connecting. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [location] The Azure Region where the Dashboard Grafana Managed Private Endpoint should exist. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [name] The name which should be used for this Dashboard Grafana Managed Private Endpoint. Must be between 2 and 20 alphanumeric characters or dashes, must begin with letter and end with a letter or number. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [privateLinkResourceId] The ID of the resource to which this Dashboard Grafana Managed Private Endpoint will connect. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [privateLinkResourceRegion] The region in which to create the private link. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [privateLinkServiceUrl] A domain name for this endpoint to be used within Grafana. Must be just a domain, without schema, and with at least three parts.
  /// [requestMessage] A message to provide in the request which will be seen by approvers.
  /// [tags] A mapping of tags which should be assigned to the Dashboard Grafana Managed Private Endpoint.
  GrafanaManagedPrivateEndpointState({
    pulumi.Output<String>? grafanaId,
    pulumi.Output<List<String>>? groupIds,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? privateLinkResourceId,
    pulumi.Output<String>? privateLinkResourceRegion,
    pulumi.Output<String>? privateLinkServiceUrl,
    pulumi.Output<String>? requestMessage,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      grafanaId = pulumi.Input.asOptionalInput<String>(grafanaId),
      groupIds = pulumi.Input.asOptionalInput<List<String>>(groupIds),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      privateLinkResourceId = pulumi.Input.asOptionalInput<String>(privateLinkResourceId),
      privateLinkResourceRegion = pulumi.Input.asOptionalInput<String>(privateLinkResourceRegion),
      privateLinkServiceUrl = pulumi.Input.asOptionalInput<String>(privateLinkServiceUrl),
      requestMessage = pulumi.Input.asOptionalInput<String>(requestMessage),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grafanaId': ?grafanaId,
      'groupIds': ?groupIds,
      'location': ?location,
      'name': ?name,
      'privateLinkResourceId': ?privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'privateLinkServiceUrl': ?privateLinkServiceUrl,
      'requestMessage': ?requestMessage,
      'tags': ?tags,
    };
  }

  factory GrafanaManagedPrivateEndpointState.fromMap(Map<String, dynamic> map) {
    return GrafanaManagedPrivateEndpointState(
      grafanaId: map['grafanaId'] == null ? null : pulumi.Output.create<String>(map['grafanaId'] as String),
      groupIds: map['groupIds'] == null ? null : pulumi.Output.create<List<String>>((map['groupIds'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      privateLinkResourceId: map['privateLinkResourceId'] == null ? null : pulumi.Output.create<String>(map['privateLinkResourceId'] as String),
      privateLinkResourceRegion: map['privateLinkResourceRegion'] == null ? null : pulumi.Output.create<String>(map['privateLinkResourceRegion'] as String),
      privateLinkServiceUrl: map['privateLinkServiceUrl'] == null ? null : pulumi.Output.create<String>(map['privateLinkServiceUrl'] as String),
      requestMessage: map['requestMessage'] == null ? null : pulumi.Output.create<String>(map['requestMessage'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


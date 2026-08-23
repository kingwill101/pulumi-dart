// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dashboard_grafana_managed_private_endpoint_grafana_managed_private_endpoint_args_doc}
/// The set of arguments for GrafanaManagedPrivateEndpoint.
/// {@endtemplate}
/// {@macro pulumi_dashboard_grafana_managed_private_endpoint_grafana_managed_private_endpoint_args_doc}
class GrafanaManagedPrivateEndpointArgs {
  /// The id of the associated managed Grafana. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String> grafanaId;
  /// Specifies a list of private link group IDs. The value of this will depend on the private link resource to which you are connecting. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<List<String>>? groupIds;
  /// The Azure Region where the Dashboard Grafana Managed Private Endpoint should exist. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Dashboard Grafana Managed Private Endpoint. Must be between 2 and 20 alphanumeric characters or dashes, must begin with letter and end with a letter or number. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? name;
  /// The ID of the resource to which this Dashboard Grafana Managed Private Endpoint will connect. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String> privateLinkResourceId;
  /// The region in which to create the private link. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  final pulumi.Input<String>? privateLinkResourceRegion;
  /// A domain name for this endpoint to be used within Grafana. Must be just a domain, without schema, and with at least three parts.
  final pulumi.Input<String>? privateLinkServiceUrl;
  /// A message to provide in the request which will be seen by approvers.
  final pulumi.Input<String>? requestMessage;
  /// A mapping of tags which should be assigned to the Dashboard Grafana Managed Private Endpoint.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GrafanaManagedPrivateEndpointArgs].
  /// [grafanaId] The id of the associated managed Grafana. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [groupIds] Specifies a list of private link group IDs. The value of this will depend on the private link resource to which you are connecting. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [location] The Azure Region where the Dashboard Grafana Managed Private Endpoint should exist. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [name] The name which should be used for this Dashboard Grafana Managed Private Endpoint. Must be between 2 and 20 alphanumeric characters or dashes, must begin with letter and end with a letter or number. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [privateLinkResourceId] The ID of the resource to which this Dashboard Grafana Managed Private Endpoint will connect. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [privateLinkResourceRegion] The region in which to create the private link. Changing this forces a new Dashboard Grafana Managed Private Endpoint to be created.
  /// [privateLinkServiceUrl] A domain name for this endpoint to be used within Grafana. Must be just a domain, without schema, and with at least three parts.
  /// [requestMessage] A message to provide in the request which will be seen by approvers.
  /// [tags] A mapping of tags which should be assigned to the Dashboard Grafana Managed Private Endpoint.
  const GrafanaManagedPrivateEndpointArgs({
    required this.grafanaId,
    this.groupIds,
    this.location,
    this.name,
    required this.privateLinkResourceId,
    this.privateLinkResourceRegion,
    this.privateLinkServiceUrl,
    this.requestMessage,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'grafanaId': grafanaId,
      'groupIds': ?groupIds,
      'location': ?location,
      'name': ?name,
      'privateLinkResourceId': privateLinkResourceId,
      'privateLinkResourceRegion': ?privateLinkResourceRegion,
      'privateLinkServiceUrl': ?privateLinkServiceUrl,
      'requestMessage': ?requestMessage,
      'tags': ?tags,
    };
  }

  factory GrafanaManagedPrivateEndpointArgs.fromMap(Map<String, dynamic> map) {
    return GrafanaManagedPrivateEndpointArgs(
      grafanaId: pulumi.Input.fromValue(map['grafanaId'] as String),
      groupIds: (() { final guardedValue = map['groupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkResourceId: pulumi.Input.fromValue(map['privateLinkResourceId'] as String),
      privateLinkResourceRegion: (() { final guardedValue = map['privateLinkResourceRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      privateLinkServiceUrl: (() { final guardedValue = map['privateLinkServiceUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestMessage: (() { final guardedValue = map['requestMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

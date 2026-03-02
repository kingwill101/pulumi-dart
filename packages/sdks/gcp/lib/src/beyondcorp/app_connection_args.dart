// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_application_endpoint.dart';
import 'app_connection_gateway.dart';

/// {@template pulumi_beyondcorp_app_connection_app_connection_args_doc}
/// The set of arguments for AppConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_app_connection_app_connection_args_doc}
class AppConnectionArgs {
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionApplicationEndpoint> applicationEndpoint;
  /// List of AppConnectors that are authorised to be associated with this AppConnection
  final pulumi.Input<List<String>>? connectors;
  /// An arbitrary user-provided name for the AppConnection.
  final pulumi.Input<String>? displayName;
  /// Gateway used by the AppConnection.
  /// Structure is documented below.
  final pulumi.Input<AppConnectionGateway>? gateway;
  /// Resource labels to represent user provided metadata.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// ID of the AppConnection.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region of the AppConnection.
  final pulumi.Input<String>? region;
  /// The type of network connectivity used by the AppConnection. Refer
  /// to https://cloud.google.com/beyondcorp/docs/reference/rest/v1/projects.locations.appConnections#type
  /// for a list of possible values.
  final pulumi.Input<String>? type;

  /// Creates a new [AppConnectionArgs].
  /// [applicationEndpoint] Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// [connectors] List of AppConnectors that are authorised to be associated with this AppConnection
  /// [displayName] An arbitrary user-provided name for the AppConnection.
  /// [gateway] Gateway used by the AppConnection.
  /// [labels] Resource labels to represent user provided metadata.
  /// [name] ID of the AppConnection.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] The region of the AppConnection.
  /// [type] The type of network connectivity used by the AppConnection. Refer
  AppConnectionArgs({
    required this.applicationEndpoint,
    this.connectors,
    this.displayName,
    this.gateway,
    this.labels,
    this.name,
    this.project,
    this.region,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationEndpoint': pulumi.Input.mapInputValue<AppConnectionApplicationEndpoint, Map<String, dynamic>>(applicationEndpoint, (value) => value.toMap()),
      'connectors': ?connectors,
      'displayName': ?displayName,
      'gateway': ?pulumi.Input.mapOptionalInputValue<AppConnectionGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'region': ?region,
      'type': ?type,
    };
  }

  factory AppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectionArgs(
      applicationEndpoint: (AppConnectionApplicationEndpoint.fromMap((map['applicationEndpoint'] as Map).cast<String, dynamic>())).input(),
      connectors: map['connectors'] == null ? null : ((map['connectors'] as List).cast<String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      gateway: map['gateway'] == null ? null : (AppConnectionGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}


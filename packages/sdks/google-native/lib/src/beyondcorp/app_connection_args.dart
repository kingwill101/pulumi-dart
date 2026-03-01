// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_connection_type.dart';
import 'google_cloud_beyondcorp_appconnections_v1_app_connection_application_endpoint.dart';
import 'google_cloud_beyondcorp_appconnections_v1_app_connection_gateway.dart';

/// {@template pulumi_beyondcorp_v1_app_connection_args_doc}
/// The set of arguments for AppConnection.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_app_connection_args_doc}
class AppConnectionArgs {
  /// Optional. User-settable AppConnection resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? appConnectionId;
  /// Address of the remote application endpoint for the BeyondCorp AppConnection.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint> applicationEndpoint;
  /// Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this AppConnection.
  final pulumi.Input<List<String>>? connectors;
  /// Optional. An arbitrary user-provided name for the AppConnection. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Gateway used by the AppConnection.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway>? gateway;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unique resource name of the AppConnection. The name is ignored when creating a AppConnection.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The type of network connectivity used by the AppConnection.
  final pulumi.Input<AppConnectionType> type;

  /// Creates a new [AppConnectionArgs].
  /// [appConnectionId] Optional. User-settable AppConnection resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [applicationEndpoint] Address of the remote application endpoint for the BeyondCorp AppConnection.
  /// [connectors] Optional. List of [google.cloud.beyondcorp.v1main.Connector.name] that are authorised to be associated with this AppConnection.
  /// [displayName] Optional. An arbitrary user-provided name for the AppConnection. Cannot exceed 64 characters.
  /// [gateway] Optional. Gateway used by the AppConnection.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the AppConnection. The name is ignored when creating a AppConnection.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [type] The type of network connectivity used by the AppConnection.
  AppConnectionArgs({
    pulumi.Output<String>? appConnectionId,
    required pulumi.Output<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint> applicationEndpoint,
    pulumi.Output<List<String>>? connectors,
    pulumi.Output<String>? displayName,
    pulumi.Output<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway>? gateway,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? requestId,
    required pulumi.Output<AppConnectionType> type,
  }) :
      appConnectionId = pulumi.Input.asOptionalInput<String>(appConnectionId),
      applicationEndpoint = pulumi.Input.asInput<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint>(applicationEndpoint),
      connectors = pulumi.Input.asOptionalInput<List<String>>(connectors),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      gateway = pulumi.Input.asOptionalInput<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway>(gateway),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      type = pulumi.Input.asInput<AppConnectionType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectionId': ?appConnectionId,
      'applicationEndpoint': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint, Map<String, dynamic>>(applicationEndpoint, (value) => value.toMap()),
      'connectors': ?connectors,
      'displayName': ?displayName,
      'gateway': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway, Map<String, dynamic>>(gateway, (value) => value.toMap()),
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'requestId': ?requestId,
      'type': pulumi.Input.mapInputValue<AppConnectionType, String>(type, (value) => value.value),
    };
  }

  factory AppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectionArgs(
      appConnectionId: map['appConnectionId'] == null ? null : pulumi.Output.create<String>(map['appConnectionId'] as String),
      applicationEndpoint: pulumi.Output.create<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint>(GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.fromMap((map['applicationEndpoint'] as Map).cast<String, dynamic>())),
      connectors: map['connectors'] == null ? null : pulumi.Output.create<List<String>>((map['connectors'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      gateway: map['gateway'] == null ? null : pulumi.Output.create<GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway>(GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway.fromMap((map['gateway'] as Map).cast<String, dynamic>())),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      requestId: map['requestId'] == null ? null : pulumi.Output.create<String>(map['requestId'] as String),
      type: pulumi.Output.create<AppConnectionType>(AppConnectionType.fromValue(map['type'] as String)),
    );
  }
}


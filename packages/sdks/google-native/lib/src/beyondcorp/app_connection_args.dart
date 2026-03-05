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
    this.appConnectionId,
    required this.applicationEndpoint,
    this.connectors,
    this.displayName,
    this.gateway,
    this.labels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.type,
  });

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
      'type': pulumi.Input.mapInputValue<AppConnectionType, String>(type, (value) => value.wireValue),
    };
  }

  factory AppConnectionArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectionArgs(
      appConnectionId: (() { final guardedValue = map['appConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      applicationEndpoint: pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectionsV1AppConnectionApplicationEndpoint.fromMap((map['applicationEndpoint']! as Map).cast<String, dynamic>())),
      connectors: (() { final guardedValue = map['connectors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gateway: (() { final guardedValue = map['gateway']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectionsV1AppConnectionGateway.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(AppConnectionType.fromValue(map['type']! as String)),
    );
  }
}


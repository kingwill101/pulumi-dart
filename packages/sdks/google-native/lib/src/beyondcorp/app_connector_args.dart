// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1_app_connector_principal_info.dart';
import 'google_cloud_beyondcorp_appconnectors_v1_resource_info.dart';

/// {@template pulumi_beyondcorp_v1_app_connector_args_doc}
/// The set of arguments for AppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1_app_connector_args_doc}
class AppConnectorArgs {
  /// Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  final pulumi.Input<String>? appConnectorId;
  /// Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters.
  final pulumi.Input<String>? displayName;
  /// Optional. Resource labels to represent user provided metadata.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.
  final pulumi.Input<String>? name;
  /// Principal information about the Identity of the AppConnector.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo> principalInfo;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. Resource info of the connector.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo>? resourceInfo;

  /// Creates a new [AppConnectorArgs].
  /// [appConnectorId] Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [displayName] Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.
  /// [principalInfo] Principal information about the Identity of the AppConnector.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [resourceInfo] Optional. Resource info of the connector.
  AppConnectorArgs({
    this.appConnectorId,
    this.displayName,
    this.labels,
    this.location,
    this.name,
    required this.principalInfo,
    this.project,
    this.requestId,
    this.resourceInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appConnectorId': ?appConnectorId,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'principalInfo': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo, Map<String, dynamic>>(principalInfo, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'resourceInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo, Map<String, dynamic>>(resourceInfo, (value) => value.toMap()),
    };
  }

  factory AppConnectorArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectorArgs(
      appConnectorId: map['appConnectorId'] == null ? null : (map['appConnectorId'] as String).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      principalInfo: (GoogleCloudBeyondcorpAppconnectorsV1AppConnectorPrincipalInfo.fromMap((map['principalInfo'] as Map).cast<String, dynamic>())).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId'] as String).input(),
      resourceInfo: map['resourceInfo'] == null ? null : (GoogleCloudBeyondcorpAppconnectorsV1ResourceInfo.fromMap((map['resourceInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


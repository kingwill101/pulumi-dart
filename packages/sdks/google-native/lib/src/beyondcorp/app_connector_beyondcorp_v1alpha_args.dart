// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_beyondcorp_appconnectors_v1alpha_app_connector_principal_info.dart';
import 'google_cloud_beyondcorp_appconnectors_v1alpha_resource_info.dart';

/// {@template pulumi_beyondcorp_v1alpha_app_connector_beyondcorp_v1alpha_args_doc}
/// The set of arguments for AppConnector.
/// {@endtemplate}
/// {@macro pulumi_beyondcorp_v1alpha_app_connector_beyondcorp_v1alpha_args_doc}
class AppConnectorBeyondcorpV1alphaArgs {
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
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo> principalInfo;
  final pulumi.Input<String>? project;
  /// Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Optional. Resource info of the connector.
  final pulumi.Input<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo>? resourceInfo;

  /// Creates a new [AppConnectorBeyondcorpV1alphaArgs].
  /// [appConnectorId] Optional. User-settable AppConnector resource ID. * Must start with a letter. * Must contain between 4-63 characters from `/a-z-/`. * Must end with a number or a letter.
  /// [displayName] Optional. An arbitrary user-provided name for the AppConnector. Cannot exceed 64 characters.
  /// [labels] Optional. Resource labels to represent user provided metadata.
  /// [location] Optional.
  /// [name] Unique resource name of the AppConnector. The name is ignored when creating a AppConnector.
  /// [principalInfo] Principal information about the Identity of the AppConnector.
  /// [project] Optional.
  /// [requestId] Optional. An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [resourceInfo] Optional. Resource info of the connector.
  const AppConnectorBeyondcorpV1alphaArgs({
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
      'principalInfo': pulumi.Input.mapInputValue<GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo, Map<String, dynamic>>(principalInfo, (value) => value.toMap()),
      'project': ?project,
      'requestId': ?requestId,
      'resourceInfo': ?pulumi.Input.mapOptionalInputValue<GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo, Map<String, dynamic>>(resourceInfo, (value) => value.toMap()),
    };
  }

  factory AppConnectorBeyondcorpV1alphaArgs.fromMap(Map<String, dynamic> map) {
    return AppConnectorBeyondcorpV1alphaArgs(
      appConnectorId: (() { final guardedValue = map['appConnectorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      principalInfo: pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectorsV1alphaAppConnectorPrincipalInfo.fromMap((map['principalInfo']! as Map).cast<String, dynamic>())),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceInfo: (() { final guardedValue = map['resourceInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudBeyondcorpAppconnectorsV1alphaResourceInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


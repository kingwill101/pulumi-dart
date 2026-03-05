// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vmmigration_v1alpha1_datacenter_connector_vmmigration_v1alpha1_args_doc}
/// The set of arguments for DatacenterConnector.
/// {@endtemplate}
/// {@macro pulumi_vmmigration_v1alpha1_datacenter_connector_vmmigration_v1alpha1_args_doc}
class DatacenterConnectorVmmigrationV1alpha1Args {
  /// Required. The datacenterConnector identifier.
  final pulumi.Input<String> datacenterConnectorId;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  final pulumi.Input<String>? registrationId;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// The service account to use in the connector when communicating with the cloud.
  final pulumi.Input<String>? serviceAccount;
  final pulumi.Input<String> sourceId;
  /// The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  final pulumi.Input<String>? version;

  /// Creates a new [DatacenterConnectorVmmigrationV1alpha1Args].
  /// [datacenterConnectorId] Required. The datacenterConnector identifier.
  /// [location] Optional.
  /// [project] Optional.
  /// [registrationId] Immutable. A unique key for this connector. This key is internal to the OVA connector and is supplied with its creation during the registration process and can not be modified.
  /// [requestId] A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [serviceAccount] The service account to use in the connector when communicating with the cloud.
  /// [sourceId] Required.
  /// [version] The version running in the DatacenterConnector. This is supplied by the OVA connector during the registration process and can not be modified.
  DatacenterConnectorVmmigrationV1alpha1Args({
    required this.datacenterConnectorId,
    this.location,
    this.project,
    this.registrationId,
    this.requestId,
    this.serviceAccount,
    required this.sourceId,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenterConnectorId': datacenterConnectorId,
      'location': ?location,
      'project': ?project,
      'registrationId': ?registrationId,
      'requestId': ?requestId,
      'serviceAccount': ?serviceAccount,
      'sourceId': sourceId,
      'version': ?version,
    };
  }

  factory DatacenterConnectorVmmigrationV1alpha1Args.fromMap(Map<String, dynamic> map) {
    return DatacenterConnectorVmmigrationV1alpha1Args(
      datacenterConnectorId: pulumi.Input.fromValue(map['datacenterConnectorId'] as String),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationId: (() { final guardedValue = map['registrationId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestId: (() { final guardedValue = map['requestId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAccount: (() { final guardedValue = map['serviceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceId: pulumi.Input.fromValue(map['sourceId'] as String),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudVmClustersCloudVmClusterIdentityConnector {
  /// The connection state of the identity connector.
  /// Possible values:
  /// CONNECTION_STATE_UNSPECIFIED
  /// CONNECTED
  /// PARTIALLY_CONNECTED
  /// DISCONNECTED
  /// UNKNOWN
  final pulumi.Input<String> connectionState;
  /// A google managed service account on which customers can grant roles to access resources in the customer project.
  final pulumi.Input<String> serviceAgentEmail;

  /// Creates a new [GetCloudVmClustersCloudVmClusterIdentityConnector].
  /// [connectionState] The connection state of the identity connector.
  /// [serviceAgentEmail] A google managed service account on which customers can grant roles to access resources in the customer project.
  const GetCloudVmClustersCloudVmClusterIdentityConnector({
    required this.connectionState,
    required this.serviceAgentEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': connectionState,
      'serviceAgentEmail': serviceAgentEmail,
    };
  }

  factory GetCloudVmClustersCloudVmClusterIdentityConnector.fromMap(Map<String, dynamic> map) {
    return GetCloudVmClustersCloudVmClusterIdentityConnector(
      connectionState: pulumi.Input.fromValue(map['connectionState'] as String),
      serviceAgentEmail: pulumi.Input.fromValue(map['serviceAgentEmail'] as String),
    );
  }
}

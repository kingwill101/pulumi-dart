// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CloudVmClusterIdentityConnector {
  /// (Output)
  /// The connection state of the identity connector.
  /// Possible values:
  /// CONNECTION_STATE_UNSPECIFIED
  /// CONNECTED
  /// PARTIALLY_CONNECTED
  /// DISCONNECTED
  /// UNKNOWN
  final pulumi.Input<String?>? connectionState;
  /// (Output)
  /// A google managed service account on which customers can grant roles to access resources in the customer project.
  final pulumi.Input<String?>? serviceAgentEmail;

  /// Creates a new [CloudVmClusterIdentityConnector].
  /// [connectionState] (Output)
  /// [serviceAgentEmail] (Output)
  const CloudVmClusterIdentityConnector({
    this.connectionState,
    this.serviceAgentEmail,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionState': ?connectionState,
      'serviceAgentEmail': ?serviceAgentEmail,
    };
  }

  factory CloudVmClusterIdentityConnector.fromMap(Map<String, dynamic> map) {
    return CloudVmClusterIdentityConnector(
      connectionState: (() { final guardedValue = map['connectionState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceAgentEmail: (() { final guardedValue = map['serviceAgentEmail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

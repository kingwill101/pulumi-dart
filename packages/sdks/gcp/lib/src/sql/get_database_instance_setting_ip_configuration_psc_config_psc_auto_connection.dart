// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection {
  /// The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. The consumer host project of this network might be different from the consumer service project.
  final pulumi.Input<String> consumerNetwork;
  /// The connection policy status of the consumer network.
  final pulumi.Input<String> consumerNetworkStatus;
  /// The project ID of consumer service project of this consumer endpoint.
  final pulumi.Input<String> consumerServiceProjectId;
  /// The status of the automated DNS provisioning for the instance.
  final pulumi.Input<String> instanceAutoDnsStatus;
  /// The IP address of the consumer endpoint.
  final pulumi.Input<String> ipAddress;
  /// The service connection policy created for the auto connection.
  final pulumi.Input<String> serviceConnectionPolicy;
  /// The result of the service connection policy creation.
  final pulumi.Input<String> serviceConnectionPolicyCreationResult;
  /// The connection status of the consumer endpoint.
  final pulumi.Input<String> status;
  /// The status of the automated DNS provisioning for the write endpoint.
  final pulumi.Input<String> writeEndpointAutoDnsStatus;

  /// Creates a new [GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection].
  /// [consumerNetwork] The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. The consumer host project of this network might be different from the consumer service project.
  /// [consumerNetworkStatus] The connection policy status of the consumer network.
  /// [consumerServiceProjectId] The project ID of consumer service project of this consumer endpoint.
  /// [instanceAutoDnsStatus] The status of the automated DNS provisioning for the instance.
  /// [ipAddress] The IP address of the consumer endpoint.
  /// [serviceConnectionPolicy] The service connection policy created for the auto connection.
  /// [serviceConnectionPolicyCreationResult] The result of the service connection policy creation.
  /// [status] The connection status of the consumer endpoint.
  /// [writeEndpointAutoDnsStatus] The status of the automated DNS provisioning for the write endpoint.
  const GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection({
    required this.consumerNetwork,
    required this.consumerNetworkStatus,
    required this.consumerServiceProjectId,
    required this.instanceAutoDnsStatus,
    required this.ipAddress,
    required this.serviceConnectionPolicy,
    required this.serviceConnectionPolicyCreationResult,
    required this.status,
    required this.writeEndpointAutoDnsStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'consumerNetworkStatus': consumerNetworkStatus,
      'consumerServiceProjectId': consumerServiceProjectId,
      'instanceAutoDnsStatus': instanceAutoDnsStatus,
      'ipAddress': ipAddress,
      'serviceConnectionPolicy': serviceConnectionPolicy,
      'serviceConnectionPolicyCreationResult': serviceConnectionPolicyCreationResult,
      'status': status,
      'writeEndpointAutoDnsStatus': writeEndpointAutoDnsStatus,
    };
  }

  factory GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstanceSettingIpConfigurationPscConfigPscAutoConnection(
      consumerNetwork: pulumi.Input.fromValue(map['consumerNetwork'] as String),
      consumerNetworkStatus: pulumi.Input.fromValue(map['consumerNetworkStatus'] as String),
      consumerServiceProjectId: pulumi.Input.fromValue(map['consumerServiceProjectId'] as String),
      instanceAutoDnsStatus: pulumi.Input.fromValue(map['instanceAutoDnsStatus'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      serviceConnectionPolicy: pulumi.Input.fromValue(map['serviceConnectionPolicy'] as String),
      serviceConnectionPolicyCreationResult: pulumi.Input.fromValue(map['serviceConnectionPolicyCreationResult'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      writeEndpointAutoDnsStatus: pulumi.Input.fromValue(map['writeEndpointAutoDnsStatus'] as String),
    );
  }
}

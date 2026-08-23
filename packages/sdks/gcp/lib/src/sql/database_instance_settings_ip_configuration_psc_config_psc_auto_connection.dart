// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection {
  /// "The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. For example, `projects/project1/global/networks/network1`. The consumer host project of this network might be different from the consumer service project."
  final pulumi.Input<String> consumerNetwork;
  /// (Output) The connection policy status of the consumer network.
  final pulumi.Input<String>? consumerNetworkStatus;
  /// The project ID of consumer service project of this consumer endpoint.
  final pulumi.Input<String>? consumerServiceProjectId;
  /// (Output) The status of the automated DNS provisioning for the instance.
  final pulumi.Input<String>? instanceAutoDnsStatus;
  /// (Output) The IP address of the consumer endpoint.
  final pulumi.Input<String>? ipAddress;
  /// (Output) The service connection policy created for the auto connection.
  final pulumi.Input<String>? serviceConnectionPolicy;
  /// (Output) The result of the service connection policy creation.
  final pulumi.Input<String>? serviceConnectionPolicyCreationResult;
  /// (Output) The connection status of the consumer endpoint.
  final pulumi.Input<String>? status;
  /// (Output) The status of the automated DNS provisioning for the write endpoint.
  final pulumi.Input<String>? writeEndpointAutoDnsStatus;

  /// Creates a new [DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection].
  /// [consumerNetwork] "The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. For example, `projects/project1/global/networks/network1`. The consumer host project of this network might be different from the consumer service project."
  /// [consumerNetworkStatus] (Output) The connection policy status of the consumer network.
  /// [consumerServiceProjectId] The project ID of consumer service project of this consumer endpoint.
  /// [instanceAutoDnsStatus] (Output) The status of the automated DNS provisioning for the instance.
  /// [ipAddress] (Output) The IP address of the consumer endpoint.
  /// [serviceConnectionPolicy] (Output) The service connection policy created for the auto connection.
  /// [serviceConnectionPolicyCreationResult] (Output) The result of the service connection policy creation.
  /// [status] (Output) The connection status of the consumer endpoint.
  /// [writeEndpointAutoDnsStatus] (Output) The status of the automated DNS provisioning for the write endpoint.
  const DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection({
    required this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerServiceProjectId,
    this.instanceAutoDnsStatus,
    this.ipAddress,
    this.serviceConnectionPolicy,
    this.serviceConnectionPolicyCreationResult,
    this.status,
    this.writeEndpointAutoDnsStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'consumerNetworkStatus': ?consumerNetworkStatus,
      'consumerServiceProjectId': ?consumerServiceProjectId,
      'instanceAutoDnsStatus': ?instanceAutoDnsStatus,
      'ipAddress': ?ipAddress,
      'serviceConnectionPolicy': ?serviceConnectionPolicy,
      'serviceConnectionPolicyCreationResult': ?serviceConnectionPolicyCreationResult,
      'status': ?status,
      'writeEndpointAutoDnsStatus': ?writeEndpointAutoDnsStatus,
    };
  }

  factory DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection(
      consumerNetwork: pulumi.Input.fromValue(map['consumerNetwork'] as String),
      consumerNetworkStatus: (() { final guardedValue = map['consumerNetworkStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerServiceProjectId: (() { final guardedValue = map['consumerServiceProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceAutoDnsStatus: (() { final guardedValue = map['instanceAutoDnsStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConnectionPolicy: (() { final guardedValue = map['serviceConnectionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceConnectionPolicyCreationResult: (() { final guardedValue = map['serviceConnectionPolicyCreationResult']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      writeEndpointAutoDnsStatus: (() { final guardedValue = map['writeEndpointAutoDnsStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

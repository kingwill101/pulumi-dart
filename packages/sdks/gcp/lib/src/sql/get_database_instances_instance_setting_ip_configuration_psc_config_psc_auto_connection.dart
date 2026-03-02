// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection {
  /// The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. The consumer host project of this network might be different from the consumer service project.
  final pulumi.Input<String> consumerNetwork;
  /// The connection policy status of the consumer network.
  final pulumi.Input<String> consumerNetworkStatus;
  /// The project ID of consumer service project of this consumer endpoint.
  final pulumi.Input<String> consumerServiceProjectId;
  /// The IP address of the consumer endpoint.
  final pulumi.Input<String> ipAddress;
  /// The connection status of the consumer endpoint.
  final pulumi.Input<String> status;

  /// Creates a new [GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection].
  /// [consumerNetwork] The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. The consumer host project of this network might be different from the consumer service project.
  /// [consumerNetworkStatus] The connection policy status of the consumer network.
  /// [consumerServiceProjectId] The project ID of consumer service project of this consumer endpoint.
  /// [ipAddress] The IP address of the consumer endpoint.
  /// [status] The connection status of the consumer endpoint.
  GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection({
    required this.consumerNetwork,
    required this.consumerNetworkStatus,
    required this.consumerServiceProjectId,
    required this.ipAddress,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'consumerNetworkStatus': consumerNetworkStatus,
      'consumerServiceProjectId': consumerServiceProjectId,
      'ipAddress': ipAddress,
      'status': status,
    };
  }

  factory GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceSettingIpConfigurationPscConfigPscAutoConnection(
      consumerNetwork: (map['consumerNetwork'] as String).input(),
      consumerNetworkStatus: (map['consumerNetworkStatus'] as String).input(),
      consumerServiceProjectId: (map['consumerServiceProjectId'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}


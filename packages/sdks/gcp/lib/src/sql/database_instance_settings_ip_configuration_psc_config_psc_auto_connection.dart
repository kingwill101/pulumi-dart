// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection {
  /// "The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. For example, `projects/project1/global/networks/network1`. The consumer host project of this network might be different from the consumer service project."
  final pulumi.Input<String> consumerNetwork;
  /// (Output) The connection policy status of the consumer network.
  final pulumi.Input<String>? consumerNetworkStatus;
  /// The project ID of consumer service project of this consumer endpoint.
  final pulumi.Input<String>? consumerServiceProjectId;
  /// (Output) The IP address of the consumer endpoint.
  final pulumi.Input<String>? ipAddress;
  /// (Output) The connection status of the consumer endpoint.
  final pulumi.Input<String>? status;

  /// Creates a new [DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection].
  /// [consumerNetwork] "The consumer network of this consumer endpoint. This must be a resource path that includes both the host project and the network name. For example, `projects/project1/global/networks/network1`. The consumer host project of this network might be different from the consumer service project."
  /// [consumerNetworkStatus] (Output) The connection policy status of the consumer network.
  /// [consumerServiceProjectId] The project ID of consumer service project of this consumer endpoint.
  /// [ipAddress] (Output) The IP address of the consumer endpoint.
  /// [status] (Output) The connection status of the consumer endpoint.
  const DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection({
    required this.consumerNetwork,
    this.consumerNetworkStatus,
    this.consumerServiceProjectId,
    this.ipAddress,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumerNetwork': consumerNetwork,
      'consumerNetworkStatus': ?consumerNetworkStatus,
      'consumerServiceProjectId': ?consumerServiceProjectId,
      'ipAddress': ?ipAddress,
      'status': ?status,
    };
  }

  factory DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceSettingsIpConfigurationPscConfigPscAutoConnection(
      consumerNetwork: pulumi.Input.fromValue(map['consumerNetwork'] as String),
      consumerNetworkStatus: (() { final guardedValue = map['consumerNetworkStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerServiceProjectId: (() { final guardedValue = map['consumerServiceProjectId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipAddress: (() { final guardedValue = map['ipAddress']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


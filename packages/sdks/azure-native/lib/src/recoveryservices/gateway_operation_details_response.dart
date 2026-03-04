// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the gateway operation.
class GatewayOperationDetailsResponse {
  /// A value indicating the datastore collection.
  final pulumi.Input<List<String>> dataStores;

  /// A value indicating the ESXi host name.
  final pulumi.Input<String> hostName;

  /// A value indicating the progress percentage of gateway operation.
  final pulumi.Input<int> progressPercentage;

  /// A value indicating the state of gateway operation.
  final pulumi.Input<String> state;

  /// A value indicating the time elapsed for the operation in milliseconds.
  final pulumi.Input<double> timeElapsed;

  /// A value indicating the time remaining for the operation in milliseconds.
  final pulumi.Input<double> timeRemaining;

  /// A value indicating the upload speed in bytes per second.
  final pulumi.Input<double> uploadSpeed;

  /// A value indicating the VMware read throughput in bytes per second.
  final pulumi.Input<double> vmwareReadThroughput;

  /// Creates a new [GatewayOperationDetailsResponse].
  /// [dataStores] A value indicating the datastore collection.
  /// [hostName] A value indicating the ESXi host name.
  /// [progressPercentage] A value indicating the progress percentage of gateway operation.
  /// [state] A value indicating the state of gateway operation.
  /// [timeElapsed] A value indicating the time elapsed for the operation in milliseconds.
  /// [timeRemaining] A value indicating the time remaining for the operation in milliseconds.
  /// [uploadSpeed] A value indicating the upload speed in bytes per second.
  /// [vmwareReadThroughput] A value indicating the VMware read throughput in bytes per second.
  GatewayOperationDetailsResponse({
    required this.dataStores,
    required this.hostName,
    required this.progressPercentage,
    required this.state,
    required this.timeElapsed,
    required this.timeRemaining,
    required this.uploadSpeed,
    required this.vmwareReadThroughput,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataStores': dataStores,
      'hostName': hostName,
      'progressPercentage': progressPercentage,
      'state': state,
      'timeElapsed': timeElapsed,
      'timeRemaining': timeRemaining,
      'uploadSpeed': uploadSpeed,
      'vmwareReadThroughput': vmwareReadThroughput,
    };
  }

  factory GatewayOperationDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GatewayOperationDetailsResponse(
      dataStores: pulumi.Input.fromValue(
        (map['dataStores'] as List).cast<String>(),
      ),
      hostName: pulumi.Input.fromValue(map['hostName'] as String),
      progressPercentage: pulumi.Input.fromValue(
        map['progressPercentage'] as int,
      ),
      state: pulumi.Input.fromValue(map['state'] as String),
      timeElapsed: pulumi.Input.fromValue(map['timeElapsed'] as double),
      timeRemaining: pulumi.Input.fromValue(map['timeRemaining'] as double),
      uploadSpeed: pulumi.Input.fromValue(map['uploadSpeed'] as double),
      vmwareReadThroughput: pulumi.Input.fromValue(
        map['vmwareReadThroughput'] as double,
      ),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// Details of the gateway operation.
class GatewayOperationDetailsResponse {
  /// A value indicating the datastore collection.
  final List<String> dataStores;
  /// A value indicating the ESXi host name.
  final String hostName;
  /// A value indicating the progress percentage of gateway operation.
  final int progressPercentage;
  /// A value indicating the state of gateway operation.
  final String state;
  /// A value indicating the time elapsed for the operation in milliseconds.
  final double timeElapsed;
  /// A value indicating the time remaining for the operation in milliseconds.
  final double timeRemaining;
  /// A value indicating the upload speed in bytes per second.
  final double uploadSpeed;
  /// A value indicating the VMware read throughput in bytes per second.
  final double vmwareReadThroughput;

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
      dataStores: (map['dataStores'] as List).cast<String>(),
      hostName: map['hostName'] as String,
      progressPercentage: map['progressPercentage'] as int,
      state: map['state'] as String,
      timeElapsed: map['timeElapsed'] as double,
      timeRemaining: map['timeRemaining'] as double,
      uploadSpeed: map['uploadSpeed'] as double,
      vmwareReadThroughput: map['vmwareReadThroughput'] as double,
    );
  }
}


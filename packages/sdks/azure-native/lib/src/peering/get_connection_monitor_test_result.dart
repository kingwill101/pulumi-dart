// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnectionMonitorTest.
class GetConnectionMonitorTestResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The Connection Monitor test destination
  final String? destination;
  /// The Connection Monitor test destination port
  final int? destinationPort;
  /// The ID of the resource.
  final String id;
  /// The flag that indicates if the Connection Monitor test is successful or not.
  final bool isTestSuccessful;
  /// The name of the resource.
  final String name;
  /// The path representing the Connection Monitor test.
  final List<String> path;
  /// The provisioning state of the resource.
  final String provisioningState;
  /// The Connection Monitor test source agent
  final String? sourceAgent;
  /// The Connection Monitor test frequency in seconds
  final int? testFrequencyInSec;
  /// The type of the resource.
  final String type;

  /// Creates a new [GetConnectionMonitorTestResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [destination] The Connection Monitor test destination
  /// [destinationPort] The Connection Monitor test destination port
  /// [id] The ID of the resource.
  /// [isTestSuccessful] The flag that indicates if the Connection Monitor test is successful or not.
  /// [name] The name of the resource.
  /// [path] The path representing the Connection Monitor test.
  /// [provisioningState] The provisioning state of the resource.
  /// [sourceAgent] The Connection Monitor test source agent
  /// [testFrequencyInSec] The Connection Monitor test frequency in seconds
  /// [type] The type of the resource.
  GetConnectionMonitorTestResult({
    required this.azureApiVersion,
    this.destination,
    this.destinationPort,
    required this.id,
    required this.isTestSuccessful,
    required this.name,
    required this.path,
    required this.provisioningState,
    this.sourceAgent,
    this.testFrequencyInSec,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'destination': ?destination,
      'destinationPort': ?destinationPort,
      'id': id,
      'isTestSuccessful': isTestSuccessful,
      'name': name,
      'path': path,
      'provisioningState': provisioningState,
      'sourceAgent': ?sourceAgent,
      'testFrequencyInSec': ?testFrequencyInSec,
      'type': type,
    };
  }

  factory GetConnectionMonitorTestResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionMonitorTestResult(
      azureApiVersion: map['azureApiVersion'] as String,
      destination: map['destination'] == null ? null : map['destination']! as String,
      destinationPort: map['destinationPort'] == null ? null : map['destinationPort']! as int,
      id: map['id'] as String,
      isTestSuccessful: map['isTestSuccessful'] as bool,
      name: map['name'] as String,
      path: (map['path'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      sourceAgent: map['sourceAgent'] == null ? null : map['sourceAgent']! as String,
      testFrequencyInSec: map['testFrequencyInSec'] == null ? null : map['testFrequencyInSec']! as int,
      type: map['type'] as String,
    );
  }
}


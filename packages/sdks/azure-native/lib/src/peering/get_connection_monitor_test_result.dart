// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getConnectionMonitorTest.
class GetConnectionMonitorTestResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The Connection Monitor test destination
  final String? destination;
  /// The Connection Monitor test destination port
  final int? destinationPort;
  /// The ID of the resource.
  final String? id;
  /// The flag that indicates if the Connection Monitor test is successful or not.
  final bool? isTestSuccessful;
  /// The name of the resource.
  final String? name;
  /// The path representing the Connection Monitor test.
  final List<String>? path;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// The Connection Monitor test source agent
  final String? sourceAgent;
  /// The Connection Monitor test frequency in seconds
  final int? testFrequencyInSec;
  /// The type of the resource.
  final String? type;

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
  const GetConnectionMonitorTestResult({
    this.azureApiVersion,
    this.destination,
    this.destinationPort,
    this.id,
    this.isTestSuccessful,
    this.name,
    this.path,
    this.provisioningState,
    this.sourceAgent,
    this.testFrequencyInSec,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'destination': ?destination,
      'destinationPort': ?destinationPort,
      'id': ?id,
      'isTestSuccessful': ?isTestSuccessful,
      'name': ?name,
      'path': ?path,
      'provisioningState': ?provisioningState,
      'sourceAgent': ?sourceAgent,
      'testFrequencyInSec': ?testFrequencyInSec,
      'type': ?type,
    };
  }

  factory GetConnectionMonitorTestResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionMonitorTestResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return guardedValue as String; })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isTestSuccessful: (() { final guardedValue = map['isTestSuccessful']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sourceAgent: (() { final guardedValue = map['sourceAgent']; if (guardedValue == null) return null; return guardedValue as String; })(),
      testFrequencyInSec: (() { final guardedValue = map['testFrequencyInSec']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

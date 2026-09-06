// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_connection_monitor_test_args_doc}
/// The set of arguments for ConnectionMonitorTest.
/// {@endtemplate}
/// {@macro pulumi_peering_connection_monitor_test_args_doc}
class ConnectionMonitorTestArgs {
  /// The name of the connection monitor test
  final pulumi.Input<String?>? connectionMonitorTestName;
  /// The Connection Monitor test destination
  final pulumi.Input<String?>? destination;
  /// The Connection Monitor test destination port
  final pulumi.Input<int?>? destinationPort;
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The Connection Monitor test source agent
  final pulumi.Input<String?>? sourceAgent;
  /// The Connection Monitor test frequency in seconds
  final pulumi.Input<int?>? testFrequencyInSec;

  /// Creates a new [ConnectionMonitorTestArgs].
  /// [connectionMonitorTestName] The name of the connection monitor test
  /// [destination] The Connection Monitor test destination
  /// [destinationPort] The Connection Monitor test destination port
  /// [peeringServiceName] The name of the peering service.
  /// [resourceGroupName] The name of the resource group.
  /// [sourceAgent] The Connection Monitor test source agent
  /// [testFrequencyInSec] The Connection Monitor test frequency in seconds
  const ConnectionMonitorTestArgs({
    this.connectionMonitorTestName,
    this.destination,
    this.destinationPort,
    required this.peeringServiceName,
    required this.resourceGroupName,
    this.sourceAgent,
    this.testFrequencyInSec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionMonitorTestName': ?connectionMonitorTestName,
      'destination': ?destination,
      'destinationPort': ?destinationPort,
      'peeringServiceName': peeringServiceName,
      'resourceGroupName': resourceGroupName,
      'sourceAgent': ?sourceAgent,
      'testFrequencyInSec': ?testFrequencyInSec,
    };
  }

  factory ConnectionMonitorTestArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionMonitorTestArgs(
      connectionMonitorTestName: (() { final guardedValue = map['connectionMonitorTestName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationPort: (() { final guardedValue = map['destinationPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      peeringServiceName: pulumi.Input.fromValue(map['peeringServiceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      sourceAgent: (() { final guardedValue = map['sourceAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      testFrequencyInSec: (() { final guardedValue = map['testFrequencyInSec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

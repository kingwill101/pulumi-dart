// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_peering_connection_monitor_test_args_doc}
/// The set of arguments for ConnectionMonitorTest.
/// {@endtemplate}
/// {@macro pulumi_peering_connection_monitor_test_args_doc}
class ConnectionMonitorTestArgs {
  /// The name of the connection monitor test
  final pulumi.Input<String>? connectionMonitorTestName;
  /// The Connection Monitor test destination
  final pulumi.Input<String>? destination;
  /// The Connection Monitor test destination port
  final pulumi.Input<int>? destinationPort;
  /// The name of the peering service.
  final pulumi.Input<String> peeringServiceName;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The Connection Monitor test source agent
  final pulumi.Input<String>? sourceAgent;
  /// The Connection Monitor test frequency in seconds
  final pulumi.Input<int>? testFrequencyInSec;

  /// Creates a new [ConnectionMonitorTestArgs].
  /// [connectionMonitorTestName] The name of the connection monitor test
  /// [destination] The Connection Monitor test destination
  /// [destinationPort] The Connection Monitor test destination port
  /// [peeringServiceName] The name of the peering service.
  /// [resourceGroupName] The name of the resource group.
  /// [sourceAgent] The Connection Monitor test source agent
  /// [testFrequencyInSec] The Connection Monitor test frequency in seconds
  ConnectionMonitorTestArgs({
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
      connectionMonitorTestName: map['connectionMonitorTestName'] == null ? null : (map['connectionMonitorTestName'] as String).input(),
      destination: map['destination'] == null ? null : (map['destination'] as String).input(),
      destinationPort: map['destinationPort'] == null ? null : (map['destinationPort'] as int).input(),
      peeringServiceName: (map['peeringServiceName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      sourceAgent: map['sourceAgent'] == null ? null : (map['sourceAgent'] as String).input(),
      testFrequencyInSec: map['testFrequencyInSec'] == null ? null : (map['testFrequencyInSec'] as int).input(),
    );
  }
}


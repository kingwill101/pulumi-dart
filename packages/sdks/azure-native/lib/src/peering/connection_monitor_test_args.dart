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
    pulumi.Output<String>? connectionMonitorTestName,
    pulumi.Output<String>? destination,
    pulumi.Output<int>? destinationPort,
    required pulumi.Output<String> peeringServiceName,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? sourceAgent,
    pulumi.Output<int>? testFrequencyInSec,
  }) :
      connectionMonitorTestName = pulumi.Input.asOptionalInput<String>(connectionMonitorTestName),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      destinationPort = pulumi.Input.asOptionalInput<int>(destinationPort),
      peeringServiceName = pulumi.Input.asInput<String>(peeringServiceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sourceAgent = pulumi.Input.asOptionalInput<String>(sourceAgent),
      testFrequencyInSec = pulumi.Input.asOptionalInput<int>(testFrequencyInSec);

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
      connectionMonitorTestName: map['connectionMonitorTestName'] == null ? null : pulumi.Output.create<String>(map['connectionMonitorTestName'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      destinationPort: map['destinationPort'] == null ? null : pulumi.Output.create<int>(map['destinationPort'] as int),
      peeringServiceName: pulumi.Output.create<String>(map['peeringServiceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      sourceAgent: map['sourceAgent'] == null ? null : pulumi.Output.create<String>(map['sourceAgent'] as String),
      testFrequencyInSec: map['testFrequencyInSec'] == null ? null : pulumi.Output.create<int>(map['testFrequencyInSec'] as int),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_request_virtual_machine.dart';

class JitNetworkAccessRequest {
  /// The justification for making the initiate request
  final pulumi.Input<String>? justification;
  /// The identity of the person who made the request
  final pulumi.Input<String> requestor;
  /// The start time of the request in UTC
  final pulumi.Input<String> startTimeUtc;
  final pulumi.Input<List<JitNetworkAccessRequestVirtualMachine>> virtualMachines;

  /// Creates a new [JitNetworkAccessRequest].
  /// [justification] The justification for making the initiate request
  /// [requestor] The identity of the person who made the request
  /// [startTimeUtc] The start time of the request in UTC
  /// [virtualMachines] Required.
  JitNetworkAccessRequest({
    this.justification,
    required this.requestor,
    required this.startTimeUtc,
    required this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'justification': ?justification,
      'requestor': requestor,
      'startTimeUtc': startTimeUtc,
      'virtualMachines': pulumi.Input.mapInputValue<List<JitNetworkAccessRequestVirtualMachine>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<JitNetworkAccessRequestVirtualMachine, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JitNetworkAccessRequest.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessRequest(
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestor: pulumi.Input.fromValue(map['requestor'] as String),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      virtualMachines: pulumi.Input.fromValue(pulumi.Input.decodeList<JitNetworkAccessRequestVirtualMachine>(map['virtualMachines']!, (value) => JitNetworkAccessRequestVirtualMachine.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}


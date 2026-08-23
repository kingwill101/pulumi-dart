// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_request_virtual_machine_response.dart';

class JitNetworkAccessRequestResponse {
  /// The justification for making the initiate request
  final pulumi.Input<String>? justification;
  /// The identity of the person who made the request
  final pulumi.Input<String> requestor;
  /// The start time of the request in UTC
  final pulumi.Input<String> startTimeUtc;
  final pulumi.Input<List<JitNetworkAccessRequestVirtualMachineResponse>> virtualMachines;

  /// Creates a new [JitNetworkAccessRequestResponse].
  /// [justification] The justification for making the initiate request
  /// [requestor] The identity of the person who made the request
  /// [startTimeUtc] The start time of the request in UTC
  /// [virtualMachines] Required.
  const JitNetworkAccessRequestResponse({
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
      'virtualMachines': pulumi.Input.mapInputValue<List<JitNetworkAccessRequestVirtualMachineResponse>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<JitNetworkAccessRequestVirtualMachineResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JitNetworkAccessRequestResponse.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessRequestResponse(
      justification: (() { final guardedValue = map['justification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requestor: pulumi.Input.fromValue(map['requestor'] as String),
      startTimeUtc: pulumi.Input.fromValue(map['startTimeUtc'] as String),
      virtualMachines: pulumi.Input.fromValue(pulumi.Input.decodeList<JitNetworkAccessRequestVirtualMachineResponse>(map['virtualMachines']!, (value) => JitNetworkAccessRequestVirtualMachineResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

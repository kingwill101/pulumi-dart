// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'jit_network_access_request_port_response.dart';

class JitNetworkAccessRequestVirtualMachineResponse {
  /// Resource ID of the virtual machine that is linked to this policy
  final pulumi.Input<String> id;
  /// The ports that were opened for the virtual machine
  final pulumi.Input<List<JitNetworkAccessRequestPortResponse>> ports;

  /// Creates a new [JitNetworkAccessRequestVirtualMachineResponse].
  /// [id] Resource ID of the virtual machine that is linked to this policy
  /// [ports] The ports that were opened for the virtual machine
  const JitNetworkAccessRequestVirtualMachineResponse({
    required this.id,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ports': pulumi.Input.mapInputValue<List<JitNetworkAccessRequestPortResponse>, List<Map<String, dynamic>>>(ports, (value) => pulumi.Input.encodeList<JitNetworkAccessRequestPortResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory JitNetworkAccessRequestVirtualMachineResponse.fromMap(Map<String, dynamic> map) {
    return JitNetworkAccessRequestVirtualMachineResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      ports: pulumi.Input.fromValue(pulumi.Input.decodeList<JitNetworkAccessRequestPortResponse>(map['ports']!, (value) => JitNetworkAccessRequestPortResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

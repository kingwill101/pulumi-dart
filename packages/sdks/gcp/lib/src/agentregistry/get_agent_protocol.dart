// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_agent_protocol_interface.dart';

class GetAgentProtocol {
  /// The connection details for the Agent.
  final pulumi.Input<List<GetAgentProtocolInterface>> interfaces;
  /// The version of the protocol, for example, the A2A Agent Card version.
  final pulumi.Input<String> protocolVersion;
  /// The type of the protocol.
  final pulumi.Input<String> type;

  /// Creates a new [GetAgentProtocol].
  /// [interfaces] The connection details for the Agent.
  /// [protocolVersion] The version of the protocol, for example, the A2A Agent Card version.
  /// [type] The type of the protocol.
  const GetAgentProtocol({
    required this.interfaces,
    required this.protocolVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'interfaces': pulumi.Input.mapInputValue<List<GetAgentProtocolInterface>, List<Map<String, dynamic>>>(interfaces, (value) => pulumi.Input.encodeList<GetAgentProtocolInterface, Map<String, dynamic>>(value, (value) => value.toMap())),
      'protocolVersion': protocolVersion,
      'type': type,
    };
  }

  factory GetAgentProtocol.fromMap(Map<String, dynamic> map) {
    return GetAgentProtocol(
      interfaces: pulumi.Input.fromValue(pulumi.Input.decodeList<GetAgentProtocolInterface>(map['interfaces']!, (value) => GetAgentProtocolInterface.fromMap((value as Map).cast<String, dynamic>()))),
      protocolVersion: pulumi.Input.fromValue(map['protocolVersion'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

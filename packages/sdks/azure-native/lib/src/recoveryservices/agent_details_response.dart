// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_disk_details_response.dart';

/// Agent details.
class AgentDetailsResponse {
  /// The Id of the agent running on the server.
  final String agentId;
  /// The machine BIOS Id.
  final String biosId;
  /// The disks.
  final List<AgentDiskDetailsResponse> disks;
  /// The machine FQDN.
  final String fqdn;
  /// The Id of the machine to which the agent is registered.
  final String machineId;

  /// Creates a new [AgentDetailsResponse].
  /// [agentId] The Id of the agent running on the server.
  /// [biosId] The machine BIOS Id.
  /// [disks] The disks.
  /// [fqdn] The machine FQDN.
  /// [machineId] The Id of the machine to which the agent is registered.
  AgentDetailsResponse({
    required this.agentId,
    required this.biosId,
    required this.disks,
    required this.fqdn,
    required this.machineId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agentId': agentId,
      'biosId': biosId,
      'disks': pulumi.Input.encodeList<AgentDiskDetailsResponse, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'fqdn': fqdn,
      'machineId': machineId,
    };
  }

  factory AgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AgentDetailsResponse(
      agentId: map['agentId'] as String,
      biosId: map['biosId'] as String,
      disks: pulumi.Input.decodeList<AgentDiskDetailsResponse>(map['disks'], (value) => AgentDiskDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      fqdn: map['fqdn'] as String,
      machineId: map['machineId'] as String,
    );
  }
}


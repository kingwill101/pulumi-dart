// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_disk_details_response.dart';

/// Agent details.
class AgentDetailsResponse {
  /// The Id of the agent running on the server.
  final pulumi.Input<String> agentId;

  /// The machine BIOS Id.
  final pulumi.Input<String> biosId;

  /// The disks.
  final pulumi.Input<List<AgentDiskDetailsResponse>> disks;

  /// The machine FQDN.
  final pulumi.Input<String> fqdn;

  /// The Id of the machine to which the agent is registered.
  final pulumi.Input<String> machineId;

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
      'disks':
          pulumi.Input.mapInputValue<
            List<AgentDiskDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  AgentDiskDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'fqdn': fqdn,
      'machineId': machineId,
    };
  }

  factory AgentDetailsResponse.fromMap(Map<String, dynamic> map) {
    return AgentDetailsResponse(
      agentId: pulumi.Input.fromValue(map['agentId'] as String),
      biosId: pulumi.Input.fromValue(map['biosId'] as String),
      disks: pulumi.Input.fromValue(
        pulumi.Input.decodeList<AgentDiskDetailsResponse>(
          map['disks']!,
          (value) => AgentDiskDetailsResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
      fqdn: pulumi.Input.fromValue(map['fqdn'] as String),
      machineId: pulumi.Input.fromValue(map['machineId'] as String),
    );
  }
}

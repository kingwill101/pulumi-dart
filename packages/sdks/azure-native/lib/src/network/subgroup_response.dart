// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// A subgroup in an interconnect group.
class SubgroupResponse {
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// The reference to an interconnect block resource.
  final pulumi.Input<SubResourceResponse> interconnectBlock;
  /// The unique identifier of the subgroup.
  final pulumi.Input<String> internalSubgroupId;
  /// Name of the resource.
  final pulumi.Input<String>? name;
  /// The provisioning state of the subgroup.
  final pulumi.Input<String> provisioningState;
  /// Resource type.
  final pulumi.Input<String> type;
  /// A list of virtual machine references.
  final pulumi.Input<List<SubResourceResponse>> virtualMachines;

  /// Creates a new [SubgroupResponse].
  /// [id] Resource ID.
  /// [interconnectBlock] The reference to an interconnect block resource.
  /// [internalSubgroupId] The unique identifier of the subgroup.
  /// [name] Name of the resource.
  /// [provisioningState] The provisioning state of the subgroup.
  /// [type] Resource type.
  /// [virtualMachines] A list of virtual machine references.
  const SubgroupResponse({
    this.id,
    required this.interconnectBlock,
    required this.internalSubgroupId,
    this.name,
    required this.provisioningState,
    required this.type,
    required this.virtualMachines,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'interconnectBlock': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(interconnectBlock, (value) => value.toMap()),
      'internalSubgroupId': internalSubgroupId,
      'name': ?name,
      'provisioningState': provisioningState,
      'type': type,
      'virtualMachines': pulumi.Input.mapInputValue<List<SubResourceResponse>, List<Map<String, dynamic>>>(virtualMachines, (value) => pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SubgroupResponse.fromMap(Map<String, dynamic> map) {
    return SubgroupResponse(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interconnectBlock: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['interconnectBlock']! as Map).cast<String, dynamic>())),
      internalSubgroupId: pulumi.Input.fromValue(map['internalSubgroupId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      virtualMachines: pulumi.Input.fromValue(pulumi.Input.decodeList<SubResourceResponse>(map['virtualMachines']!, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

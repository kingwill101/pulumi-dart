// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_sub_block_health_info.dart';
import 'get_reservation_sub_block_physical_topology.dart';
import 'get_reservation_sub_block_reservation_sub_block_maintenance.dart';

/// Result data returned by getReservationSubBlock.
class GetReservationSubBlockResult {
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// Health information for the reservation sub-block. Structure is documented below.
  final List<GetReservationSubBlockHealthInfo>? healthInfos;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The number of instances that are currently in use on this reservation sub-block.
  final int? inUseCount;
  /// Type of the resource. Always `compute#reservationSubBlock` for reservation sub-blocks.
  final String? kind;
  final String? name;
  /// The physical topology of the reservation sub-block. Structure is documented below.
  final List<GetReservationSubBlockPhysicalTopology>? physicalTopologies;
  final String? project;
  final String? reservation;
  final String? reservationBlock;
  /// Maintenance information for this reservation sub-block. Structure is documented below.
  final List<GetReservationSubBlockReservationSubBlockMaintenance>? reservationSubBlockMaintenances;
  /// The unique identifier for the resource.
  final String? resourceId;
  /// Server-defined fully-qualified URL for this resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// Status of the reservation sub-block.
  final String? status;
  /// The number of hosts that are allocated in this reservation sub-block.
  final int? subBlockCount;
  final String? zone;

  /// Creates a new [GetReservationSubBlockResult].
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [healthInfos] Health information for the reservation sub-block. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inUseCount] The number of instances that are currently in use on this reservation sub-block.
  /// [kind] Type of the resource. Always `compute#reservationSubBlock` for reservation sub-blocks.
  /// [name] Optional.
  /// [physicalTopologies] The physical topology of the reservation sub-block. Structure is documented below.
  /// [project] Optional.
  /// [reservation] Optional.
  /// [reservationBlock] Optional.
  /// [reservationSubBlockMaintenances] Maintenance information for this reservation sub-block. Structure is documented below.
  /// [resourceId] The unique identifier for the resource.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [status] Status of the reservation sub-block.
  /// [subBlockCount] The number of hosts that are allocated in this reservation sub-block.
  /// [zone] Optional.
  const GetReservationSubBlockResult({
    this.creationTimestamp,
    this.healthInfos,
    this.id,
    this.inUseCount,
    this.kind,
    this.name,
    this.physicalTopologies,
    this.project,
    this.reservation,
    this.reservationBlock,
    this.reservationSubBlockMaintenances,
    this.resourceId,
    this.selfLink,
    this.selfLinkWithId,
    this.status,
    this.subBlockCount,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationTimestamp': ?creationTimestamp,
      'healthInfos': ?(() { final guardedValue = healthInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationSubBlockHealthInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'inUseCount': ?inUseCount,
      'kind': ?kind,
      'name': ?name,
      'physicalTopologies': ?(() { final guardedValue = physicalTopologies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationSubBlockPhysicalTopology, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'reservation': ?reservation,
      'reservationBlock': ?reservationBlock,
      'reservationSubBlockMaintenances': ?(() { final guardedValue = reservationSubBlockMaintenances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationSubBlockReservationSubBlockMaintenance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'resourceId': ?resourceId,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'status': ?status,
      'subBlockCount': ?subBlockCount,
      'zone': ?zone,
    };
  }

  factory GetReservationSubBlockResult.fromMap(Map<String, dynamic> map) {
    return GetReservationSubBlockResult(
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthInfos: (() { final guardedValue = map['healthInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationSubBlockHealthInfo>(guardedValue, (value) => GetReservationSubBlockHealthInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inUseCount: (() { final guardedValue = map['inUseCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physicalTopologies: (() { final guardedValue = map['physicalTopologies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationSubBlockPhysicalTopology>(guardedValue, (value) => GetReservationSubBlockPhysicalTopology.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservation: (() { final guardedValue = map['reservation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationBlock: (() { final guardedValue = map['reservationBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationSubBlockMaintenances: (() { final guardedValue = map['reservationSubBlockMaintenances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationSubBlockReservationSubBlockMaintenance>(guardedValue, (value) => GetReservationSubBlockReservationSubBlockMaintenance.fromMap((value as Map).cast<String, dynamic>())); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subBlockCount: (() { final guardedValue = map['subBlockCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

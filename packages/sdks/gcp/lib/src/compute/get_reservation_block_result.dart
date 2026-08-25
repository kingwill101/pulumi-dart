// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_reservation_block_health_info.dart';
import 'get_reservation_block_physical_topology.dart';
import 'get_reservation_block_reservation_maintenance.dart';

/// Result data returned by getReservationBlock.
class GetReservationBlockResult {
  /// The number of resources that are allocated in this reservation block.
  final int? blockCount;
  /// Creation timestamp in RFC3339 text format.
  final String? creationTimestamp;
  /// Health information for the reservation block. Structure is documented below.
  final List<GetReservationBlockHealthInfo>? healthInfos;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The number of instances that are currently in use on this reservation block.
  final int? inUseCount;
  /// Type of the resource. Always `compute#reservationBlock` for reservation blocks.
  final String? kind;
  final String? name;
  /// The physical topology of the reservation block. Structure is documented below.
  final List<GetReservationBlockPhysicalTopology>? physicalTopologies;
  final String? project;
  final String? reservation;
  /// Maintenance information for this reservation block. Structure is documented below.
  final List<GetReservationBlockReservationMaintenance>? reservationMaintenances;
  /// The number of reservation sub-blocks associated with this reservation block.
  final int? reservationSubBlockCount;
  /// The number of in-use reservation sub-blocks associated with this reservation block.
  final int? reservationSubBlockInUseCount;
  /// The unique identifier for the resource.
  final String? resourceId;
  /// Server-defined fully-qualified URL for this resource.
  final String? selfLink;
  /// Server-defined URL for this resource with the resource id.
  final String? selfLinkWithId;
  /// Status of the reservation block.
  final String? status;
  /// A List of all block sub-block names in the parent block.
  final List<String>? subBlockNames;
  final String? zone;

  /// Creates a new [GetReservationBlockResult].
  /// [blockCount] The number of resources that are allocated in this reservation block.
  /// [creationTimestamp] Creation timestamp in RFC3339 text format.
  /// [healthInfos] Health information for the reservation block. Structure is documented below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [inUseCount] The number of instances that are currently in use on this reservation block.
  /// [kind] Type of the resource. Always `compute#reservationBlock` for reservation blocks.
  /// [name] Optional.
  /// [physicalTopologies] The physical topology of the reservation block. Structure is documented below.
  /// [project] Optional.
  /// [reservation] Optional.
  /// [reservationMaintenances] Maintenance information for this reservation block. Structure is documented below.
  /// [reservationSubBlockCount] The number of reservation sub-blocks associated with this reservation block.
  /// [reservationSubBlockInUseCount] The number of in-use reservation sub-blocks associated with this reservation block.
  /// [resourceId] The unique identifier for the resource.
  /// [selfLink] Server-defined fully-qualified URL for this resource.
  /// [selfLinkWithId] Server-defined URL for this resource with the resource id.
  /// [status] Status of the reservation block.
  /// [subBlockNames] A List of all block sub-block names in the parent block.
  /// [zone] Optional.
  const GetReservationBlockResult({
    this.blockCount,
    this.creationTimestamp,
    this.healthInfos,
    this.id,
    this.inUseCount,
    this.kind,
    this.name,
    this.physicalTopologies,
    this.project,
    this.reservation,
    this.reservationMaintenances,
    this.reservationSubBlockCount,
    this.reservationSubBlockInUseCount,
    this.resourceId,
    this.selfLink,
    this.selfLinkWithId,
    this.status,
    this.subBlockNames,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'blockCount': ?blockCount,
      'creationTimestamp': ?creationTimestamp,
      'healthInfos': ?(() { final guardedValue = healthInfos; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationBlockHealthInfo, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'inUseCount': ?inUseCount,
      'kind': ?kind,
      'name': ?name,
      'physicalTopologies': ?(() { final guardedValue = physicalTopologies; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationBlockPhysicalTopology, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
      'reservation': ?reservation,
      'reservationMaintenances': ?(() { final guardedValue = reservationMaintenances; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReservationBlockReservationMaintenance, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'reservationSubBlockCount': ?reservationSubBlockCount,
      'reservationSubBlockInUseCount': ?reservationSubBlockInUseCount,
      'resourceId': ?resourceId,
      'selfLink': ?selfLink,
      'selfLinkWithId': ?selfLinkWithId,
      'status': ?status,
      'subBlockNames': ?subBlockNames,
      'zone': ?zone,
    };
  }

  factory GetReservationBlockResult.fromMap(Map<String, dynamic> map) {
    return GetReservationBlockResult(
      blockCount: (() { final guardedValue = map['blockCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      creationTimestamp: (() { final guardedValue = map['creationTimestamp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      healthInfos: (() { final guardedValue = map['healthInfos']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationBlockHealthInfo>(guardedValue, (value) => GetReservationBlockHealthInfo.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      inUseCount: (() { final guardedValue = map['inUseCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      physicalTopologies: (() { final guardedValue = map['physicalTopologies']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationBlockPhysicalTopology>(guardedValue, (value) => GetReservationBlockPhysicalTopology.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservation: (() { final guardedValue = map['reservation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reservationMaintenances: (() { final guardedValue = map['reservationMaintenances']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReservationBlockReservationMaintenance>(guardedValue, (value) => GetReservationBlockReservationMaintenance.fromMap((value as Map).cast<String, dynamic>())); })(),
      reservationSubBlockCount: (() { final guardedValue = map['reservationSubBlockCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      reservationSubBlockInUseCount: (() { final guardedValue = map['reservationSubBlockInUseCount']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      resourceId: (() { final guardedValue = map['resourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLink: (() { final guardedValue = map['selfLink']; if (guardedValue == null) return null; return guardedValue as String; })(),
      selfLinkWithId: (() { final guardedValue = map['selfLinkWithId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subBlockNames: (() { final guardedValue = map['subBlockNames']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

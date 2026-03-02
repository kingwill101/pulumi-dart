// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lun_range.dart';
import 'nfs_export.dart';
import 'volume_config_performance_tier.dart';
import 'volume_config_protocol.dart';
import 'volume_config_type.dart';

/// Configuration parameters for a new volume.
class VolumeConfig {
  /// The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final pulumi.Input<String>? gcpService;
  /// A transient unique identifier to identify a volume within an ProvisioningConfig request.
  final pulumi.Input<String>? id;
  /// LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  final pulumi.Input<List<LunRange>>? lunRanges;
  /// Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  final pulumi.Input<List<String>>? machineIds;
  /// NFS exports. Set only when protocol is PROTOCOL_NFS.
  final pulumi.Input<List<NfsExport>>? nfsExports;
  /// Performance tier of the Volume. Default is SHARED.
  final pulumi.Input<VolumeConfigPerformanceTier>? performanceTier;
  /// Volume protocol.
  final pulumi.Input<VolumeConfigProtocol>? protocol;
  /// The requested size of this volume, in GB.
  final pulumi.Input<int>? sizeGb;
  /// Whether snapshots should be enabled.
  final pulumi.Input<bool>? snapshotsEnabled;
  /// The type of this Volume.
  final pulumi.Input<VolumeConfigType>? type;
  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final pulumi.Input<String>? userNote;

  /// Creates a new [VolumeConfig].
  /// [gcpService] The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  /// [id] A transient unique identifier to identify a volume within an ProvisioningConfig request.
  /// [lunRanges] LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  /// [machineIds] Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  /// [nfsExports] NFS exports. Set only when protocol is PROTOCOL_NFS.
  /// [performanceTier] Performance tier of the Volume. Default is SHARED.
  /// [protocol] Volume protocol.
  /// [sizeGb] The requested size of this volume, in GB.
  /// [snapshotsEnabled] Whether snapshots should be enabled.
  /// [type] The type of this Volume.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  VolumeConfig({
    this.gcpService,
    this.id,
    this.lunRanges,
    this.machineIds,
    this.nfsExports,
    this.performanceTier,
    this.protocol,
    this.sizeGb,
    this.snapshotsEnabled,
    this.type,
    this.userNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpService': ?gcpService,
      'id': ?id,
      'lunRanges': ?pulumi.Input.mapOptionalInputValue<List<LunRange>, List<Map<String, dynamic>>>(lunRanges, (value) => pulumi.Input.encodeList<LunRange, Map<String, dynamic>>(value, (value) => value.toMap())),
      'machineIds': ?machineIds,
      'nfsExports': ?pulumi.Input.mapOptionalInputValue<List<NfsExport>, List<Map<String, dynamic>>>(nfsExports, (value) => pulumi.Input.encodeList<NfsExport, Map<String, dynamic>>(value, (value) => value.toMap())),
      'performanceTier': ?pulumi.Input.mapOptionalInputValue<VolumeConfigPerformanceTier, String>(performanceTier, (value) => value.value),
      'protocol': ?pulumi.Input.mapOptionalInputValue<VolumeConfigProtocol, String>(protocol, (value) => value.value),
      'sizeGb': ?sizeGb,
      'snapshotsEnabled': ?snapshotsEnabled,
      'type': ?pulumi.Input.mapOptionalInputValue<VolumeConfigType, String>(type, (value) => value.value),
      'userNote': ?userNote,
    };
  }

  factory VolumeConfig.fromMap(Map<String, dynamic> map) {
    return VolumeConfig(
      gcpService: map['gcpService'] == null ? null : (map['gcpService'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      lunRanges: map['lunRanges'] == null ? null : (pulumi.Input.decodeList<LunRange>(map['lunRanges'], (value) => LunRange.fromMap((value as Map).cast<String, dynamic>()))).input(),
      machineIds: map['machineIds'] == null ? null : ((map['machineIds'] as List).cast<String>()).input(),
      nfsExports: map['nfsExports'] == null ? null : (pulumi.Input.decodeList<NfsExport>(map['nfsExports'], (value) => NfsExport.fromMap((value as Map).cast<String, dynamic>()))).input(),
      performanceTier: map['performanceTier'] == null ? null : (VolumeConfigPerformanceTier.fromValue(map['performanceTier'] as String)).input(),
      protocol: map['protocol'] == null ? null : (VolumeConfigProtocol.fromValue(map['protocol'] as String)).input(),
      sizeGb: map['sizeGb'] == null ? null : (map['sizeGb'] as int).input(),
      snapshotsEnabled: map['snapshotsEnabled'] == null ? null : (map['snapshotsEnabled'] as bool).input(),
      type: map['type'] == null ? null : (VolumeConfigType.fromValue(map['type'] as String)).input(),
      userNote: map['userNote'] == null ? null : (map['userNote'] as String).input(),
    );
  }
}


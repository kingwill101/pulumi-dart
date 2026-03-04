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
      'lunRanges':
          ?pulumi.Input.mapOptionalInputValue<
            List<LunRange>,
            List<Map<String, dynamic>>
          >(
            lunRanges,
            (value) => pulumi.Input.encodeList<LunRange, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'machineIds': ?machineIds,
      'nfsExports':
          ?pulumi.Input.mapOptionalInputValue<
            List<NfsExport>,
            List<Map<String, dynamic>>
          >(
            nfsExports,
            (value) => pulumi.Input.encodeList<NfsExport, Map<String, dynamic>>(
              value,
              (value) => value.toMap(),
            ),
          ),
      'performanceTier':
          ?pulumi.Input.mapOptionalInputValue<
            VolumeConfigPerformanceTier,
            String
          >(performanceTier, (value) => value.wireValue),
      'protocol':
          ?pulumi.Input.mapOptionalInputValue<VolumeConfigProtocol, String>(
            protocol,
            (value) => value.wireValue,
          ),
      'sizeGb': ?sizeGb,
      'snapshotsEnabled': ?snapshotsEnabled,
      'type': ?pulumi.Input.mapOptionalInputValue<VolumeConfigType, String>(
        type,
        (value) => value.wireValue,
      ),
      'userNote': ?userNote,
    };
  }

  factory VolumeConfig.fromMap(Map<String, dynamic> map) {
    return VolumeConfig(
      gcpService: (() {
        final guardedValue = map['gcpService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lunRanges: (() {
        final guardedValue = map['lunRanges'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<LunRange>(
            guardedValue,
            (value) => LunRange.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      machineIds: (() {
        final guardedValue = map['machineIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nfsExports: (() {
        final guardedValue = map['nfsExports'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<NfsExport>(
            guardedValue,
            (value) =>
                NfsExport.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      performanceTier: (() {
        final guardedValue = map['performanceTier'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeConfigPerformanceTier.fromValue(guardedValue as String),
        );
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeConfigProtocol.fromValue(guardedValue as String),
        );
      })(),
      sizeGb: (() {
        final guardedValue = map['sizeGb'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      snapshotsEnabled: (() {
        final guardedValue = map['snapshotsEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VolumeConfigType.fromValue(guardedValue as String),
        );
      })(),
      userNote: (() {
        final guardedValue = map['userNote'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

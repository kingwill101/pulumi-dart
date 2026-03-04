// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'lun_range_response.dart';
import 'nfs_export_response.dart';

/// Configuration parameters for a new volume.
class VolumeConfigResponse {
  /// The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  final pulumi.Input<String> gcpService;

  /// LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  final pulumi.Input<List<LunRangeResponse>> lunRanges;

  /// Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  final pulumi.Input<List<String>> machineIds;

  /// The name of the volume config.
  final pulumi.Input<String> name;

  /// NFS exports. Set only when protocol is PROTOCOL_NFS.
  final pulumi.Input<List<NfsExportResponse>> nfsExports;

  /// Performance tier of the Volume. Default is SHARED.
  final pulumi.Input<String> performanceTier;

  /// Volume protocol.
  final pulumi.Input<String> protocol;

  /// The requested size of this volume, in GB.
  final pulumi.Input<int> sizeGb;

  /// Whether snapshots should be enabled.
  final pulumi.Input<bool> snapshotsEnabled;

  /// The type of this Volume.
  final pulumi.Input<String> type;

  /// User note field, it can be used by customers to add additional information for the BMS Ops team .
  final pulumi.Input<String> userNote;

  /// Creates a new [VolumeConfigResponse].
  /// [gcpService] The GCP service of the storage volume. Available gcp_service are in https://cloud.google.com/bare-metal/docs/bms-planning.
  /// [lunRanges] LUN ranges to be configured. Set only when protocol is PROTOCOL_FC.
  /// [machineIds] Machine ids connected to this volume. Set only when protocol is PROTOCOL_FC.
  /// [name] The name of the volume config.
  /// [nfsExports] NFS exports. Set only when protocol is PROTOCOL_NFS.
  /// [performanceTier] Performance tier of the Volume. Default is SHARED.
  /// [protocol] Volume protocol.
  /// [sizeGb] The requested size of this volume, in GB.
  /// [snapshotsEnabled] Whether snapshots should be enabled.
  /// [type] The type of this Volume.
  /// [userNote] User note field, it can be used by customers to add additional information for the BMS Ops team .
  VolumeConfigResponse({
    required this.gcpService,
    required this.lunRanges,
    required this.machineIds,
    required this.name,
    required this.nfsExports,
    required this.performanceTier,
    required this.protocol,
    required this.sizeGb,
    required this.snapshotsEnabled,
    required this.type,
    required this.userNote,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gcpService': gcpService,
      'lunRanges':
          pulumi.Input.mapInputValue<
            List<LunRangeResponse>,
            List<Map<String, dynamic>>
          >(
            lunRanges,
            (value) =>
                pulumi.Input.encodeList<LunRangeResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'machineIds': machineIds,
      'name': name,
      'nfsExports':
          pulumi.Input.mapInputValue<
            List<NfsExportResponse>,
            List<Map<String, dynamic>>
          >(
            nfsExports,
            (value) =>
                pulumi.Input.encodeList<
                  NfsExportResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'performanceTier': performanceTier,
      'protocol': protocol,
      'sizeGb': sizeGb,
      'snapshotsEnabled': snapshotsEnabled,
      'type': type,
      'userNote': userNote,
    };
  }

  factory VolumeConfigResponse.fromMap(Map<String, dynamic> map) {
    return VolumeConfigResponse(
      gcpService: pulumi.Input.fromValue(map['gcpService'] as String),
      lunRanges: pulumi.Input.fromValue(
        pulumi.Input.decodeList<LunRangeResponse>(
          map['lunRanges']!,
          (value) =>
              LunRangeResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      machineIds: pulumi.Input.fromValue(
        (map['machineIds'] as List).cast<String>(),
      ),
      name: pulumi.Input.fromValue(map['name'] as String),
      nfsExports: pulumi.Input.fromValue(
        pulumi.Input.decodeList<NfsExportResponse>(
          map['nfsExports']!,
          (value) =>
              NfsExportResponse.fromMap((value as Map).cast<String, dynamic>()),
        ),
      ),
      performanceTier: pulumi.Input.fromValue(map['performanceTier'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      sizeGb: pulumi.Input.fromValue(map['sizeGb'] as int),
      snapshotsEnabled: pulumi.Input.fromValue(map['snapshotsEnabled'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
      userNote: pulumi.Input.fromValue(map['userNote'] as String),
    );
  }
}

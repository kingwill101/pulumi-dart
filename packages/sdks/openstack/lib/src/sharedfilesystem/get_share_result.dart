// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_share_export_location.dart';

/// Result data returned by getShare.
class GetShareResult {
  /// The share availability zone.
  final String availabilityZone;

  /// See Argument Reference above.
  final String description;

  /// See Argument Reference above.
  final String? exportLocationPath;

  /// A list of export locations. For example, when a share
  /// server has more than one network interface, it can have multiple export
  /// locations.
  final List<GetShareExportLocation> exportLocations;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// See Argument Reference above.
  final bool isPublic;

  /// See Argument Reference above.
  final Map<String, String> metadata;

  /// See Argument Reference above.
  final String name;

  /// See Argument Reference above.
  final String projectId;

  /// See Argument Reference above.
  final String region;

  /// See Argument Reference above.
  final String shareNetworkId;

  /// The share protocol.
  final String shareProto;

  /// The share size, in GBs.
  final int size;

  /// See Argument Reference above.
  final String snapshotId;

  /// See Argument Reference above.
  final String status;

  /// Creates a new [GetShareResult].
  /// [availabilityZone] The share availability zone.
  /// [description] See Argument Reference above.
  /// [exportLocationPath] See Argument Reference above.
  /// [exportLocations] A list of export locations. For example, when a share
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [isPublic] See Argument Reference above.
  /// [metadata] See Argument Reference above.
  /// [name] See Argument Reference above.
  /// [projectId] See Argument Reference above.
  /// [region] See Argument Reference above.
  /// [shareNetworkId] See Argument Reference above.
  /// [shareProto] The share protocol.
  /// [size] The share size, in GBs.
  /// [snapshotId] See Argument Reference above.
  /// [status] See Argument Reference above.
  GetShareResult({
    required this.availabilityZone,
    required this.description,
    this.exportLocationPath,
    required this.exportLocations,
    required this.id,
    required this.isPublic,
    required this.metadata,
    required this.name,
    required this.projectId,
    required this.region,
    required this.shareNetworkId,
    required this.shareProto,
    required this.size,
    required this.snapshotId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'description': description,
      'exportLocationPath': ?exportLocationPath,
      'exportLocations':
          pulumi.Input.encodeList<GetShareExportLocation, Map<String, dynamic>>(
            exportLocations,
            (value) => value.toMap(),
          ),
      'id': id,
      'isPublic': isPublic,
      'metadata': metadata,
      'name': name,
      'projectId': projectId,
      'region': region,
      'shareNetworkId': shareNetworkId,
      'shareProto': shareProto,
      'size': size,
      'snapshotId': snapshotId,
      'status': status,
    };
  }

  factory GetShareResult.fromMap(Map<String, dynamic> map) {
    return GetShareResult(
      availabilityZone: map['availabilityZone'] as String,
      description: map['description'] as String,
      exportLocationPath: (() {
        final guardedValue = map['exportLocationPath'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      exportLocations: pulumi.Input.decodeList<GetShareExportLocation>(
        map['exportLocations']!,
        (value) => GetShareExportLocation.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      isPublic: map['isPublic'] as bool,
      metadata: (map['metadata'] as Map).cast<String, String>(),
      name: map['name'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      shareNetworkId: map['shareNetworkId'] as String,
      shareProto: map['shareProto'] as String,
      size: map['size'] as int,
      snapshotId: map['snapshotId'] as String,
      status: map['status'] as String,
    );
  }
}

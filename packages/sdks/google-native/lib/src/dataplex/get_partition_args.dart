// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_get_partition_args_doc}
/// Arguments for getPartition.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_get_partition_args_doc}
class GetPartitionArgs {
  final pulumi.Input<String> entityId;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String> location;
  final pulumi.Input<String> partitionId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> zone;

  /// Creates a new [GetPartitionArgs].
  /// [entityId] Required.
  /// [lakeId] Required.
  /// [location] Required.
  /// [partitionId] Required.
  /// [project] Optional.
  /// [zone] Required.
  GetPartitionArgs({
    required this.entityId,
    required this.lakeId,
    required this.location,
    required this.partitionId,
    this.project,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'lakeId': lakeId,
      'location': location,
      'partitionId': partitionId,
      'project': ?project,
      'zone': zone,
    };
  }

  factory GetPartitionArgs.fromMap(Map<String, dynamic> map) {
    return GetPartitionArgs(
      entityId: (map['entityId'] as String).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: (map['location'] as String).input(),
      partitionId: (map['partitionId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      zone: (map['zone'] as String).input(),
    );
  }
}


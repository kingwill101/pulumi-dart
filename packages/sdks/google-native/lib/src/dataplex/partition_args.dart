// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataplex_v1_partition_args_doc}
/// The set of arguments for Partition.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_partition_args_doc}
class PartitionArgs {
  final pulumi.Input<String> entityId;
  /// Optional. The etag for this partition.
  final pulumi.Input<String>? etag;
  final pulumi.Input<String> lakeId;
  /// Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;
  /// Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  final pulumi.Input<List<String>> values;
  final pulumi.Input<String>? zone;

  /// Creates a new [PartitionArgs].
  /// [entityId] Required.
  /// [etag] Optional. The etag for this partition.
  /// [lakeId] Required.
  /// [location] Immutable. The location of the entity data within the partition, for example, gs://bucket/path/to/entity/key1=value1/key2=value2. Or projects//datasets//tables/
  /// [project] Optional.
  /// [values] Immutable. The set of values representing the partition, which correspond to the partition schema defined in the parent entity.
  /// [zone] Optional.
  PartitionArgs({
    required this.entityId,
    this.etag,
    required this.lakeId,
    this.location,
    this.project,
    required this.values,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entityId': entityId,
      'etag': ?etag,
      'lakeId': lakeId,
      'location': ?location,
      'project': ?project,
      'values': values,
      'zone': ?zone,
    };
  }

  factory PartitionArgs.fromMap(Map<String, dynamic> map) {
    return PartitionArgs(
      entityId: (map['entityId'] as String).input(),
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      lakeId: (map['lakeId'] as String).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
      zone: map['zone'] == null ? null : (map['zone']! as String).input(),
    );
  }
}


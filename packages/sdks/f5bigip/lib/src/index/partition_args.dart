// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_partition_partition_args_doc}
/// The set of arguments for Partition.
/// {@endtemplate}
/// {@macro pulumi_index_partition_partition_args_doc}
class PartitionArgs {
  /// Description of the partition.
  final pulumi.Input<String>? description;

  /// Name of the partition.
  final pulumi.Input<String> name;

  /// Route domain id of the partition.
  final pulumi.Input<int>? routeDomainId;

  /// Creates a new [PartitionArgs].
  /// [description] Description of the partition.
  /// [name] Name of the partition.
  /// [routeDomainId] Route domain id of the partition.
  PartitionArgs({this.description, required this.name, this.routeDomainId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'routeDomainId': ?routeDomainId,
    };
  }

  factory PartitionArgs.fromMap(Map<String, dynamic> map) {
    return PartitionArgs(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      routeDomainId: (() {
        final guardedValue = map['routeDomainId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

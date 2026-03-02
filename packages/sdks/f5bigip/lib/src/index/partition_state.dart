// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Partition resources.
class PartitionState {
  /// Description of the partition.
  final pulumi.Input<String>? description;
  /// Name of the partition.
  final pulumi.Input<String>? name;
  /// Route domain id of the partition.
  final pulumi.Input<int>? routeDomainId;

  /// Creates a new [PartitionState].
  /// [description] Description of the partition.
  /// [name] Name of the partition.
  /// [routeDomainId] Route domain id of the partition.
  PartitionState({
    this.description,
    this.name,
    this.routeDomainId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'routeDomainId': ?routeDomainId,
    };
  }

  factory PartitionState.fromMap(Map<String, dynamic> map) {
    return PartitionState(
      description: map['description'] == null ? null : (map['description']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      routeDomainId: map['routeDomainId'] == null ? null : (map['routeDomainId']! as int).input(),
    );
  }
}


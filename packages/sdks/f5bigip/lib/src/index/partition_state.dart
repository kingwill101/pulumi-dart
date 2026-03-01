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
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<int>? routeDomainId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      routeDomainId = pulumi.Input.asOptionalInput<int>(routeDomainId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'routeDomainId': ?routeDomainId,
    };
  }

  factory PartitionState.fromMap(Map<String, dynamic> map) {
    return PartitionState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      routeDomainId: map['routeDomainId'] == null ? null : pulumi.Output.create<int>(map['routeDomainId'] as int),
    );
  }
}


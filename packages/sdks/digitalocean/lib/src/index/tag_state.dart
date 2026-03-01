// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Tag resources.
class TagState {
  /// A count of the database clusters that the tag is applied to.
  final pulumi.Input<int>? databasesCount;
  /// A count of the Droplets the tag is applied to.
  final pulumi.Input<int>? dropletsCount;
  /// A count of the images that the tag is applied to.
  final pulumi.Input<int>? imagesCount;
  /// The name of the tag
  final pulumi.Input<String>? name;
  /// A count of the total number of resources that the tag is applied to.
  final pulumi.Input<int>? totalResourceCount;
  /// A count of the volume snapshots that the tag is applied to.
  final pulumi.Input<int>? volumeSnapshotsCount;
  /// A count of the volumes that the tag is applied to.
  final pulumi.Input<int>? volumesCount;

  /// Creates a new [TagState].
  /// [databasesCount] A count of the database clusters that the tag is applied to.
  /// [dropletsCount] A count of the Droplets the tag is applied to.
  /// [imagesCount] A count of the images that the tag is applied to.
  /// [name] The name of the tag
  /// [totalResourceCount] A count of the total number of resources that the tag is applied to.
  /// [volumeSnapshotsCount] A count of the volume snapshots that the tag is applied to.
  /// [volumesCount] A count of the volumes that the tag is applied to.
  TagState({
    pulumi.Output<int>? databasesCount,
    pulumi.Output<int>? dropletsCount,
    pulumi.Output<int>? imagesCount,
    pulumi.Output<String>? name,
    pulumi.Output<int>? totalResourceCount,
    pulumi.Output<int>? volumeSnapshotsCount,
    pulumi.Output<int>? volumesCount,
  }) :
      databasesCount = pulumi.Input.asOptionalInput<int>(databasesCount),
      dropletsCount = pulumi.Input.asOptionalInput<int>(dropletsCount),
      imagesCount = pulumi.Input.asOptionalInput<int>(imagesCount),
      name = pulumi.Input.asOptionalInput<String>(name),
      totalResourceCount = pulumi.Input.asOptionalInput<int>(totalResourceCount),
      volumeSnapshotsCount = pulumi.Input.asOptionalInput<int>(volumeSnapshotsCount),
      volumesCount = pulumi.Input.asOptionalInput<int>(volumesCount);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesCount': ?databasesCount,
      'dropletsCount': ?dropletsCount,
      'imagesCount': ?imagesCount,
      'name': ?name,
      'totalResourceCount': ?totalResourceCount,
      'volumeSnapshotsCount': ?volumeSnapshotsCount,
      'volumesCount': ?volumesCount,
    };
  }

  factory TagState.fromMap(Map<String, dynamic> map) {
    return TagState(
      databasesCount: map['databasesCount'] == null ? null : pulumi.Output.create<int>(map['databasesCount'] as int),
      dropletsCount: map['dropletsCount'] == null ? null : pulumi.Output.create<int>(map['dropletsCount'] as int),
      imagesCount: map['imagesCount'] == null ? null : pulumi.Output.create<int>(map['imagesCount'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      totalResourceCount: map['totalResourceCount'] == null ? null : pulumi.Output.create<int>(map['totalResourceCount'] as int),
      volumeSnapshotsCount: map['volumeSnapshotsCount'] == null ? null : pulumi.Output.create<int>(map['volumeSnapshotsCount'] as int),
      volumesCount: map['volumesCount'] == null ? null : pulumi.Output.create<int>(map['volumesCount'] as int),
    );
  }
}


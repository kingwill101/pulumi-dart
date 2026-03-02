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
    this.databasesCount,
    this.dropletsCount,
    this.imagesCount,
    this.name,
    this.totalResourceCount,
    this.volumeSnapshotsCount,
    this.volumesCount,
  });

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
      databasesCount: map['databasesCount'] == null ? null : (map['databasesCount'] as int).input(),
      dropletsCount: map['dropletsCount'] == null ? null : (map['dropletsCount'] as int).input(),
      imagesCount: map['imagesCount'] == null ? null : (map['imagesCount'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      totalResourceCount: map['totalResourceCount'] == null ? null : (map['totalResourceCount'] as int).input(),
      volumeSnapshotsCount: map['volumeSnapshotsCount'] == null ? null : (map['volumeSnapshotsCount'] as int).input(),
      volumesCount: map['volumesCount'] == null ? null : (map['volumesCount'] as int).input(),
    );
  }
}


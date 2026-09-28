// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTagsTag {
  /// A count of the database clusters that the tag is applied to.
  final pulumi.Input<int> databasesCount;
  /// A count of the Droplets the tag is applied to.
  final pulumi.Input<int> dropletsCount;
  /// A count of the images that the tag is applied to.
  final pulumi.Input<int> imagesCount;
  /// The name of the tag.
  final pulumi.Input<String> name;
  /// A count of the total number of resources that the tag is applied to.
  final pulumi.Input<int> totalResourceCount;
  /// A count of the volume snapshots that the tag is applied to.
  final pulumi.Input<int> volumeSnapshotsCount;
  /// A count of the volumes that the tag is applied to.
  final pulumi.Input<int> volumesCount;

  /// Creates a new [GetTagsTag].
  /// [databasesCount] A count of the database clusters that the tag is applied to.
  /// [dropletsCount] A count of the Droplets the tag is applied to.
  /// [imagesCount] A count of the images that the tag is applied to.
  /// [name] The name of the tag.
  /// [totalResourceCount] A count of the total number of resources that the tag is applied to.
  /// [volumeSnapshotsCount] A count of the volume snapshots that the tag is applied to.
  /// [volumesCount] A count of the volumes that the tag is applied to.
  const GetTagsTag({
    required this.databasesCount,
    required this.dropletsCount,
    required this.imagesCount,
    required this.name,
    required this.totalResourceCount,
    required this.volumeSnapshotsCount,
    required this.volumesCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databasesCount': databasesCount,
      'dropletsCount': dropletsCount,
      'imagesCount': imagesCount,
      'name': name,
      'totalResourceCount': totalResourceCount,
      'volumeSnapshotsCount': volumeSnapshotsCount,
      'volumesCount': volumesCount,
    };
  }

  factory GetTagsTag.fromMap(Map<String, dynamic> map) {
    return GetTagsTag(
      databasesCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['databasesCount'])),
      dropletsCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['dropletsCount'])),
      imagesCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['imagesCount'])),
      name: pulumi.Input.fromValue(map['name'] as String),
      totalResourceCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['totalResourceCount'])),
      volumeSnapshotsCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['volumeSnapshotsCount'])),
      volumesCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['volumesCount'])),
    );
  }
}

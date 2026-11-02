// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetVolumeBucketWithServerFileSystemNfsUser {
  /// The POSIX group ID used by the bucket.
  final pulumi.Input<int> groupId;
  /// The POSIX user ID used by the bucket.
  final pulumi.Input<int> userId;

  /// Creates a new [GetVolumeBucketWithServerFileSystemNfsUser].
  /// [groupId] The POSIX group ID used by the bucket.
  /// [userId] The POSIX user ID used by the bucket.
  const GetVolumeBucketWithServerFileSystemNfsUser({
    required this.groupId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'userId': userId,
    };
  }

  factory GetVolumeBucketWithServerFileSystemNfsUser.fromMap(Map<String, dynamic> map) {
    return GetVolumeBucketWithServerFileSystemNfsUser(
      groupId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['groupId'])),
      userId: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['userId'])),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VolumeBucketWithServerFileSystemNfsUser {
  /// The POSIX group ID used by the bucket when accessing volume data over NFS.
  final pulumi.Input<int> groupId;
  /// The POSIX user ID used by the bucket when accessing volume data over NFS.
  final pulumi.Input<int> userId;

  /// Creates a new [VolumeBucketWithServerFileSystemNfsUser].
  /// [groupId] The POSIX group ID used by the bucket when accessing volume data over NFS.
  /// [userId] The POSIX user ID used by the bucket when accessing volume data over NFS.
  const VolumeBucketWithServerFileSystemNfsUser({
    required this.groupId,
    required this.userId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupId': groupId,
      'userId': userId,
    };
  }

  factory VolumeBucketWithServerFileSystemNfsUser.fromMap(Map<String, dynamic> map) {
    return VolumeBucketWithServerFileSystemNfsUser(
      groupId: pulumi.Input.fromValue(map['groupId'] as int),
      userId: pulumi.Input.fromValue(map['userId'] as int),
    );
  }
}

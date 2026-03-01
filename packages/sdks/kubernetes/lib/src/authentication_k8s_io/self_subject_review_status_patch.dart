// ignore_for_file: unused_element, unnecessary_cast

import 'user_info_patch.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusPatch {
  /// User attributes of the user making this request.
  final UserInfoPatch? userInfo;

  /// Creates a new [SelfSubjectReviewStatusPatch].
  /// [userInfo] User attributes of the user making this request.
  SelfSubjectReviewStatusPatch({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?userInfo == null ? null : userInfo!.toMap(),
    };
  }

  factory SelfSubjectReviewStatusPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusPatch(
      userInfo: map['userInfo'] == null ? null : UserInfoPatch.fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


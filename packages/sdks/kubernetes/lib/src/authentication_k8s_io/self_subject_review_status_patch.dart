// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info_patch.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusPatch {
  /// User attributes of the user making this request.
  final pulumi.Input<UserInfoPatch>? userInfo;

  /// Creates a new [SelfSubjectReviewStatusPatch].
  /// [userInfo] User attributes of the user making this request.
  SelfSubjectReviewStatusPatch({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfoPatch, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SelfSubjectReviewStatusPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusPatch(
      userInfo: map['userInfo'] == null ? null : (UserInfoPatch.fromMap((map['userInfo'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


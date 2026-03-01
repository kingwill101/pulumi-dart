// ignore_for_file: unused_element, unnecessary_cast

import 'user_info_patch.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1 {
  /// User attributes of the user making this request.
  final UserInfoPatch? userInfo;

  /// Creates a new [SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1].
  /// [userInfo] User attributes of the user making this request.
  SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?userInfo == null ? null : userInfo!.toMap(),
    };
  }

  factory SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1(
      userInfo: map['userInfo'] == null ? null : UserInfoPatch.fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


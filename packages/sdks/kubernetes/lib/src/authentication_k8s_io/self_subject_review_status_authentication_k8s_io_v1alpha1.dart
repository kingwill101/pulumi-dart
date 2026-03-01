// ignore_for_file: unused_element, unnecessary_cast

import 'user_info.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1 {
  /// User attributes of the user making this request.
  final UserInfo? userInfo;

  /// Creates a new [SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1].
  /// [userInfo] User attributes of the user making this request.
  SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?userInfo == null ? null : userInfo!.toMap(),
    };
  }

  factory SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusAuthenticationK8sIoV1alpha1(
      userInfo: map['userInfo'] == null ? null : UserInfo.fromMap((map['userInfo'] as Map).cast<String, dynamic>()),
    );
  }
}


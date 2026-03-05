// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info_patch.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1 {
  /// User attributes of the user making this request.
  final pulumi.Input<UserInfoPatch>? userInfo;

  /// Creates a new [SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1].
  /// [userInfo] User attributes of the user making this request.
  SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfoPatch, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusPatchAuthenticationK8sIoV1alpha1(
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfoPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


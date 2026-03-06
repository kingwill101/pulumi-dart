// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusAuthenticationK8sIoV1beta1 {
  /// User attributes of the user making this request.
  final pulumi.Input<UserInfo>? userInfo;

  /// Creates a new [SelfSubjectReviewStatusAuthenticationK8sIoV1beta1].
  /// [userInfo] User attributes of the user making this request.
  const SelfSubjectReviewStatusAuthenticationK8sIoV1beta1({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SelfSubjectReviewStatusAuthenticationK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusAuthenticationK8sIoV1beta1(
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


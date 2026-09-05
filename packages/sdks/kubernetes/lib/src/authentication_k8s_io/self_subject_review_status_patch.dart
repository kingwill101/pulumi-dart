// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info_patch.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatusPatch {
  /// userInfo is a set of attributes belonging to the user making this request.
  final pulumi.Input<UserInfoPatch?>? userInfo;

  /// Creates a new [SelfSubjectReviewStatusPatch].
  /// [userInfo] userInfo is a set of attributes belonging to the user making this request.
  const SelfSubjectReviewStatusPatch({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfoPatch, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SelfSubjectReviewStatusPatch.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatusPatch(
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfoPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

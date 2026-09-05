// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_info.dart';

/// SelfSubjectReviewStatus is filled by the kube-apiserver and sent back to a user.
class SelfSubjectReviewStatus {
  /// userInfo is a set of attributes belonging to the user making this request.
  final pulumi.Input<UserInfo?>? userInfo;

  /// Creates a new [SelfSubjectReviewStatus].
  /// [userInfo] userInfo is a set of attributes belonging to the user making this request.
  const SelfSubjectReviewStatus({
    this.userInfo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userInfo': ?pulumi.Input.mapOptionalInputValue<UserInfo, Map<String, dynamic>>(userInfo, (value) => value.toMap()),
    };
  }

  factory SelfSubjectReviewStatus.fromMap(Map<String, dynamic> map) {
    return SelfSubjectReviewStatus(
      userInfo: (() { final guardedValue = map['userInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

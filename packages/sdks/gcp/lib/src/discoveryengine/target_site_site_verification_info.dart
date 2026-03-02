// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetSiteSiteVerificationInfo {
  /// Site verification state indicating the ownership and validity.
  /// Possible values are: `VERIFIED`, `UNVERIFIED`, `EXEMPTED`.
  final pulumi.Input<String>? siteVerificationState;
  /// Latest site verification time.
  final pulumi.Input<String>? verifyTime;

  /// Creates a new [TargetSiteSiteVerificationInfo].
  /// [siteVerificationState] Site verification state indicating the ownership and validity.
  /// [verifyTime] Latest site verification time.
  TargetSiteSiteVerificationInfo({
    this.siteVerificationState,
    this.verifyTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'siteVerificationState': ?siteVerificationState,
      'verifyTime': ?verifyTime,
    };
  }

  factory TargetSiteSiteVerificationInfo.fromMap(Map<String, dynamic> map) {
    return TargetSiteSiteVerificationInfo(
      siteVerificationState: map['siteVerificationState'] == null ? null : (map['siteVerificationState'] as String).input(),
      verifyTime: map['verifyTime'] == null ? null : (map['verifyTime'] as String).input(),
    );
  }
}


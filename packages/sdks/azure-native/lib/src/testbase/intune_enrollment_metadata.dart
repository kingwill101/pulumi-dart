// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrolled_intune_app.dart';

/// The metadata of Intune enrollment.
class IntuneEnrollmentMetadata {
  /// The enrolled Intune apps.
  final List<EnrolledIntuneApp>? appList;
  /// The id of the Intune enrollment credential.
  final String? credentialId;
  /// The expected duration of Intune applications and policies deployment.
  final int? expectedDeploymentDurationInMinute;

  /// Creates a new [IntuneEnrollmentMetadata].
  /// [appList] The enrolled Intune apps.
  /// [credentialId] The id of the Intune enrollment credential.
  /// [expectedDeploymentDurationInMinute] The expected duration of Intune applications and policies deployment.
  IntuneEnrollmentMetadata({
    this.appList,
    this.credentialId,
    this.expectedDeploymentDurationInMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appList': ?appList == null ? null : pulumi.Input.encodeList<EnrolledIntuneApp, Map<String, dynamic>>(appList!, (value) => value.toMap()),
      'credentialId': ?credentialId,
      'expectedDeploymentDurationInMinute': ?expectedDeploymentDurationInMinute,
    };
  }

  factory IntuneEnrollmentMetadata.fromMap(Map<String, dynamic> map) {
    return IntuneEnrollmentMetadata(
      appList: map['appList'] == null ? null : pulumi.Input.decodeList<EnrolledIntuneApp>(map['appList'], (value) => EnrolledIntuneApp.fromMap((value as Map).cast<String, dynamic>())),
      credentialId: map['credentialId'] == null ? null : map['credentialId'] as String,
      expectedDeploymentDurationInMinute: map['expectedDeploymentDurationInMinute'] == null ? null : map['expectedDeploymentDurationInMinute'] as int,
    );
  }
}


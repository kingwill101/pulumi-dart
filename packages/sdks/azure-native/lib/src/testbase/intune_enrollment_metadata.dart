// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrolled_intune_app.dart';

/// The metadata of Intune enrollment.
class IntuneEnrollmentMetadata {
  /// The enrolled Intune apps.
  final pulumi.Input<List<EnrolledIntuneApp>?>? appList;
  /// The id of the Intune enrollment credential.
  final pulumi.Input<String?>? credentialId;
  /// The expected duration of Intune applications and policies deployment.
  final pulumi.Input<int?>? expectedDeploymentDurationInMinute;

  /// Creates a new [IntuneEnrollmentMetadata].
  /// [appList] The enrolled Intune apps.
  /// [credentialId] The id of the Intune enrollment credential.
  /// [expectedDeploymentDurationInMinute] The expected duration of Intune applications and policies deployment.
  const IntuneEnrollmentMetadata({
    this.appList,
    this.credentialId,
    this.expectedDeploymentDurationInMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appList': ?pulumi.Input.mapOptionalInputValue<List<EnrolledIntuneApp>, List<Map<String, dynamic>>>(appList, (value) => pulumi.Input.encodeList<EnrolledIntuneApp, Map<String, dynamic>>(value, (value) => value.toMap())),
      'credentialId': ?credentialId,
      'expectedDeploymentDurationInMinute': ?expectedDeploymentDurationInMinute,
    };
  }

  factory IntuneEnrollmentMetadata.fromMap(Map<String, dynamic> map) {
    return IntuneEnrollmentMetadata(
      appList: (() { final guardedValue = map['appList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnrolledIntuneApp>(guardedValue, (value) => EnrolledIntuneApp.fromMap((value as Map).cast<String, dynamic>()))); })(),
      credentialId: (() { final guardedValue = map['credentialId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expectedDeploymentDurationInMinute: (() { final guardedValue = map['expectedDeploymentDurationInMinute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}

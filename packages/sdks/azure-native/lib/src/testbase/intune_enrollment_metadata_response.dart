// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'enrolled_intune_app_response.dart';

/// The metadata of Intune enrollment.
class IntuneEnrollmentMetadataResponse {
  /// The enrolled Intune apps.
  final pulumi.Input<List<EnrolledIntuneAppResponse>>? appList;

  /// The id of the Intune enrollment credential.
  final pulumi.Input<String>? credentialId;

  /// The expected duration of Intune applications and policies deployment.
  final pulumi.Input<int>? expectedDeploymentDurationInMinute;

  /// Creates a new [IntuneEnrollmentMetadataResponse].
  /// [appList] The enrolled Intune apps.
  /// [credentialId] The id of the Intune enrollment credential.
  /// [expectedDeploymentDurationInMinute] The expected duration of Intune applications and policies deployment.
  IntuneEnrollmentMetadataResponse({
    this.appList,
    this.credentialId,
    this.expectedDeploymentDurationInMinute,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appList':
          ?pulumi.Input.mapOptionalInputValue<
            List<EnrolledIntuneAppResponse>,
            List<Map<String, dynamic>>
          >(
            appList,
            (value) =>
                pulumi.Input.encodeList<
                  EnrolledIntuneAppResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'credentialId': ?credentialId,
      'expectedDeploymentDurationInMinute': ?expectedDeploymentDurationInMinute,
    };
  }

  factory IntuneEnrollmentMetadataResponse.fromMap(Map<String, dynamic> map) {
    return IntuneEnrollmentMetadataResponse(
      appList: (() {
        final guardedValue = map['appList'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<EnrolledIntuneAppResponse>(
            guardedValue,
            (value) => EnrolledIntuneAppResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      credentialId: (() {
        final guardedValue = map['credentialId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expectedDeploymentDurationInMinute: (() {
        final guardedValue = map['expectedDeploymentDurationInMinute'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

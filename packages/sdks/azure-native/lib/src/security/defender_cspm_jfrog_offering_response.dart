// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_jfrog_offering_response_mdc_containers_image_assessment.dart';

/// The CSPM P1 for JFrog Artifactory offering
class DefenderCspmJFrogOfferingResponse {
  /// The offering description.
  final pulumi.Input<String> description;

  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<
    DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment
  >?
  mdcContainersImageAssessment;

  /// The type of the security offering.
  /// Expected value is 'DefenderCspmJFrog'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderCspmJFrogOfferingResponse].
  /// [description] The offering description.
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  DefenderCspmJFrogOfferingResponse({
    required this.description,
    this.mdcContainersImageAssessment,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'mdcContainersImageAssessment':
          ?pulumi.Input.mapOptionalInputValue<
            DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment,
            Map<String, dynamic>
          >(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmJFrogOfferingResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmJFrogOfferingResponse(
      description: pulumi.Input.fromValue(map['description'] as String),
      mdcContainersImageAssessment: (() {
        final guardedValue = map['mdcContainersImageAssessment'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

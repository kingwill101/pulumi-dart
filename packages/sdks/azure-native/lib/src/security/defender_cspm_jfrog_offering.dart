// ignore_for_file: unused_element, unnecessary_cast

import 'defender_cspm_jfrog_offering_mdc_containers_image_assessment.dart';

/// The CSPM P1 for JFrog Artifactory offering
class DefenderCspmJFrogOffering {
  /// The Microsoft Defender Container image assessment configuration
  final DefenderCspmJFrogOfferingMdcContainersImageAssessment? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmJFrog'.
  final String offeringType;

  /// Creates a new [DefenderCspmJFrogOffering].
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  DefenderCspmJFrogOffering({
    this.mdcContainersImageAssessment,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mdcContainersImageAssessment': ?mdcContainersImageAssessment == null ? null : mdcContainersImageAssessment!.toMap(),
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmJFrogOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmJFrogOffering(
      mdcContainersImageAssessment: map['mdcContainersImageAssessment'] == null ? null : DefenderCspmJFrogOfferingMdcContainersImageAssessment.fromMap((map['mdcContainersImageAssessment'] as Map).cast<String, dynamic>()),
      offeringType: map['offeringType'] as String,
    );
  }
}


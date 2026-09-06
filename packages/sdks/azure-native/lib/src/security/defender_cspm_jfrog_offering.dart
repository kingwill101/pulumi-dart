// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'defender_cspm_jfrog_offering_mdc_containers_image_assessment.dart';

/// The CSPM P1 for JFrog Artifactory offering
class DefenderCspmJFrogOffering {
  /// The Microsoft Defender Container image assessment configuration
  final pulumi.Input<DefenderCspmJFrogOfferingMdcContainersImageAssessment?>? mdcContainersImageAssessment;
  /// The type of the security offering.
  /// Expected value is 'DefenderCspmJFrog'.
  final pulumi.Input<String> offeringType;

  /// Creates a new [DefenderCspmJFrogOffering].
  /// [mdcContainersImageAssessment] The Microsoft Defender Container image assessment configuration
  /// [offeringType] The type of the security offering.
  const DefenderCspmJFrogOffering({
    this.mdcContainersImageAssessment,
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mdcContainersImageAssessment': ?pulumi.Input.mapOptionalInputValue<DefenderCspmJFrogOfferingMdcContainersImageAssessment, Map<String, dynamic>>(mdcContainersImageAssessment, (value) => value.toMap()),
      'offeringType': offeringType,
    };
  }

  factory DefenderCspmJFrogOffering.fromMap(Map<String, dynamic> map) {
    return DefenderCspmJFrogOffering(
      mdcContainersImageAssessment: (() { final guardedValue = map['mdcContainersImageAssessment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DefenderCspmJFrogOfferingMdcContainersImageAssessment.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      offeringType: pulumi.Input.fromValue(map['offeringType'] as String),
    );
  }
}

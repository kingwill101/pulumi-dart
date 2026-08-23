// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The Microsoft Defender Container image assessment configuration
class DefenderCspmJFrogOfferingMdcContainersImageAssessmentResponse {
  /// Is Microsoft Defender container image assessment enabled
  final pulumi.Input<bool>? enabled;

  /// Creates a new [DefenderCspmJFrogOfferingMdcContainersImageAssessmentResponse].
  /// [enabled] Is Microsoft Defender container image assessment enabled
  const DefenderCspmJFrogOfferingMdcContainersImageAssessmentResponse({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmJFrogOfferingMdcContainersImageAssessmentResponse.fromMap(Map<String, dynamic> map) {
    return DefenderCspmJFrogOfferingMdcContainersImageAssessmentResponse(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast


/// The Microsoft Defender Container image assessment configuration
class DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment {
  /// Is Microsoft Defender container image assessment enabled
  final bool? enabled;

  /// Creates a new [DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment].
  /// [enabled] Is Microsoft Defender container image assessment enabled
  DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment.fromMap(Map<String, dynamic> map) {
    return DefenderCspmJFrogOfferingResponseMdcContainersImageAssessment(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}


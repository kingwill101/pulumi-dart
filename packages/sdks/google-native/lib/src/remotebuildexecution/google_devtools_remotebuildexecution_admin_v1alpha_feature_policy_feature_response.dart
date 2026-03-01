// ignore_for_file: unused_element, unnecessary_cast


/// Defines whether a feature can be used or what values are accepted.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse {
  /// A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  final List<String> allowedValues;
  /// The policy of the feature.
  final String policy;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse].
  /// [allowedValues] A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  /// [policy] The policy of the feature.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse({
    required this.allowedValues,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'policy': policy,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse(
      allowedValues: (map['allowedValues'] as List).cast<String>(),
      policy: map['policy'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_feature_policy.dart';

/// Defines whether a feature can be used or what values are accepted.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature {
  /// A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  final List<String>? allowedValues;
  /// The policy of the feature.
  final GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy? policy;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature].
  /// [allowedValues] A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  /// [policy] The policy of the feature.
  GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature({
    this.allowedValues,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': ?allowedValues,
      'policy': ?policy == null ? null : policy!.value,
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
      allowedValues: map['allowedValues'] == null ? null : (map['allowedValues'] as List).cast<String>(),
      policy: map['policy'] == null ? null : GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy.fromValue(map['policy'] as String),
    );
  }
}


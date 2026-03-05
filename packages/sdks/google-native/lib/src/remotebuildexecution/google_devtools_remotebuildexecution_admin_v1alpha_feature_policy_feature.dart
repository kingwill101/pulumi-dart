// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_remotebuildexecution_admin_v1alpha_feature_policy_feature_policy.dart';

/// Defines whether a feature can be used or what values are accepted.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature {
  /// A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  final pulumi.Input<List<String>>? allowedValues;
  /// The policy of the feature.
  final pulumi.Input<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy>? policy;

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
      'policy': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy, String>(policy, (value) => value.wireValue),
    };
  }

  factory GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature.fromMap(Map<String, dynamic> map) {
    return GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeature(
      allowedValues: (() { final guardedValue = map['allowedValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeaturePolicy.fromValue(guardedValue as String)); })(),
    );
  }
}


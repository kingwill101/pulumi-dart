// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines whether a feature can be used or what values are accepted.
class GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse {
  /// A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  final pulumi.Input<List<String>> allowedValues;
  /// The policy of the feature.
  final pulumi.Input<String> policy;

  /// Creates a new [GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse].
  /// [allowedValues] A list of acceptable values. Only effective when the policy is `RESTRICTED`.
  /// [policy] The policy of the feature.
  const GoogleDevtoolsRemotebuildexecutionAdminV1alphaFeaturePolicyFeatureResponse({
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
      allowedValues: pulumi.Input.fromValue((map['allowedValues'] as List).cast<String>()),
      policy: pulumi.Input.fromValue(map['policy'] as String),
    );
  }
}

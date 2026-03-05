// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector {
  /// The resource types to run the detector on.
  final pulumi.Input<List<String>> resourceTypes;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector].
  /// [resourceTypes] The resource types to run the detector on.
  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector({
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceTypes': resourceTypes,
    };
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigResourceSelector(
      resourceTypes: pulumi.Input.fromValue((map['resourceTypes'] as List).cast<String>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_security_health_analytics_custom_module_config_custom_output_property.dart';

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput {
  /// A list of custom output properties to add to the finding.
  /// Structure is documented below.
  final pulumi.Input<List<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty>>? properties;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput].
  /// [properties] A list of custom output properties to add to the finding.
  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutput(
      properties: map['properties'] == null ? null : (pulumi.Input.decodeList<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty>(map['properties'], (value) => PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfigCustomOutputProperty.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


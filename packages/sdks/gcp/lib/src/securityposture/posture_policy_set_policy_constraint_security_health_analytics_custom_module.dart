// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'posture_policy_set_policy_constraint_security_health_analytics_custom_module_config.dart';

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule {
  /// Custom module details.
  /// Structure is documented below.
  final pulumi.Input<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfig> config;
  /// The display name of the Security Health Analytics custom module. This
  /// display name becomes the finding category for all findings that are
  /// returned by this custom module.
  final pulumi.Input<String>? displayName;
  /// (Output)
  /// A server generated id of custom module.
  final pulumi.Input<String>? id;
  /// The state of enablement for the module at its level of the resource hierarchy.
  /// Possible values are: `ENABLEMENT_STATE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? moduleEnablementState;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule].
  /// [config] Custom module details.
  /// [displayName] The display name of the Security Health Analytics custom module. This
  /// [id] (Output)
  /// [moduleEnablementState] The state of enablement for the module at its level of the resource hierarchy.
  PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule({
    required this.config,
    this.displayName,
    this.id,
    this.moduleEnablementState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'config': pulumi.Input.mapInputValue<PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfig, Map<String, dynamic>>(config, (value) => value.toMap()),
      'displayName': ?displayName,
      'id': ?id,
      'moduleEnablementState': ?moduleEnablementState,
    };
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModule(
      config: (PosturePolicySetPolicyConstraintSecurityHealthAnalyticsCustomModuleConfig.fromMap((map['config'] as Map).cast<String, dynamic>())).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      id: map['id'] == null ? null : (map['id'] as String).input(),
      moduleEnablementState: map['moduleEnablementState'] == null ? null : (map['moduleEnablementState'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule {
  /// The state of enablement for the module at its level of the resource hierarchy.
  /// Possible values are: `ENABLEMENT_STATE_UNSPECIFIED`, `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? moduleEnablementState;
  /// The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.
  final pulumi.Input<String> moduleName;

  /// Creates a new [PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule].
  /// [moduleEnablementState] The state of enablement for the module at its level of the resource hierarchy.
  /// [moduleName] The name of the module eg: BIGQUERY_TABLE_CMEK_DISABLED.
  const PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule({
    this.moduleEnablementState,
    required this.moduleName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'moduleEnablementState': ?moduleEnablementState,
      'moduleName': moduleName,
    };
  }

  factory PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule.fromMap(Map<String, dynamic> map) {
    return PosturePolicySetPolicyConstraintSecurityHealthAnalyticsModule(
      moduleEnablementState: (() { final guardedValue = map['moduleEnablementState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      moduleName: pulumi.Input.fromValue(map['moduleName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_iampolicy_audit_config.dart';
import 'get_iampolicy_binding.dart';

/// {@template pulumi_organizations_get_iampolicy_get_iampolicy_args_doc}
/// Arguments for getIAMPolicy.
/// {@endtemplate}
/// {@macro pulumi_organizations_get_iampolicy_get_iampolicy_args_doc}
class GetIAMPolicyArgs {
  /// A nested configuration block that defines logging additional configuration for your project. This field is only supported on `gcp.projects.IAMPolicy`, `gcp.folder.IAMPolicy` and `gcp.organizations.IAMPolicy`.
  final pulumi.Input<List<GetIAMPolicyAuditConfig>>? auditConfigs;

  /// A nested configuration block (described below)
  /// defining a binding to be included in the policy document. Multiple
  /// `binding` arguments are supported.
  ///
  /// Each document configuration must have one or more `binding` blocks, which
  /// each accept the following arguments:
  final pulumi.Input<List<GetIAMPolicyBinding>>? bindings;

  /// Creates a new [GetIAMPolicyArgs].
  /// [auditConfigs] A nested configuration block that defines logging additional configuration for your project. This field is only supported on `gcp.projects.IAMPolicy`, `gcp.folder.IAMPolicy` and `gcp.organizations.IAMPolicy`.
  /// [bindings] A nested configuration block (described below)
  GetIAMPolicyArgs({this.auditConfigs, this.bindings});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetIAMPolicyAuditConfig>,
            List<Map<String, dynamic>>
          >(
            auditConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  GetIAMPolicyAuditConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'bindings':
          ?pulumi.Input.mapOptionalInputValue<
            List<GetIAMPolicyBinding>,
            List<Map<String, dynamic>>
          >(
            bindings,
            (value) =>
                pulumi.Input.encodeList<
                  GetIAMPolicyBinding,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetIAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIAMPolicyArgs(
      auditConfigs: (() {
        final guardedValue = map['auditConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetIAMPolicyAuditConfig>(
            guardedValue,
            (value) => GetIAMPolicyAuditConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      bindings: (() {
        final guardedValue = map['bindings'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GetIAMPolicyBinding>(
            guardedValue,
            (value) => GetIAMPolicyBinding.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}

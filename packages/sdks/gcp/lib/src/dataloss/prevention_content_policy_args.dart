// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'prevention_content_policy_default_action.dart';
import 'prevention_content_policy_failed_to_scan_supported_file_type.dart';
import 'prevention_content_policy_input_too_large.dart';
import 'prevention_content_policy_inspect_config.dart';
import 'prevention_content_policy_logging_config.dart';
import 'prevention_content_policy_rule.dart';
import 'prevention_content_policy_unsupported_file_type.dart';

/// {@template pulumi_dataloss_prevention_content_policy_prevention_content_policy_args_doc}
/// The set of arguments for PreventionContentPolicy.
/// {@endtemplate}
/// {@macro pulumi_dataloss_prevention_content_policy_prevention_content_policy_args_doc}
class PreventionContentPolicyArgs {
  /// Action to take if the content is scanned and no rules match. Defaults to returning an ALLOW verdict if not set.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyDefaultAction?>? defaultAction;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// Display name (max 63 chars).
  final pulumi.Input<String?>? displayName;
  /// Action to take if the content is a supported file type and size but fails to be scanned, for example because the file is encrypted or corrupted.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyFailedToScanSupportedFileType?>? failedToScanSupportedFileType;
  /// Action to take if the content is a supported file type but is too large to be scanned.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInputTooLarge?>? inputTooLarge;
  /// InspectConfig to use to produce findings.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyInspectConfig?>? inspectConfig;
  /// Log the actions taken by the content policy to external systems.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyLoggingConfig>?>? loggingConfigs;
  /// The parent of the content policy in any of the following formats:
  /// * `projects/{{project}}/locations/{{location}}`
  final pulumi.Input<String> parent;
  /// Policies to apply, based on the findings returned by inspection. The first rule to match applies.
  /// Structure is documented below.
  final pulumi.Input<List<PreventionContentPolicyRule>> rules;
  /// Action to take if the content is an unsupported file type.
  /// Structure is documented below.
  final pulumi.Input<PreventionContentPolicyUnsupportedFileType?>? unsupportedFileType;

  /// Creates a new [PreventionContentPolicyArgs].
  /// [defaultAction] Action to take if the content is scanned and no rules match. Defaults to returning an ALLOW verdict if not set.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] Display name (max 63 chars).
  /// [failedToScanSupportedFileType] Action to take if the content is a supported file type and size but fails to be scanned, for example because the file is encrypted or corrupted.
  /// [inputTooLarge] Action to take if the content is a supported file type but is too large to be scanned.
  /// [inspectConfig] InspectConfig to use to produce findings.
  /// [loggingConfigs] Log the actions taken by the content policy to external systems.
  /// [parent] The parent of the content policy in any of the following formats:
  /// [rules] Policies to apply, based on the findings returned by inspection. The first rule to match applies.
  /// [unsupportedFileType] Action to take if the content is an unsupported file type.
  const PreventionContentPolicyArgs({
    this.defaultAction,
    this.deletionPolicy,
    this.displayName,
    this.failedToScanSupportedFileType,
    this.inputTooLarge,
    this.inspectConfig,
    this.loggingConfigs,
    required this.parent,
    required this.rules,
    this.unsupportedFileType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultAction': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyDefaultAction, Map<String, dynamic>>(defaultAction, (value) => value.toMap()),
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'failedToScanSupportedFileType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyFailedToScanSupportedFileType, Map<String, dynamic>>(failedToScanSupportedFileType, (value) => value.toMap()),
      'inputTooLarge': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInputTooLarge, Map<String, dynamic>>(inputTooLarge, (value) => value.toMap()),
      'inspectConfig': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyInspectConfig, Map<String, dynamic>>(inspectConfig, (value) => value.toMap()),
      'loggingConfigs': ?pulumi.Input.mapOptionalInputValue<List<PreventionContentPolicyLoggingConfig>, List<Map<String, dynamic>>>(loggingConfigs, (value) => pulumi.Input.encodeList<PreventionContentPolicyLoggingConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'parent': parent,
      'rules': pulumi.Input.mapInputValue<List<PreventionContentPolicyRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<PreventionContentPolicyRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'unsupportedFileType': ?pulumi.Input.mapOptionalInputValue<PreventionContentPolicyUnsupportedFileType, Map<String, dynamic>>(unsupportedFileType, (value) => value.toMap()),
    };
  }

  factory PreventionContentPolicyArgs.fromMap(Map<String, dynamic> map) {
    return PreventionContentPolicyArgs(
      defaultAction: (() { final guardedValue = map['defaultAction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyDefaultAction.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failedToScanSupportedFileType: (() { final guardedValue = map['failedToScanSupportedFileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyFailedToScanSupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inputTooLarge: (() { final guardedValue = map['inputTooLarge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInputTooLarge.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      inspectConfig: (() { final guardedValue = map['inspectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyInspectConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingConfigs: (() { final guardedValue = map['loggingConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyLoggingConfig>(guardedValue, (value) => PreventionContentPolicyLoggingConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      rules: pulumi.Input.fromValue(pulumi.Input.decodeList<PreventionContentPolicyRule>(map['rules']!, (value) => PreventionContentPolicyRule.fromMap((value as Map).cast<String, dynamic>()))),
      unsupportedFileType: (() { final guardedValue = map['unsupportedFileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PreventionContentPolicyUnsupportedFileType.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

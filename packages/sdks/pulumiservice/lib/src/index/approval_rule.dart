import 'package:pulumi/pulumi.dart' as pulumi;
import 'approval_rule_args.dart';
import 'approval_rule_config.dart';
import 'environment_identifier.dart';
import 'target_action_type.dart';

/// An approval rule for environment deployments.
///
/// ## Import
///
/// This resource can be imported using its `id`, which has the format `environment/{organization}/{project}/{environment}/{ruleId}`, e.g.,
///
/// ```sh
///  $ pulumi import pulumiservice:index:ApprovalRule my-approval-rule environment/my-org/my-project/my-environment/0b9e6f2d-4c81-4a37-9e5b-7f2d1a6c8e03
/// ```
///
/// The ID starts with the literal segment `environment`.
///
/// The rule ID is the last segment of its page URL in the Pulumi Cloud console, for example `https://app.pulumi.com/my-org/esc/my-project/my-environment/change-requests/ruleset/0b9e6f2d-4c81-4a37-9e5b-7f2d1a6c8e03`.
class ApprovalRule extends pulumi.CustomResource {
  /// The approval rule configuration.
  late final pulumi.Output<ApprovalRuleConfig> approvalRuleConfig;
  /// Whether the approval rule is enabled.
  late final pulumi.Output<bool> enabled;
  /// The environment this rule applies to.
  late final pulumi.Output<EnvironmentIdentifier> environmentIdentifier;
  /// The name of the approval rule.
  late final pulumi.Output<String> name;
  /// The type of action this rule applies to.
  late final pulumi.Output<List<TargetActionType>> targetActionTypes;

  /// Creates a new [ApprovalRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ApprovalRule]. {@macro pulumi_index_approval_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ApprovalRule(
    String name, {
    ApprovalRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:index:ApprovalRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(replaceOnChanges: ['environmentIdentifier.name', 'environmentIdentifier.organization', 'environmentIdentifier.project', 'name']).merge(options),
        ) {
    approvalRuleConfig = registerOutput<ApprovalRuleConfig>('approvalRuleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApprovalRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    environmentIdentifier = registerOutput<EnvironmentIdentifier>('environmentIdentifier', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    targetActionTypes = registerOutput<List<TargetActionType>>('targetActionTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetActionType>(guardedValue, (value) => TargetActionType.fromValue(value as String)); });
  }

  /// Creates a typed reference to an existing [ApprovalRule] resource.
  ApprovalRule.reference(String urn)
    : super(
        'pulumiservice:index:ApprovalRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    approvalRuleConfig = registerOutput<ApprovalRuleConfig>('approvalRuleConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ApprovalRuleConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enabled = registerOutput<bool>('enabled');
    environmentIdentifier = registerOutput<EnvironmentIdentifier>('environmentIdentifier', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EnvironmentIdentifier.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    targetActionTypes = registerOutput<List<TargetActionType>>('targetActionTypes', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TargetActionType>(guardedValue, (value) => TargetActionType.fromValue(value as String)); });
  }
}

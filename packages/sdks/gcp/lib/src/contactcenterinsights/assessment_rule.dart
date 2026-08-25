import 'package:pulumi/pulumi.dart' as pulumi;
import 'assessment_rule_args.dart';
import 'assessment_rule_sample_rule.dart';
import 'assessment_rule_schedule_info.dart';
import 'assessment_rule_state.dart';

/// The CCAI Insights project wide assessment rule. This assessment rule will be
/// applied to all conversations from the previous sampling cycle that match the
/// sample rule defined in the assessment rule. One project can have multiple
/// assessment rules.
///
///
/// To get more information about AssessmentRule, see:
///
/// * [API documentation](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations.assessmentRules)
/// * How-to Guides
/// * [Configure assessment rules using the API](https://cloud.google.com/contact-center/insights/docs/assessment-rule)
///
/// ## Example Usage
///
/// ## Import
///
/// AssessmentRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/assessmentRules/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, AssessmentRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/assessmentRule:AssessmentRule default projects/{{project}}/locations/{{location}}/assessmentRules/{{name}}
/// $ pulumi import gcp:contactcenterinsights/assessmentRule:AssessmentRule default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:contactcenterinsights/assessmentRule:AssessmentRule default {{location}}/{{name}}
/// ```
class AssessmentRule extends pulumi.CustomResource {
  /// If true, apply this rule to conversations. Otherwise, this rule is
  /// inactive.
  late final pulumi.Output<bool?> active;
  /// A unique ID for the new AssessmentRule. This ID will become the final
  /// component of the AssessmentRule's resource name. If no ID is specified,
  /// a server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[A-Za-z0-9]{4,64}$`.
  late final pulumi.Output<String?> assessmentRuleId;
  /// The time at which this assessment rule was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Display Name of the assessment rule.
  late final pulumi.Output<String?> displayName;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the assessment rule.
  /// Format:
  /// projects/{project}/locations/{location}/assessmentRules/{assessment_rule}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Message for sampling conversations.
  /// Structure is documented below.
  late final pulumi.Output<AssessmentRuleSampleRule?> sampleRule;
  /// Message for schedule info.
  /// Structure is documented below.
  late final pulumi.Output<AssessmentRuleScheduleInfo?> scheduleInfo;
  /// The most recent time at which this assessment rule was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AssessmentRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AssessmentRule]. {@macro pulumi_contactcenterinsights_assessment_rule_assessment_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AssessmentRule(
    String name, {
    AssessmentRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/assessmentRule:AssessmentRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    active = registerOutput<bool?>('active');
    assessmentRuleId = registerOutput<String?>('assessmentRuleId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sampleRule = registerOutput<AssessmentRuleSampleRule?>('sampleRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentRuleSampleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleInfo = registerOutput<AssessmentRuleScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentRuleScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AssessmentRule] resource's state with the given [name] and [id].
  static AssessmentRule get(
    String name,
    pulumi.Input<String> id, {
    AssessmentRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AssessmentRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AssessmentRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/assessmentRule:AssessmentRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    assessmentRuleId = registerOutput<String?>('assessmentRuleId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sampleRule = registerOutput<AssessmentRuleSampleRule?>('sampleRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentRuleSampleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleInfo = registerOutput<AssessmentRuleScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentRuleScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AssessmentRule] resource.
  AssessmentRule.reference(String urn)
    : super(
        'gcp:contactcenterinsights/assessmentRule:AssessmentRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    active = registerOutput<bool?>('active');
    assessmentRuleId = registerOutput<String?>('assessmentRuleId');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sampleRule = registerOutput<AssessmentRuleSampleRule?>('sampleRule', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentRuleSampleRule.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    scheduleInfo = registerOutput<AssessmentRuleScheduleInfo?>('scheduleInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AssessmentRuleScheduleInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}

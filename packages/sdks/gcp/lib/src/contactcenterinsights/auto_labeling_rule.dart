import 'package:pulumi/pulumi.dart' as pulumi;
import 'auto_labeling_rule_args.dart';
import 'auto_labeling_rule_state.dart';

/// The CCAI Insights project wide auto labeling rule. This rule will be applied
/// to all conversations that match the filter defined in the rule.
///
///
/// To get more information about AutoLabelingRule, see:
///
/// * [API documentation](https://cloud.google.com/contact-center/insights/docs/reference/rest/v1/projects.locations.autoLabelingRules)
/// * How-to Guides
/// * [Configure auto labeling rules using the API](https://cloud.google.com/contact-center/insights/docs/auto-labeling-rule)
///
/// ## Example Usage
///
/// ## Import
///
/// AutoLabelingRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/autoLabelingRules/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, AutoLabelingRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:contactcenterinsights/autoLabelingRule:AutoLabelingRule default projects/{{project}}/locations/{{location}}/autoLabelingRules/{{name}}
/// $ pulumi import gcp:contactcenterinsights/autoLabelingRule:AutoLabelingRule default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:contactcenterinsights/autoLabelingRule:AutoLabelingRule default {{location}}/{{name}}
/// ```
class AutoLabelingRule extends pulumi.CustomResource {
  /// Whether the rule is active.
  late final pulumi.Output<bool?> active;
  /// A unique ID for the new AutoLabelingRule. This ID will become the final
  /// component of the AutoLabelingRule's resource name. If no ID is specified,
  /// a server-generated ID will be used.
  /// This value should be 4-64 characters and must match the regular
  /// expression `^[A-Za-z0-9]{4,64}$`.
  late final pulumi.Output<String?> autoLabelingRuleId;
  /// Conditions to apply for auto-labeling the label_key.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> conditions;
  /// The time at which this rule was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The description of the rule.
  late final pulumi.Output<String?> description;
  /// Display Name of the auto labeling rule.
  late final pulumi.Output<String?> displayName;
  /// The label key.
  late final pulumi.Output<String?> labelKey;
  /// The type of the label key.
  /// Possible values are: `LABEL_KEY_TYPE_UNSPECIFIED`, `LABEL_KEY_TYPE_CUSTOM`.
  late final pulumi.Output<String?> labelKeyType;
  /// Location of the resource.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the auto labeling rule.
  /// Format:
  /// projects/{project}/locations/{location}/autoLabelingRules/{auto_labeling_rule}
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The most recent time at which this rule was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AutoLabelingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AutoLabelingRule]. {@macro pulumi_contactcenterinsights_auto_labeling_rule_auto_labeling_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AutoLabelingRule(
    String name, {
    AutoLabelingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/autoLabelingRule:AutoLabelingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    autoLabelingRuleId = registerOutput<String?>('autoLabelingRuleId');
    conditions = registerOutput<List<Map<String, dynamic>>?>('conditions');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labelKey = registerOutput<String?>('labelKey');
    labelKeyType = registerOutput<String?>('labelKeyType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AutoLabelingRule] resource's state with the given [name] and [id].
  static AutoLabelingRule get(
    String name,
    pulumi.Input<String> id, {
    AutoLabelingRuleState? state,
  }) {
    return AutoLabelingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AutoLabelingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:contactcenterinsights/autoLabelingRule:AutoLabelingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    active = registerOutput<bool?>('active');
    autoLabelingRuleId = registerOutput<String?>('autoLabelingRuleId');
    conditions = registerOutput<List<Map<String, dynamic>>?>('conditions');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String?>('displayName');
    labelKey = registerOutput<String?>('labelKey');
    labelKeyType = registerOutput<String?>('labelKeyType');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    updateTime = registerOutput<String>('updateTime');
  }
}

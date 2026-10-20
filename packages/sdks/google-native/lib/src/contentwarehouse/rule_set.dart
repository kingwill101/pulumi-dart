import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_rule_response.dart';
import 'rule_set_args.dart';

/// Creates a ruleset.
class RuleSet extends pulumi.CustomResource {
  /// Short description of the rule-set.
  late final pulumi.Output<String> description;
  late final pulumi.Output<String> location;
  /// The resource name of the rule set. Managed internally. Format: projects/{project_number}/locations/{location}/ruleSet/{rule_set_id}. The name is ignored when creating a rule set.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// List of rules given by the customer.
  late final pulumi.Output<List<GoogleCloudContentwarehouseV1RuleResponse>> rules;
  /// Source of the rules i.e., customer name.
  late final pulumi.Output<String> source;

  /// Creates a new [RuleSet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RuleSet]. {@macro pulumi_contentwarehouse_v1_rule_set_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RuleSet(
    String name, {
    RuleSetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:contentwarehouse/v1:RuleSet',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['location', 'project']).merge(options),
        ) {
    description = registerOutput<String>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<GoogleCloudContentwarehouseV1RuleResponse>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1RuleResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1RuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<String>('source');
  }

  /// Creates a typed reference to an existing [RuleSet] resource.
  RuleSet.reference(String urn)
    : super(
        'google-native:contentwarehouse/v1:RuleSet',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String>('description');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rules = registerOutput<List<GoogleCloudContentwarehouseV1RuleResponse>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudContentwarehouseV1RuleResponse>(guardedValue, (value) => GoogleCloudContentwarehouseV1RuleResponse.fromMap((value as Map).cast<String, dynamic>())); });
    source = registerOutput<String>('source');
  }
}

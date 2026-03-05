import 'package:pulumi/pulumi.dart' as pulumi;
import 'release_args.dart';

/// Create a `Release`. Release names should reflect the developer's deployment practices. For example, the release name may include the environment name, application name, application version, or any other name meaningful to the developer. Once a `Release` refers to a `Ruleset`, the rules can be enforced by Firebase Rules-enabled services. More than one `Release` may be 'live' concurrently. Consider the following three `Release` names for `projects/foo` and the `Ruleset` to which they refer. Release Name -&gt; Ruleset Name * projects/foo/releases/prod -&gt; projects/foo/rulesets/uuid123 * projects/foo/releases/prod/beta -&gt; projects/foo/rulesets/uuid123 * projects/foo/releases/prod/v23 -&gt; projects/foo/rulesets/uuid456 The relationships reflect a `Ruleset` rollout in progress. The `prod` and `prod/beta` releases refer to the same `Ruleset`. However, `prod/v23` refers to a new `Ruleset`. The `Ruleset` reference for a `Release` may be updated using the UpdateRelease method.
class Release extends pulumi.CustomResource {
  /// Time the release was created.
  late final pulumi.Output<String> createTime;
  /// Format: `projects/{project_id}/releases/{release_id}`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Name of the `Ruleset` referred to by this `Release`. The `Ruleset` must exist for the `Release` to be created.
  late final pulumi.Output<String> rulesetName;
  /// Time the release was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [Release].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Release]. {@macro pulumi_firebaserules_v1_release_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Release(
    String name, {
    ReleaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:firebaserules/v1:Release',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    rulesetName = registerOutput<String>('rulesetName');
    updateTime = registerOutput<String>('updateTime');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_draft_args.dart';

/// Creates a new draft change request for a Pulumi ESC environment. Drafts allow proposing changes to an environment definition that can be reviewed and approved before being applied. This is part of the approvals workflow for environments. Returns a ChangeRequestRef containing the draft identifier. Requires the Approvals feature to be enabled for the organization.
class EnvironmentDraft extends pulumi.CustomResource {
  /// The change request identifier
  late final pulumi.Output<String?> changeRequestId;
  /// The latest revision number
  late final pulumi.Output<int?> latestRevisionNumber;
  /// Raw YAML body content.
  late final pulumi.Output<String?> yaml;

  /// Creates a new [EnvironmentDraft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EnvironmentDraft]. {@macro pulumi_api_esc_environment_draft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EnvironmentDraft(
    String name, {
    EnvironmentDraftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:EnvironmentDraft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    changeRequestId = registerOutput<String?>('changeRequestId');
    latestRevisionNumber = registerOutput<int?>('latestRevisionNumber');
    yaml = registerOutput<String?>('yaml');
  }
}

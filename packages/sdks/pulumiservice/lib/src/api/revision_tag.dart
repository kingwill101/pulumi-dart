import 'package:pulumi/pulumi.dart' as pulumi;
import 'revision_tag_args.dart';

/// Creates a new revision tag for a Pulumi ESC environment. Revision tags are named references that point to specific revision numbers, similar to Git tags. They allow pinning a stable reference to a known-good version of an environment. Tagged versions can be used in imports and Pulumi stack configuration (e.g., myproject/env@prod) to ensure stable references unaffected by subsequent changes. The built-in 'latest' tag always points to the most recent revision.
class RevisionTag extends pulumi.CustomResource {
  /// The timestamp when the tag was created.
  late final pulumi.Output<String> created;
  /// The login name of the user who last edited the tag.
  late final pulumi.Output<String?> editorLogin;
  /// The display name of the user who last edited the tag.
  late final pulumi.Output<String?> editorName;
  /// The timestamp when the tag was last modified.
  late final pulumi.Output<String> modified;
  /// The name of the tag.
  late final pulumi.Output<String> name;
  /// The revision number this tag points to.
  late final pulumi.Output<int> revision;

  /// Creates a new [RevisionTag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RevisionTag]. {@macro pulumi_api_esc_revision_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RevisionTag(
    String name, {
    RevisionTagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/esc:RevisionTag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    created = registerOutput<String>('created');
    editorLogin = registerOutput<String?>('editorLogin');
    editorName = registerOutput<String?>('editorName');
    modified = registerOutput<String>('modified');
    this.name = registerOutput<String>('name');
    revision = registerOutput<int>('revision');
  }
}

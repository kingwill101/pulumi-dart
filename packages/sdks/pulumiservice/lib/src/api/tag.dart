import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';

/// Creates a new tag on the specified stack. Tags are key-value metadata pairs that can be used for organization, filtering, and storing additional information about stacks. The request body must include both a tag name and value. Returns 400 if the tag name is invalid or the tag already exists. Built-in tags (such as those automatically set by the Pulumi CLI) follow specific naming conventions.
class Tag extends pulumi.CustomResource {
  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_api_stacks_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api/stacks:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        );
}

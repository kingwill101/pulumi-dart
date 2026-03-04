import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';

/// Creates a tag.
class Tag extends pulumi.CustomResource {
  late final pulumi.Output<String> location;

  /// The name of the tag, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/tags/tag1". If the package part contains slashes, the slashes are escaped. The tag part can only have characters in [a-zA-Z0-9\-._~:@], anything else must be URL encoded.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> packageId;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> repositoryId;

  /// The tag id to use for this repository.
  late final pulumi.Output<String?> tagId;

  /// The name of the version the tag refers to, for example: "projects/p1/locations/us-central1/repositories/repo1/packages/pkg1/versions/sha256:5243811" If the package or version ID parts contain slashes, the slashes are escaped.
  late final pulumi.Output<String> version;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_artifactregistry_v1_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(String name, {TagArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:artifactregistry/v1:Tag',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    packageId = registerOutput<String>('packageId');
    project = registerOutput<String>('project');
    repositoryId = registerOutput<String>('repositoryId');
    tagId = registerOutput<String?>('tagId');
    version = registerOutput<String>('version');
  }
}

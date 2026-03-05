import 'package:pulumi/pulumi.dart' as pulumi;
import 'tag_args.dart';
import 'tag_state.dart';

/// Creates a docker tag. It has the exact same functionality as the `docker tag` command. Deleting the resource will neither delete the source nor target images. The source image must exist on the machine running the docker daemon.
class Tag extends pulumi.CustomResource {
  /// Name of the source image.
  late final pulumi.Output<String> sourceImage;
  /// ImageID of the source image in the format of `sha256:&lt;&lt;ID&gt;&gt;`
  late final pulumi.Output<String> sourceImageId;
  /// List of values which cause the tag to be (re)created. This is useful for triggering a new tag when the source image changes.
  late final pulumi.Output<List<String>?> tagTriggers;
  /// Name of the target image.
  late final pulumi.Output<String> targetImage;

  /// Creates a new [Tag].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Tag]. {@macro pulumi_index_tag_tag_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Tag(
    String name, {
    TagArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/tag:Tag',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    sourceImage = registerOutput<String>('sourceImage');
    sourceImageId = registerOutput<String>('sourceImageId');
    tagTriggers = registerOutput<List<String>?>('tagTriggers');
    targetImage = registerOutput<String>('targetImage');
  }

  /// Gets an existing [Tag] resource's state with the given [name] and [id].
  static Tag get(
    String name,
    pulumi.Input<String> id, {
    TagState? state,
  }) {
    return Tag._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Tag._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'docker:index/tag:Tag',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    sourceImage = registerOutput<String>('sourceImage');
    sourceImageId = registerOutput<String>('sourceImageId');
    tagTriggers = registerOutput<List<String>?>('tagTriggers');
    targetImage = registerOutput<String>('targetImage');
  }
}

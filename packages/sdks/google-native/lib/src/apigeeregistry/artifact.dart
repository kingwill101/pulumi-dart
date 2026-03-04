import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_args.dart';

/// Creates a specified artifact.
class Artifact extends pulumi.CustomResource {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final pulumi.Output<Map<String, String>> annotations;
  late final pulumi.Output<String> apiId;

  /// Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final pulumi.Output<String> artifactId;

  /// Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  late final pulumi.Output<String> contents;

  /// Creation timestamp.
  late final pulumi.Output<String> createTime;

  /// A SHA-256 hash of the artifact's contents. If the artifact is gzipped, this is the hash of the uncompressed artifact.
  late final pulumi.Output<String> hash;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  late final pulumi.Output<String> mimeType;

  /// Resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The size of the artifact in bytes. If the artifact is gzipped, this is the size of the uncompressed artifact.
  late final pulumi.Output<int> sizeBytes;
  late final pulumi.Output<String> specId;

  /// Last update timestamp.
  late final pulumi.Output<String> updateTime;
  late final pulumi.Output<String> versionId;

  /// Creates a new [Artifact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Artifact]. {@macro pulumi_apigeeregistry_v1_artifact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Artifact(
    String name, {
    ArtifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:apigeeregistry/v1:Artifact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    apiId = registerOutput<String>('apiId');
    artifactId = registerOutput<String>('artifactId');
    contents = registerOutput<String>('contents');
    createTime = registerOutput<String>('createTime');
    hash = registerOutput<String>('hash');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    mimeType = registerOutput<String>('mimeType');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    sizeBytes = registerOutput<int>('sizeBytes');
    specId = registerOutput<String>('specId');
    updateTime = registerOutput<String>('updateTime');
    versionId = registerOutput<String>('versionId');
  }
}

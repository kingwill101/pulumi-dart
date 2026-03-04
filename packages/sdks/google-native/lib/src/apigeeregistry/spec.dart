import 'package:pulumi/pulumi.dart' as pulumi;
import 'spec_args.dart';

/// Creates a specified spec.
class Spec extends pulumi.CustomResource {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  late final pulumi.Output<Map<String, String>> annotations;
  late final pulumi.Output<String> apiId;

  /// Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  late final pulumi.Output<String> apiSpecId;

  /// Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  late final pulumi.Output<String> contents;

  /// Creation timestamp; when the spec resource was created.
  late final pulumi.Output<String> createTime;

  /// A detailed description.
  late final pulumi.Output<String> description;

  /// A possibly-hierarchical name used to refer to the spec from other specs.
  late final pulumi.Output<String> filename;

  /// A SHA-256 hash of the spec's contents. If the spec is gzipped, this is the hash of the uncompressed spec.
  late final pulumi.Output<String> hash;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  late final pulumi.Output<String> mimeType;

  /// Resource name.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// Revision creation timestamp; when the represented revision was created.
  late final pulumi.Output<String> revisionCreateTime;

  /// Immutable. The revision ID of the spec. A new revision is committed whenever the spec contents are changed. The format is an 8-character hexadecimal string.
  late final pulumi.Output<String> revisionId;

  /// Last update timestamp: when the represented revision was last modified.
  late final pulumi.Output<String> revisionUpdateTime;

  /// The size of the spec file in bytes. If the spec is gzipped, this is the size of the uncompressed spec.
  late final pulumi.Output<int> sizeBytes;

  /// The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  late final pulumi.Output<String> sourceUri;
  late final pulumi.Output<String> versionId;

  /// Creates a new [Spec].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Spec]. {@macro pulumi_apigeeregistry_v1_spec_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Spec(String name, {SpecArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:apigeeregistry/v1:Spec',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    annotations = registerOutput<Map<String, String>>('annotations');
    apiId = registerOutput<String>('apiId');
    apiSpecId = registerOutput<String>('apiSpecId');
    contents = registerOutput<String>('contents');
    createTime = registerOutput<String>('createTime');
    description = registerOutput<String>('description');
    filename = registerOutput<String>('filename');
    hash = registerOutput<String>('hash');
    labels = registerOutput<Map<String, String>>('labels');
    location = registerOutput<String>('location');
    mimeType = registerOutput<String>('mimeType');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    revisionCreateTime = registerOutput<String>('revisionCreateTime');
    revisionId = registerOutput<String>('revisionId');
    revisionUpdateTime = registerOutput<String>('revisionUpdateTime');
    sizeBytes = registerOutput<int>('sizeBytes');
    sourceUri = registerOutput<String>('sourceUri');
    versionId = registerOutput<String>('versionId');
  }
}

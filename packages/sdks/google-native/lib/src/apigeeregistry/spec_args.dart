// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_spec_args_doc}
/// The set of arguments for Spec.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_spec_args_doc}
class SpecArgs {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> apiId;
  /// Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> apiSpecId;
  /// Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  final pulumi.Input<String>? contents;
  /// A detailed description.
  final pulumi.Input<String>? description;
  /// A possibly-hierarchical name used to refer to the spec from other specs.
  final pulumi.Input<String>? filename;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final pulumi.Input<String>? mimeType;
  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;
  /// The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  final pulumi.Input<String>? sourceUri;
  final pulumi.Input<String> versionId;

  /// Creates a new [SpecArgs].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiId] Required.
  /// [apiSpecId] Required. The ID to use for the spec, which will become the final component of the spec's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  /// [contents] Input only. The contents of the spec. Provided by API callers when specs are created or updated. To access the contents of a spec, use GetApiSpecContents.
  /// [description] A detailed description.
  /// [filename] A possibly-hierarchical name used to refer to the spec from other specs.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [location] Optional.
  /// [mimeType] A style (format) descriptor for this spec that is specified as a [Media Type](https://en.wikipedia.org/wiki/Media_type). Possible values include `application/vnd.apigee.proto`, `application/vnd.apigee.openapi`, and `application/vnd.apigee.graphql`, with possible suffixes representing compression types. These hypothetical names are defined in the vendor tree defined in RFC6838 (https://tools.ietf.org/html/rfc6838) and are not final. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  /// [name] Resource name.
  /// [project] Optional.
  /// [sourceUri] The original source URI of the spec (if one exists). This is an external location that can be used for reference purposes but which may not be authoritative since this external resource may change after the spec is retrieved.
  /// [versionId] Required.
  SpecArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> apiSpecId,
    pulumi.Output<String>? contents,
    pulumi.Output<String>? description,
    pulumi.Output<String>? filename,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mimeType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? sourceUri,
    required pulumi.Output<String> versionId,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      apiId = pulumi.Input.asInput<String>(apiId),
      apiSpecId = pulumi.Input.asInput<String>(apiSpecId),
      contents = pulumi.Input.asOptionalInput<String>(contents),
      description = pulumi.Input.asOptionalInput<String>(description),
      filename = pulumi.Input.asOptionalInput<String>(filename),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mimeType = pulumi.Input.asOptionalInput<String>(mimeType),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      sourceUri = pulumi.Input.asOptionalInput<String>(sourceUri),
      versionId = pulumi.Input.asInput<String>(versionId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiId': apiId,
      'apiSpecId': apiSpecId,
      'contents': ?contents,
      'description': ?description,
      'filename': ?filename,
      'labels': ?labels,
      'location': ?location,
      'mimeType': ?mimeType,
      'name': ?name,
      'project': ?project,
      'sourceUri': ?sourceUri,
      'versionId': versionId,
    };
  }

  factory SpecArgs.fromMap(Map<String, dynamic> map) {
    return SpecArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      apiSpecId: pulumi.Output.create<String>(map['apiSpecId'] as String),
      contents: map['contents'] == null ? null : pulumi.Output.create<String>(map['contents'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      filename: map['filename'] == null ? null : pulumi.Output.create<String>(map['filename'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mimeType: map['mimeType'] == null ? null : pulumi.Output.create<String>(map['mimeType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      sourceUri: map['sourceUri'] == null ? null : pulumi.Output.create<String>(map['sourceUri'] as String),
      versionId: pulumi.Output.create<String>(map['versionId'] as String),
    );
  }
}


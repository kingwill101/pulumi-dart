// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_deployment_artifact_args_doc}
/// The set of arguments for DeploymentArtifact.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_deployment_artifact_args_doc}
class DeploymentArtifactArgs {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> apiId;
  /// Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> artifactId;
  /// Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  final pulumi.Input<String>? contents;
  final pulumi.Input<String> deploymentId;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  final pulumi.Input<String>? mimeType;
  /// Resource name.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [DeploymentArtifactArgs].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiId] Required.
  /// [artifactId] Required. The ID to use for the artifact, which will become the final component of the artifact's resource name. This value should be 4-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  /// [contents] Input only. The contents of the artifact. Provided by API callers when artifacts are created or replaced. To access the contents of an artifact, use GetArtifactContents.
  /// [deploymentId] Required.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with "registry.googleapis.com/" and cannot be changed.
  /// [location] Optional.
  /// [mimeType] A content type specifier for the artifact. Content type specifiers are Media Types (https://en.wikipedia.org/wiki/Media_type) with a possible "schema" parameter that specifies a schema for the stored information. Content types can specify compression. Currently only GZip compression is supported (indicated with "+gzip").
  /// [name] Resource name.
  /// [project] Optional.
  DeploymentArtifactArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> artifactId,
    pulumi.Output<String>? contents,
    required pulumi.Output<String> deploymentId,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? mimeType,
    pulumi.Output<String>? name,
    pulumi.Output<String>? project,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      apiId = pulumi.Input.asInput<String>(apiId),
      artifactId = pulumi.Input.asInput<String>(artifactId),
      contents = pulumi.Input.asOptionalInput<String>(contents),
      deploymentId = pulumi.Input.asInput<String>(deploymentId),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      mimeType = pulumi.Input.asOptionalInput<String>(mimeType),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiId': apiId,
      'artifactId': artifactId,
      'contents': ?contents,
      'deploymentId': deploymentId,
      'labels': ?labels,
      'location': ?location,
      'mimeType': ?mimeType,
      'name': ?name,
      'project': ?project,
    };
  }

  factory DeploymentArtifactArgs.fromMap(Map<String, dynamic> map) {
    return DeploymentArtifactArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      artifactId: pulumi.Output.create<String>(map['artifactId'] as String),
      contents: map['contents'] == null ? null : pulumi.Output.create<String>(map['contents'] as String),
      deploymentId: pulumi.Output.create<String>(map['deploymentId'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      mimeType: map['mimeType'] == null ? null : pulumi.Output.create<String>(map['mimeType'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


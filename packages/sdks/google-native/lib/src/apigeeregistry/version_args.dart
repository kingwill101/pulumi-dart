// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apigeeregistry_v1_version_args_doc}
/// The set of arguments for Version.
/// {@endtemplate}
/// {@macro pulumi_apigeeregistry_v1_version_args_doc}
class VersionArgs {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final pulumi.Input<Map<String, String>>? annotations;
  final pulumi.Input<String> apiId;
  /// Required. The ID to use for the version, which will become the final component of the version's resource name. This value should be 1-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  final pulumi.Input<String> apiVersionId;
  /// A detailed description.
  final pulumi.Input<String>? description;
  /// Human-meaningful name.
  final pulumi.Input<String>? displayName;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  /// Resource name.
  final pulumi.Input<String>? name;
  /// The primary spec for this version. Format: projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}
  final pulumi.Input<String>? primarySpec;
  final pulumi.Input<String>? project;
  /// A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g., "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "RETIRED".
  final pulumi.Input<String>? state;

  /// Creates a new [VersionArgs].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiId] Required.
  /// [apiVersionId] Required. The ID to use for the version, which will become the final component of the version's resource name. This value should be 1-63 characters, and valid characters are /a-z-/. Following AIP-162, IDs must not have the form of a UUID.
  /// [description] A detailed description.
  /// [displayName] Human-meaningful name.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [location] Optional.
  /// [name] Resource name.
  /// [primarySpec] The primary spec for this version. Format: projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}
  /// [project] Optional.
  /// [state] A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g., "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "RETIRED".
  VersionArgs({
    pulumi.Output<Map<String, String>>? annotations,
    required pulumi.Output<String> apiId,
    required pulumi.Output<String> apiVersionId,
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<Map<String, String>>? labels,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? primarySpec,
    pulumi.Output<String>? project,
    pulumi.Output<String>? state,
  }) :
      annotations = pulumi.Input.asOptionalInput<Map<String, String>>(annotations),
      apiId = pulumi.Input.asInput<String>(apiId),
      apiVersionId = pulumi.Input.asInput<String>(apiVersionId),
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      primarySpec = pulumi.Input.asOptionalInput<String>(primarySpec),
      project = pulumi.Input.asOptionalInput<String>(project),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'apiId': apiId,
      'apiVersionId': apiVersionId,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'location': ?location,
      'name': ?name,
      'primarySpec': ?primarySpec,
      'project': ?project,
      'state': ?state,
    };
  }

  factory VersionArgs.fromMap(Map<String, dynamic> map) {
    return VersionArgs(
      annotations: map['annotations'] == null ? null : pulumi.Output.create<Map<String, String>>((map['annotations'] as Map).cast<String, String>()),
      apiId: pulumi.Output.create<String>(map['apiId'] as String),
      apiVersionId: pulumi.Output.create<String>(map['apiVersionId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      labels: map['labels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['labels'] as Map).cast<String, String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      primarySpec: map['primarySpec'] == null ? null : pulumi.Output.create<String>(map['primarySpec'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}


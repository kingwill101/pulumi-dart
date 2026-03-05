// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDeployment.
class GetDeploymentResult {
  /// Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  final String accessGuidance;
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Map<String, String> annotations;
  /// The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  final String apiSpecRevision;
  /// Creation timestamp; when the deployment resource was created.
  final String createTime;
  /// A detailed description.
  final String description;
  /// Human-meaningful name.
  final String displayName;
  /// The address where the deployment is serving. Changes to this value will update the revision.
  final String endpointUri;
  /// The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  final String externalChannelUri;
  /// Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  final String intendedAudience;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final Map<String, String> labels;
  /// Resource name.
  final String name;
  /// Revision creation timestamp; when the represented revision was created.
  final String revisionCreateTime;
  /// Immutable. The revision ID of the deployment. A new revision is committed whenever the deployment contents are changed. The format is an 8-character hexadecimal string.
  final String revisionId;
  /// Last update timestamp: when the represented revision was last modified.
  final String revisionUpdateTime;

  /// Creates a new [GetDeploymentResult].
  /// [accessGuidance] Text briefly describing how to access the endpoint. Changes to this value will not affect the revision.
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [apiSpecRevision] The full resource name (including revision ID) of the spec of the API being served by the deployment. Changes to this value will update the revision. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec@revision}`
  /// [createTime] Creation timestamp; when the deployment resource was created.
  /// [description] A detailed description.
  /// [displayName] Human-meaningful name.
  /// [endpointUri] The address where the deployment is serving. Changes to this value will update the revision.
  /// [externalChannelUri] The address of the external channel of the API (e.g., the Developer Portal). Changes to this value will not affect the revision.
  /// [intendedAudience] Text briefly identifying the intended audience of the API. Changes to this value will not affect the revision.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [name] Resource name.
  /// [revisionCreateTime] Revision creation timestamp; when the represented revision was created.
  /// [revisionId] Immutable. The revision ID of the deployment. A new revision is committed whenever the deployment contents are changed. The format is an 8-character hexadecimal string.
  /// [revisionUpdateTime] Last update timestamp: when the represented revision was last modified.
  GetDeploymentResult({
    required this.accessGuidance,
    required this.annotations,
    required this.apiSpecRevision,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.endpointUri,
    required this.externalChannelUri,
    required this.intendedAudience,
    required this.labels,
    required this.name,
    required this.revisionCreateTime,
    required this.revisionId,
    required this.revisionUpdateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessGuidance': accessGuidance,
      'annotations': annotations,
      'apiSpecRevision': apiSpecRevision,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'endpointUri': endpointUri,
      'externalChannelUri': externalChannelUri,
      'intendedAudience': intendedAudience,
      'labels': labels,
      'name': name,
      'revisionCreateTime': revisionCreateTime,
      'revisionId': revisionId,
      'revisionUpdateTime': revisionUpdateTime,
    };
  }

  factory GetDeploymentResult.fromMap(Map<String, dynamic> map) {
    return GetDeploymentResult(
      accessGuidance: map['accessGuidance'] as String,
      annotations: (map['annotations'] as Map).cast<String, String>(),
      apiSpecRevision: map['apiSpecRevision'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      endpointUri: map['endpointUri'] as String,
      externalChannelUri: map['externalChannelUri'] as String,
      intendedAudience: map['intendedAudience'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      revisionCreateTime: map['revisionCreateTime'] as String,
      revisionId: map['revisionId'] as String,
      revisionUpdateTime: map['revisionUpdateTime'] as String,
    );
  }
}


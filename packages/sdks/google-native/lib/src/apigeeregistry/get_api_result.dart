// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getApi.
class GetApiResult {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Map<String, String> annotations;

  /// A user-definable description of the availability of this service. Format: free-form, but we expect single words that describe availability, e.g., "NONE", "TESTING", "PREVIEW", "GENERAL", "DEPRECATED", "SHUTDOWN".
  final String availability;

  /// Creation timestamp.
  final String createTime;

  /// A detailed description.
  final String description;

  /// Human-meaningful name.
  final String displayName;

  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores, and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final Map<String, String> labels;

  /// Resource name.
  final String name;

  /// The recommended deployment of the API. Format: `projects/{project}/locations/{location}/apis/{api}/deployments/{deployment}`
  final String recommendedDeployment;

  /// The recommended version of the API. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  final String recommendedVersion;

  /// Last update timestamp.
  final String updateTime;

  /// Creates a new [GetApiResult].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [availability] A user-definable description of the availability of this service. Format: free-form, but we expect single words that describe availability, e.g., "NONE", "TESTING", "PREVIEW", "GENERAL", "DEPRECATED", "SHUTDOWN".
  /// [createTime] Creation timestamp.
  /// [description] A detailed description.
  /// [displayName] Human-meaningful name.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores, and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [name] Resource name.
  /// [recommendedDeployment] The recommended deployment of the API. Format: `projects/{project}/locations/{location}/apis/{api}/deployments/{deployment}`
  /// [recommendedVersion] The recommended version of the API. Format: `projects/{project}/locations/{location}/apis/{api}/versions/{version}`
  /// [updateTime] Last update timestamp.
  GetApiResult({
    required this.annotations,
    required this.availability,
    required this.createTime,
    required this.description,
    required this.displayName,
    required this.labels,
    required this.name,
    required this.recommendedDeployment,
    required this.recommendedVersion,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': annotations,
      'availability': availability,
      'createTime': createTime,
      'description': description,
      'displayName': displayName,
      'labels': labels,
      'name': name,
      'recommendedDeployment': recommendedDeployment,
      'recommendedVersion': recommendedVersion,
      'updateTime': updateTime,
    };
  }

  factory GetApiResult.fromMap(Map<String, dynamic> map) {
    return GetApiResult(
      annotations: (map['annotations'] as Map).cast<String, String>(),
      availability: map['availability'] as String,
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      recommendedDeployment: map['recommendedDeployment'] as String,
      recommendedVersion: map['recommendedVersion'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

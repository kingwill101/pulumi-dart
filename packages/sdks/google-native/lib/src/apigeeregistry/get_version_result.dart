// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVersion.
class GetVersionResult {
  /// Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  final Map<String, String>? annotations;
  /// Creation timestamp.
  final String? createTime;
  /// A detailed description.
  final String? description;
  /// Human-meaningful name.
  final String? displayName;
  /// Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  final Map<String, String>? labels;
  /// Resource name.
  final String? name;
  /// The primary spec for this version. Format: projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}
  final String? primarySpec;
  /// A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g., "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "RETIRED".
  final String? state;
  /// Last update timestamp.
  final String? updateTime;

  /// Creates a new [GetVersionResult].
  /// [annotations] Annotations attach non-identifying metadata to resources. Annotation keys and values are less restricted than those of labels, but should be generally used for small values of broad interest. Larger, topic- specific metadata should be stored in Artifacts.
  /// [createTime] Creation timestamp.
  /// [description] A detailed description.
  /// [displayName] Human-meaningful name.
  /// [labels] Labels attach identifying metadata to resources. Identifying metadata can be used to filter list operations. Label keys and values can be no longer than 64 characters (Unicode codepoints), can only contain lowercase letters, numeric characters, underscores and dashes. International characters are allowed. No more than 64 user labels can be associated with one resource (System labels are excluded). See https://goo.gl/xmQnxf for more information and examples of labels. System reserved label keys are prefixed with `apigeeregistry.googleapis.com/` and cannot be changed.
  /// [name] Resource name.
  /// [primarySpec] The primary spec for this version. Format: projects/{project}/locations/{location}/apis/{api}/versions/{version}/specs/{spec}
  /// [state] A user-definable description of the lifecycle phase of this API version. Format: free-form, but we expect single words that describe API maturity, e.g., "CONCEPT", "DESIGN", "DEVELOPMENT", "STAGING", "PRODUCTION", "DEPRECATED", "RETIRED".
  /// [updateTime] Last update timestamp.
  const GetVersionResult({
    this.annotations,
    this.createTime,
    this.description,
    this.displayName,
    this.labels,
    this.name,
    this.primarySpec,
    this.state,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotations': ?annotations,
      'createTime': ?createTime,
      'description': ?description,
      'displayName': ?displayName,
      'labels': ?labels,
      'name': ?name,
      'primarySpec': ?primarySpec,
      'state': ?state,
      'updateTime': ?updateTime,
    };
  }

  factory GetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetVersionResult(
      annotations: (() { final guardedValue = map['annotations']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      primarySpec: (() { final guardedValue = map['primarySpec']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

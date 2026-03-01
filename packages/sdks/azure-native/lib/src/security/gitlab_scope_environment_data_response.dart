// ignore_for_file: unused_element, unnecessary_cast


/// The GitLab scope connector's environment data
class GitlabScopeEnvironmentDataResponse {
  /// The type of the environment data.
  /// Expected value is 'GitlabScope'.
  final String environmentType;

  /// Creates a new [GitlabScopeEnvironmentDataResponse].
  /// [environmentType] The type of the environment data.
  GitlabScopeEnvironmentDataResponse({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory GitlabScopeEnvironmentDataResponse.fromMap(Map<String, dynamic> map) {
    return GitlabScopeEnvironmentDataResponse(
      environmentType: map['environmentType'] as String,
    );
  }
}


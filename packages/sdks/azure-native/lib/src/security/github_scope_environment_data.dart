// ignore_for_file: unused_element, unnecessary_cast


/// The github scope connector's environment data
class GithubScopeEnvironmentData {
  /// The type of the environment data.
  /// Expected value is 'GithubScope'.
  final String environmentType;

  /// Creates a new [GithubScopeEnvironmentData].
  /// [environmentType] The type of the environment data.
  GithubScopeEnvironmentData({
    required this.environmentType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'environmentType': environmentType,
    };
  }

  factory GithubScopeEnvironmentData.fromMap(Map<String, dynamic> map) {
    return GithubScopeEnvironmentData(
      environmentType: map['environmentType'] as String,
    );
  }
}


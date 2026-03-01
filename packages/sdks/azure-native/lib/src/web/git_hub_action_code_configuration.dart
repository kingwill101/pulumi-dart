// ignore_for_file: unused_element, unnecessary_cast


/// The GitHub action code configuration.
class GitHubActionCodeConfiguration {
  /// Runtime stack is used to determine the workflow file content for code base apps.
  final String? runtimeStack;
  /// Runtime version is used to determine what build version to set in the workflow file.
  final String? runtimeVersion;

  /// Creates a new [GitHubActionCodeConfiguration].
  /// [runtimeStack] Runtime stack is used to determine the workflow file content for code base apps.
  /// [runtimeVersion] Runtime version is used to determine what build version to set in the workflow file.
  GitHubActionCodeConfiguration({
    this.runtimeStack,
    this.runtimeVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeStack': ?runtimeStack,
      'runtimeVersion': ?runtimeVersion,
    };
  }

  factory GitHubActionCodeConfiguration.fromMap(Map<String, dynamic> map) {
    return GitHubActionCodeConfiguration(
      runtimeStack: map['runtimeStack'] == null ? null : map['runtimeStack'] as String,
      runtimeVersion: map['runtimeVersion'] == null ? null : map['runtimeVersion'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig {
  /// Directory, relative to the source root, in which to run the build.
  final pulumi.Input<String> dir;
  /// The Developer Connect Git repository link, formatted as projects/*/locations/*/connections/*/gitRepositoryLink/*.
  final pulumi.Input<String> gitRepositoryLink;
  /// The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
  final pulumi.Input<String> revision;

  /// Creates a new [AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig].
  /// [dir] Directory, relative to the source root, in which to run the build.
  /// [gitRepositoryLink] The Developer Connect Git repository link, formatted as projects/*/locations/*/connections/*/gitRepositoryLink/*.
  /// [revision] The revision to fetch from the Git repository such as a branch, a tag, a commit SHA, or any Git ref.
  const AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig({
    required this.dir,
    required this.gitRepositoryLink,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dir': dir,
      'gitRepositoryLink': gitRepositoryLink,
      'revision': revision,
    };
  }

  factory AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig.fromMap(Map<String, dynamic> map) {
    return AiReasoningEngineSpecSourceCodeSpecDeveloperConnectSourceConfig(
      dir: pulumi.Input.fromValue(map['dir'] as String),
      gitRepositoryLink: pulumi.Input.fromValue(map['gitRepositoryLink'] as String),
      revision: pulumi.Input.fromValue(map['revision'] as String),
    );
  }
}

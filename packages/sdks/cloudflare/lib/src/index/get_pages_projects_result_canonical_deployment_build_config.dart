// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPagesProjectsResultCanonicalDeploymentBuildConfig {
  /// Enable build caching for the project.
  final pulumi.Input<bool> buildCaching;
  /// Command used to build project.
  final pulumi.Input<String> buildCommand;
  /// Assets output directory of the build.
  final pulumi.Input<String> destinationDir;
  /// Directory to run the command.
  final pulumi.Input<String> rootDir;
  /// The classifying tag for analytics.
  final pulumi.Input<String> webAnalyticsTag;
  /// The auth token for analytics.
  final pulumi.Input<String> webAnalyticsToken;

  /// Creates a new [GetPagesProjectsResultCanonicalDeploymentBuildConfig].
  /// [buildCaching] Enable build caching for the project.
  /// [buildCommand] Command used to build project.
  /// [destinationDir] Assets output directory of the build.
  /// [rootDir] Directory to run the command.
  /// [webAnalyticsTag] The classifying tag for analytics.
  /// [webAnalyticsToken] The auth token for analytics.
  const GetPagesProjectsResultCanonicalDeploymentBuildConfig({
    required this.buildCaching,
    required this.buildCommand,
    required this.destinationDir,
    required this.rootDir,
    required this.webAnalyticsTag,
    required this.webAnalyticsToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildCaching': buildCaching,
      'buildCommand': buildCommand,
      'destinationDir': destinationDir,
      'rootDir': rootDir,
      'webAnalyticsTag': webAnalyticsTag,
      'webAnalyticsToken': webAnalyticsToken,
    };
  }

  factory GetPagesProjectsResultCanonicalDeploymentBuildConfig.fromMap(Map<String, dynamic> map) {
    return GetPagesProjectsResultCanonicalDeploymentBuildConfig(
      buildCaching: pulumi.Input.fromValue(map['buildCaching'] as bool),
      buildCommand: pulumi.Input.fromValue(map['buildCommand'] as String),
      destinationDir: pulumi.Input.fromValue(map['destinationDir'] as String),
      rootDir: pulumi.Input.fromValue(map['rootDir'] as String),
      webAnalyticsTag: pulumi.Input.fromValue(map['webAnalyticsTag'] as String),
      webAnalyticsToken: pulumi.Input.fromValue(map['webAnalyticsToken'] as String),
    );
  }
}

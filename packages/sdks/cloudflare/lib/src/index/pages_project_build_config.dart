// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PagesProjectBuildConfig {
  /// Enable build caching for the project.
  final pulumi.Input<bool?>? buildCaching;
  /// Command used to build project.
  final pulumi.Input<String?>? buildCommand;
  /// Output directory of the build.
  final pulumi.Input<String?>? destinationDir;
  /// Directory to run the command.
  final pulumi.Input<String?>? rootDir;
  /// The classifying tag for analytics.
  final pulumi.Input<String?>? webAnalyticsTag;
  /// The auth token for analytics.
  final pulumi.Input<String?>? webAnalyticsToken;

  /// Creates a new [PagesProjectBuildConfig].
  /// [buildCaching] Enable build caching for the project.
  /// [buildCommand] Command used to build project.
  /// [destinationDir] Output directory of the build.
  /// [rootDir] Directory to run the command.
  /// [webAnalyticsTag] The classifying tag for analytics.
  /// [webAnalyticsToken] The auth token for analytics.
  const PagesProjectBuildConfig({
    this.buildCaching,
    this.buildCommand,
    this.destinationDir,
    this.rootDir,
    this.webAnalyticsTag,
    this.webAnalyticsToken,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'buildCaching': ?buildCaching,
      'buildCommand': ?buildCommand,
      'destinationDir': ?destinationDir,
      'rootDir': ?rootDir,
      'webAnalyticsTag': ?webAnalyticsTag,
      'webAnalyticsToken': ?webAnalyticsToken,
    };
  }

  factory PagesProjectBuildConfig.fromMap(Map<String, dynamic> map) {
    return PagesProjectBuildConfig(
      buildCaching: (() { final guardedValue = map['buildCaching']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      buildCommand: (() { final guardedValue = map['buildCommand']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationDir: (() { final guardedValue = map['destinationDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rootDir: (() { final guardedValue = map['rootDir']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAnalyticsTag: (() { final guardedValue = map['webAnalyticsTag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webAnalyticsToken: (() { final guardedValue = map['webAnalyticsToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

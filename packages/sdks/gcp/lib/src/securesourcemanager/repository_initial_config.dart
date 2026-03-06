// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RepositoryInitialConfig {
  /// Default branch name of the repository.
  final pulumi.Input<String>? defaultBranch;
  /// List of gitignore template names user can choose from.
  /// Valid values can be viewed at https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
  final pulumi.Input<List<String>>? gitignores;
  /// License template name user can choose from.
  /// Valid values can be viewed at https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
  final pulumi.Input<String>? license;
  /// README template name.
  /// Valid values can be viewed at https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
  final pulumi.Input<String>? readme;

  /// Creates a new [RepositoryInitialConfig].
  /// [defaultBranch] Default branch name of the repository.
  /// [gitignores] List of gitignore template names user can choose from.
  /// [license] License template name user can choose from.
  /// [readme] README template name.
  const RepositoryInitialConfig({
    this.defaultBranch,
    this.gitignores,
    this.license,
    this.readme,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'defaultBranch': ?defaultBranch,
      'gitignores': ?gitignores,
      'license': ?license,
      'readme': ?readme,
    };
  }

  factory RepositoryInitialConfig.fromMap(Map<String, dynamic> map) {
    return RepositoryInitialConfig(
      defaultBranch: (() { final guardedValue = map['defaultBranch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gitignores: (() { final guardedValue = map['gitignores']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      license: (() { final guardedValue = map['license']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      readme: (() { final guardedValue = map['readme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


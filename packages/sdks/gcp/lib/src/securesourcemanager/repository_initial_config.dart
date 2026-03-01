// ignore_for_file: unused_element, unnecessary_cast


class RepositoryInitialConfig {
  /// Default branch name of the repository.
  final String? defaultBranch;
  /// List of gitignore template names user can choose from.
  /// Valid values can be viewed at https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
  final List<String>? gitignores;
  /// License template name user can choose from.
  /// Valid values can be viewed at https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
  final String? license;
  /// README template name.
  /// Valid values can be viewed at https://cloud.google.com/secure-source-manager/docs/reference/rest/v1/projects.locations.repositories#initialconfig.
  final String? readme;

  /// Creates a new [RepositoryInitialConfig].
  /// [defaultBranch] Default branch name of the repository.
  /// [gitignores] List of gitignore template names user can choose from.
  /// [license] License template name user can choose from.
  /// [readme] README template name.
  RepositoryInitialConfig({
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
      defaultBranch: map['defaultBranch'] == null ? null : map['defaultBranch'] as String,
      gitignores: map['gitignores'] == null ? null : (map['gitignores'] as List).cast<String>(),
      license: map['license'] == null ? null : map['license'] as String,
      readme: map['readme'] == null ? null : map['readme'] as String,
    );
  }
}


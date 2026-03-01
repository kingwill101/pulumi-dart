// ignore_for_file: unused_element, unnecessary_cast


/// Npm package to upload to Artifact Registry upon successful completion of all build steps.
class NpmPackage {
  /// Path to the package.json. e.g. workspace/path/to/package
  final String? packagePath;
  /// Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY" Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
  final String? repository;

  /// Creates a new [NpmPackage].
  /// [packagePath] Path to the package.json. e.g. workspace/path/to/package
  /// [repository] Artifact Registry repository, in the form "https://$REGION-npm.pkg.dev/$PROJECT/$REPOSITORY" Npm package in the workspace specified by path will be zipped and uploaded to Artifact Registry with this location as a prefix.
  NpmPackage({
    this.packagePath,
    this.repository,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'packagePath': ?packagePath,
      'repository': ?repository,
    };
  }

  factory NpmPackage.fromMap(Map<String, dynamic> map) {
    return NpmPackage(
      packagePath: map['packagePath'] == null ? null : map['packagePath'] as String,
      repository: map['repository'] == null ? null : map['repository'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


class GdcSparkApplicationSparkRApplicationConfig {
  /// HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  final List<String>? archiveUris;
  /// The arguments to pass to the driver.  Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  final List<String>? args;
  /// HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  final List<String>? fileUris;
  /// The HCFS URI of the main R file to use as the driver. Must be a .R file.
  final String mainRFileUri;

  /// Creates a new [GdcSparkApplicationSparkRApplicationConfig].
  /// [archiveUris] HCFS URIs of archives to be extracted into the working directory of each executor. Supported file types: .jar, .tar, .tar.gz, .tgz, and .zip.
  /// [args] The arguments to pass to the driver.  Do not include arguments, such as `--conf`, that can be set as job properties, since a collision may occur that causes an incorrect job submission.
  /// [fileUris] HCFS URIs of files to be placed in the working directory of each executor. Useful for naively parallel tasks.
  /// [mainRFileUri] The HCFS URI of the main R file to use as the driver. Must be a .R file.
  GdcSparkApplicationSparkRApplicationConfig({
    this.archiveUris,
    this.args,
    this.fileUris,
    required this.mainRFileUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'archiveUris': ?archiveUris,
      'args': ?args,
      'fileUris': ?fileUris,
      'mainRFileUri': mainRFileUri,
    };
  }

  factory GdcSparkApplicationSparkRApplicationConfig.fromMap(Map<String, dynamic> map) {
    return GdcSparkApplicationSparkRApplicationConfig(
      archiveUris: map['archiveUris'] == null ? null : (map['archiveUris'] as List).cast<String>(),
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      fileUris: map['fileUris'] == null ? null : (map['fileUris'] as List).cast<String>(),
      mainRFileUri: map['mainRFileUri'] as String,
    );
  }
}


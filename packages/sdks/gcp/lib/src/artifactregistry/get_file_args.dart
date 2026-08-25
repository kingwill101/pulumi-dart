// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_artifactregistry_get_file_get_file_args_doc}
/// Arguments for getFile.
/// {@endtemplate}
/// {@macro pulumi_artifactregistry_get_file_get_file_args_doc}
class GetFileArgs {
  /// The Artifact Registry file ID. For Generic repositories this is `&lt;package&gt;:&lt;version&gt;:&lt;filename&gt;`; for other formats refer to the file listing in the API. Slashes and other reserved characters are URL-encoded by the provider.
  final pulumi.Input<String> fileId;
  /// The location of the repository.
  final pulumi.Input<String> location;
  /// Local filesystem path where the downloaded bytes are written. Parent directories are created if missing.
  final pulumi.Input<String> outputPath;
  /// If `true` (default), the file at `outputPath` is always downloaded and overwritten on every read. If `false`, the download is skipped when the file already exists at `outputPath` and the Artifact Registry-reported hash matches the hash from the previous read — useful for large files that rarely change, to avoid re-downloading on every `plan`/`apply`.
  final pulumi.Input<bool?>? overwrite;
  /// The project in which the repository lives. Defaults to the provider project.
  final pulumi.Input<String?>? project;
  /// The ID of the repository.
  final pulumi.Input<String> repositoryId;

  /// Creates a new [GetFileArgs].
  /// [fileId] The Artifact Registry file ID. For Generic repositories this is `&lt;package&gt;:&lt;version&gt;:&lt;filename&gt;`; for other formats refer to the file listing in the API. Slashes and other reserved characters are URL-encoded by the provider.
  /// [location] The location of the repository.
  /// [outputPath] Local filesystem path where the downloaded bytes are written. Parent directories are created if missing.
  /// [overwrite] If `true` (default), the file at `outputPath` is always downloaded and overwritten on every read. If `false`, the download is skipped when the file already exists at `outputPath` and the Artifact Registry-reported hash matches the hash from the previous read — useful for large files that rarely change, to avoid re-downloading on every `plan`/`apply`.
  /// [project] The project in which the repository lives. Defaults to the provider project.
  /// [repositoryId] The ID of the repository.
  const GetFileArgs({
    required this.fileId,
    required this.location,
    required this.outputPath,
    this.overwrite,
    this.project,
    required this.repositoryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileId': fileId,
      'location': location,
      'outputPath': outputPath,
      'overwrite': ?overwrite,
      'project': ?project,
      'repositoryId': repositoryId,
    };
  }

  factory GetFileArgs.fromMap(Map<String, dynamic> map) {
    return GetFileArgs(
      fileId: pulumi.Input.fromValue(map['fileId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      outputPath: pulumi.Input.fromValue(map['outputPath'] as String),
      overwrite: (() { final guardedValue = map['overwrite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryId: pulumi.Input.fromValue(map['repositoryId'] as String),
    );
  }
}

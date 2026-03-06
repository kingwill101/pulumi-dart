// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource {
  /// Directory path where all the Whistle files are located.
  /// Example: gs://{bucket-id}/{path/to/import-root/dir}
  final pulumi.Input<String> importUriPrefix;
  /// Main configuration file which has the entrypoint or the root function.
  /// Example: gs://{bucket-id}/{path/to/import-root/dir}/entrypoint-file-name.wstl.
  final pulumi.Input<String> uri;

  /// Creates a new [PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource].
  /// [importUriPrefix] Directory path where all the Whistle files are located.
  /// [uri] Main configuration file which has the entrypoint or the root function.
  const PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource({
    required this.importUriPrefix,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'importUriPrefix': importUriPrefix,
      'uri': uri,
    };
  }

  factory PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource.fromMap(Map<String, dynamic> map) {
    return PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource(
      importUriPrefix: pulumi.Input.fromValue(map['importUriPrefix'] as String),
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}


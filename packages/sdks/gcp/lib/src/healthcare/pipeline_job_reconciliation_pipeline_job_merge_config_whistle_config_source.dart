// ignore_for_file: unused_element, unnecessary_cast


class PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource {
  /// Directory path where all the Whistle files are located.
  /// Example: gs://{bucket-id}/{path/to/import-root/dir}
  final String importUriPrefix;
  /// Main configuration file which has the entrypoint or the root function.
  /// Example: gs://{bucket-id}/{path/to/import-root/dir}/entrypoint-file-name.wstl.
  final String uri;

  /// Creates a new [PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource].
  /// [importUriPrefix] Directory path where all the Whistle files are located.
  /// [uri] Main configuration file which has the entrypoint or the root function.
  PipelineJobReconciliationPipelineJobMergeConfigWhistleConfigSource({
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
      importUriPrefix: map['importUriPrefix'] as String,
      uri: map['uri'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig {
  /// The token size limit for each chunk.
  /// Supported values: 100-500 (inclusive). Default value: 500.
  final pulumi.Input<int>? chunkSize;
  /// Whether to include appending different levels of headings to chunks from the middle of the document to prevent context loss.
  /// Default value: False.
  final pulumi.Input<bool>? includeAncestorHeadings;

  /// Creates a new [DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig].
  /// [chunkSize] The token size limit for each chunk.
  /// [includeAncestorHeadings] Whether to include appending different levels of headings to chunks from the middle of the document to prevent context loss.
  DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig({
    this.chunkSize,
    this.includeAncestorHeadings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkSize': ?chunkSize,
      'includeAncestorHeadings': ?includeAncestorHeadings,
    };
  }

  factory DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromMap(Map<String, dynamic> map) {
    return DataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig(
      chunkSize: (() { final guardedValue = map['chunkSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      includeAncestorHeadings: (() { final guardedValue = map['includeAncestorHeadings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


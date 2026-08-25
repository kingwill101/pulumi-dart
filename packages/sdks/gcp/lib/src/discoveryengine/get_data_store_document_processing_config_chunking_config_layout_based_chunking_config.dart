// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig {
  /// The token size limit for each chunk.
  /// Supported values: 100-500 (inclusive). Default value: 500.
  final pulumi.Input<int> chunkSize;
  /// Whether to include appending different levels of headings to chunks from the middle of the document to prevent context loss.
  /// Default value: False.
  final pulumi.Input<bool> includeAncestorHeadings;

  /// Creates a new [GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig].
  /// [chunkSize] The token size limit for each chunk.
  /// [includeAncestorHeadings] Whether to include appending different levels of headings to chunks from the middle of the document to prevent context loss.
  const GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig({
    required this.chunkSize,
    required this.includeAncestorHeadings,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chunkSize': chunkSize,
      'includeAncestorHeadings': includeAncestorHeadings,
    };
  }

  factory GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig.fromMap(Map<String, dynamic> map) {
    return GetDataStoreDocumentProcessingConfigChunkingConfigLayoutBasedChunkingConfig(
      chunkSize: pulumi.Input.fromValue((map['chunkSize'] as num).toInt()),
      includeAncestorHeadings: pulumi.Input.fromValue(map['includeAncestorHeadings'] as bool),
    );
  }
}

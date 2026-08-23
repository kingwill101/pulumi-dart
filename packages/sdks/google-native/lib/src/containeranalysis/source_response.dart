// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_context_response.dart';

/// Source describes the location of the source used for the build.
class SourceResponse {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final pulumi.Input<List<SourceContextResponse>> additionalContexts;
  /// If provided, the input binary artifacts for the build came from this location.
  final pulumi.Input<String> artifactStorageSourceUri;
  /// If provided, the source code used for the build came from this location.
  final pulumi.Input<SourceContextResponse> context;
  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final pulumi.Input<Map<String, String>> fileHashes;

  /// Creates a new [SourceResponse].
  /// [additionalContexts] If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  /// [artifactStorageSourceUri] If provided, the input binary artifacts for the build came from this location.
  /// [context] If provided, the source code used for the build came from this location.
  /// [fileHashes] Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  const SourceResponse({
    required this.additionalContexts,
    required this.artifactStorageSourceUri,
    required this.context,
    required this.fileHashes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContexts': pulumi.Input.mapInputValue<List<SourceContextResponse>, List<Map<String, dynamic>>>(additionalContexts, (value) => pulumi.Input.encodeList<SourceContextResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'artifactStorageSourceUri': artifactStorageSourceUri,
      'context': pulumi.Input.mapInputValue<SourceContextResponse, Map<String, dynamic>>(context, (value) => value.toMap()),
      'fileHashes': fileHashes,
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      additionalContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<SourceContextResponse>(map['additionalContexts']!, (value) => SourceContextResponse.fromMap((value as Map).cast<String, dynamic>()))),
      artifactStorageSourceUri: pulumi.Input.fromValue(map['artifactStorageSourceUri'] as String),
      context: pulumi.Input.fromValue(SourceContextResponse.fromMap((map['context']! as Map).cast<String, dynamic>())),
      fileHashes: pulumi.Input.fromValue((map['fileHashes'] as Map).cast<String, String>()),
    );
  }
}

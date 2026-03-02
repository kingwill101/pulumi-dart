// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_context_containeranalysis_v1beta1.dart';

/// Source describes the location of the source used for the build.
class SourceContaineranalysisV1beta1 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final pulumi.Input<List<SourceContextContaineranalysisV1beta1>>? additionalContexts;
  /// If provided, the input binary artifacts for the build came from this location.
  final pulumi.Input<String>? artifactStorageSourceUri;
  /// If provided, the source code used for the build came from this location.
  final pulumi.Input<SourceContextContaineranalysisV1beta1>? context;
  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final pulumi.Input<Map<String, String>>? fileHashes;

  /// Creates a new [SourceContaineranalysisV1beta1].
  /// [additionalContexts] If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  /// [artifactStorageSourceUri] If provided, the input binary artifacts for the build came from this location.
  /// [context] If provided, the source code used for the build came from this location.
  /// [fileHashes] Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  SourceContaineranalysisV1beta1({
    this.additionalContexts,
    this.artifactStorageSourceUri,
    this.context,
    this.fileHashes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContexts': ?pulumi.Input.mapOptionalInputValue<List<SourceContextContaineranalysisV1beta1>, List<Map<String, dynamic>>>(additionalContexts, (value) => pulumi.Input.encodeList<SourceContextContaineranalysisV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'artifactStorageSourceUri': ?artifactStorageSourceUri,
      'context': ?pulumi.Input.mapOptionalInputValue<SourceContextContaineranalysisV1beta1, Map<String, dynamic>>(context, (value) => value.toMap()),
      'fileHashes': ?fileHashes,
    };
  }

  factory SourceContaineranalysisV1beta1.fromMap(Map<String, dynamic> map) {
    return SourceContaineranalysisV1beta1(
      additionalContexts: map['additionalContexts'] == null ? null : (pulumi.Input.decodeList<SourceContextContaineranalysisV1beta1>(map['additionalContexts'], (value) => SourceContextContaineranalysisV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      artifactStorageSourceUri: map['artifactStorageSourceUri'] == null ? null : (map['artifactStorageSourceUri'] as String).input(),
      context: map['context'] == null ? null : (SourceContextContaineranalysisV1beta1.fromMap((map['context'] as Map).cast<String, dynamic>())).input(),
      fileHashes: map['fileHashes'] == null ? null : ((map['fileHashes'] as Map).cast<String, String>()).input(),
    );
  }
}


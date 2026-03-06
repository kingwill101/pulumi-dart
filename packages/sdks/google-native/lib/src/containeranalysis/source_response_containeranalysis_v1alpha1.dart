// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_source_context_response.dart';
import 'repo_source_response.dart';
import 'storage_source_response.dart';

/// Source describes the location of the source used for the build.
class SourceResponseContaineranalysisV1alpha1 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final pulumi.Input<List<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse>> additionalContexts;
  /// If provided, the input binary artifacts for the build came from this location.
  final pulumi.Input<StorageSourceResponse> artifactStorageSource;
  /// If provided, the source code used for the build came from this location.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse> context;
  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final pulumi.Input<Map<String, String>> fileHashes;
  /// If provided, get source from this location in a Cloud Repo.
  final pulumi.Input<RepoSourceResponse> repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSourceResponse> storageSource;

  /// Creates a new [SourceResponseContaineranalysisV1alpha1].
  /// [additionalContexts] If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  /// [artifactStorageSource] If provided, the input binary artifacts for the build came from this location.
  /// [context] If provided, the source code used for the build came from this location.
  /// [fileHashes] Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  /// [repoSource] If provided, get source from this location in a Cloud Repo.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  const SourceResponseContaineranalysisV1alpha1({
    required this.additionalContexts,
    required this.artifactStorageSource,
    required this.context,
    required this.fileHashes,
    required this.repoSource,
    required this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContexts': pulumi.Input.mapInputValue<List<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse>, List<Map<String, dynamic>>>(additionalContexts, (value) => pulumi.Input.encodeList<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'artifactStorageSource': pulumi.Input.mapInputValue<StorageSourceResponse, Map<String, dynamic>>(artifactStorageSource, (value) => value.toMap()),
      'context': pulumi.Input.mapInputValue<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse, Map<String, dynamic>>(context, (value) => value.toMap()),
      'fileHashes': fileHashes,
      'repoSource': pulumi.Input.mapInputValue<RepoSourceResponse, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': pulumi.Input.mapInputValue<StorageSourceResponse, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory SourceResponseContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SourceResponseContaineranalysisV1alpha1(
      additionalContexts: pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse>(map['additionalContexts']!, (value) => GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse.fromMap((value as Map).cast<String, dynamic>()))),
      artifactStorageSource: pulumi.Input.fromValue(StorageSourceResponse.fromMap((map['artifactStorageSource']! as Map).cast<String, dynamic>())),
      context: pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1SourceContextResponse.fromMap((map['context']! as Map).cast<String, dynamic>())),
      fileHashes: pulumi.Input.fromValue((map['fileHashes'] as Map).cast<String, String>()),
      repoSource: pulumi.Input.fromValue(RepoSourceResponse.fromMap((map['repoSource']! as Map).cast<String, dynamic>())),
      storageSource: pulumi.Input.fromValue(StorageSourceResponse.fromMap((map['storageSource']! as Map).cast<String, dynamic>())),
    );
  }
}


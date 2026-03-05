// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_devtools_containeranalysis_v1alpha1_source_context.dart';
import 'repo_source.dart';
import 'storage_source.dart';

/// Source describes the location of the source used for the build.
class SourceContaineranalysisV1alpha1 {
  /// If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  final pulumi.Input<List<GoogleDevtoolsContaineranalysisV1alpha1SourceContext>>? additionalContexts;
  /// If provided, the input binary artifacts for the build came from this location.
  final pulumi.Input<StorageSource>? artifactStorageSource;
  /// If provided, the source code used for the build came from this location.
  final pulumi.Input<GoogleDevtoolsContaineranalysisV1alpha1SourceContext>? context;
  /// Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  final pulumi.Input<Map<String, String>>? fileHashes;
  /// If provided, get source from this location in a Cloud Repo.
  final pulumi.Input<RepoSource>? repoSource;
  /// If provided, get the source from this location in Google Cloud Storage.
  final pulumi.Input<StorageSource>? storageSource;

  /// Creates a new [SourceContaineranalysisV1alpha1].
  /// [additionalContexts] If provided, some of the source code used for the build may be found in these locations, in the case where the source repository had multiple remotes or submodules. This list will not include the context specified in the context field.
  /// [artifactStorageSource] If provided, the input binary artifacts for the build came from this location.
  /// [context] If provided, the source code used for the build came from this location.
  /// [fileHashes] Hash(es) of the build source, which can be used to verify that the original source integrity was maintained in the build. The keys to this map are file paths used as build source and the values contain the hash values for those files. If the build source came in a single package such as a gzipped tarfile (.tar.gz), the FileHash will be for the single path to that file.
  /// [repoSource] If provided, get source from this location in a Cloud Repo.
  /// [storageSource] If provided, get the source from this location in Google Cloud Storage.
  SourceContaineranalysisV1alpha1({
    this.additionalContexts,
    this.artifactStorageSource,
    this.context,
    this.fileHashes,
    this.repoSource,
    this.storageSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContexts': ?pulumi.Input.mapOptionalInputValue<List<GoogleDevtoolsContaineranalysisV1alpha1SourceContext>, List<Map<String, dynamic>>>(additionalContexts, (value) => pulumi.Input.encodeList<GoogleDevtoolsContaineranalysisV1alpha1SourceContext, Map<String, dynamic>>(value, (value) => value.toMap())),
      'artifactStorageSource': ?pulumi.Input.mapOptionalInputValue<StorageSource, Map<String, dynamic>>(artifactStorageSource, (value) => value.toMap()),
      'context': ?pulumi.Input.mapOptionalInputValue<GoogleDevtoolsContaineranalysisV1alpha1SourceContext, Map<String, dynamic>>(context, (value) => value.toMap()),
      'fileHashes': ?fileHashes,
      'repoSource': ?pulumi.Input.mapOptionalInputValue<RepoSource, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<StorageSource, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
    };
  }

  factory SourceContaineranalysisV1alpha1.fromMap(Map<String, dynamic> map) {
    return SourceContaineranalysisV1alpha1(
      additionalContexts: (() { final guardedValue = map['additionalContexts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleDevtoolsContaineranalysisV1alpha1SourceContext>(guardedValue, (value) => GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromMap((value as Map).cast<String, dynamic>()))); })(),
      artifactStorageSource: (() { final guardedValue = map['artifactStorageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      context: (() { final guardedValue = map['context']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleDevtoolsContaineranalysisV1alpha1SourceContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileHashes: (() { final guardedValue = map['fileHashes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      repoSource: (() { final guardedValue = map['repoSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RepoSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      storageSource: (() { final guardedValue = map['storageSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StorageSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


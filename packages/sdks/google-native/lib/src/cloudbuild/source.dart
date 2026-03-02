// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_repository.dart';
import 'git_source.dart';
import 'repo_source.dart';
import 'storage_source.dart';
import 'storage_source_manifest.dart';

/// Location of the source in a supported storage service.
class Source {
  /// Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  final pulumi.Input<ConnectedRepository>? connectedRepository;
  /// If provided, get the source from this Git repository.
  final pulumi.Input<GitSource>? gitSource;
  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSource>? repoSource;
  /// If provided, get the source from this location in Cloud Storage.
  final pulumi.Input<StorageSource>? storageSource;
  /// If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  final pulumi.Input<StorageSourceManifest>? storageSourceManifest;

  /// Creates a new [Source].
  /// [connectedRepository] Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  /// [gitSource] If provided, get the source from this Git repository.
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Cloud Storage.
  /// [storageSourceManifest] If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  Source({
    this.connectedRepository,
    this.gitSource,
    this.repoSource,
    this.storageSource,
    this.storageSourceManifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRepository': ?pulumi.Input.mapOptionalInputValue<ConnectedRepository, Map<String, dynamic>>(connectedRepository, (value) => value.toMap()),
      'gitSource': ?pulumi.Input.mapOptionalInputValue<GitSource, Map<String, dynamic>>(gitSource, (value) => value.toMap()),
      'repoSource': ?pulumi.Input.mapOptionalInputValue<RepoSource, Map<String, dynamic>>(repoSource, (value) => value.toMap()),
      'storageSource': ?pulumi.Input.mapOptionalInputValue<StorageSource, Map<String, dynamic>>(storageSource, (value) => value.toMap()),
      'storageSourceManifest': ?pulumi.Input.mapOptionalInputValue<StorageSourceManifest, Map<String, dynamic>>(storageSourceManifest, (value) => value.toMap()),
    };
  }

  factory Source.fromMap(Map<String, dynamic> map) {
    return Source(
      connectedRepository: map['connectedRepository'] == null ? null : (ConnectedRepository.fromMap((map['connectedRepository']! as Map).cast<String, dynamic>())).input(),
      gitSource: map['gitSource'] == null ? null : (GitSource.fromMap((map['gitSource']! as Map).cast<String, dynamic>())).input(),
      repoSource: map['repoSource'] == null ? null : (RepoSource.fromMap((map['repoSource']! as Map).cast<String, dynamic>())).input(),
      storageSource: map['storageSource'] == null ? null : (StorageSource.fromMap((map['storageSource']! as Map).cast<String, dynamic>())).input(),
      storageSourceManifest: map['storageSourceManifest'] == null ? null : (StorageSourceManifest.fromMap((map['storageSourceManifest']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


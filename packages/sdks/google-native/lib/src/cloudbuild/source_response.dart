// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_repository_response.dart';
import 'git_source_response.dart';
import 'repo_source_response.dart';
import 'storage_source_manifest_response.dart';
import 'storage_source_response.dart';

/// Location of the source in a supported storage service.
class SourceResponse {
  /// Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  final pulumi.Input<ConnectedRepositoryResponse> connectedRepository;

  /// If provided, get the source from this Git repository.
  final pulumi.Input<GitSourceResponse> gitSource;

  /// If provided, get the source from this location in a Cloud Source Repository.
  final pulumi.Input<RepoSourceResponse> repoSource;

  /// If provided, get the source from this location in Cloud Storage.
  final pulumi.Input<StorageSourceResponse> storageSource;

  /// If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  final pulumi.Input<StorageSourceManifestResponse> storageSourceManifest;

  /// Creates a new [SourceResponse].
  /// [connectedRepository] Optional. If provided, get the source from this 2nd-gen Google Cloud Build repository resource.
  /// [gitSource] If provided, get the source from this Git repository.
  /// [repoSource] If provided, get the source from this location in a Cloud Source Repository.
  /// [storageSource] If provided, get the source from this location in Cloud Storage.
  /// [storageSourceManifest] If provided, get the source from this manifest in Cloud Storage. This feature is in Preview; see description [here](https://github.com/GoogleCloudPlatform/cloud-builders/tree/master/gcs-fetcher).
  SourceResponse({
    required this.connectedRepository,
    required this.gitSource,
    required this.repoSource,
    required this.storageSource,
    required this.storageSourceManifest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectedRepository':
          pulumi.Input.mapInputValue<
            ConnectedRepositoryResponse,
            Map<String, dynamic>
          >(connectedRepository, (value) => value.toMap()),
      'gitSource':
          pulumi.Input.mapInputValue<GitSourceResponse, Map<String, dynamic>>(
            gitSource,
            (value) => value.toMap(),
          ),
      'repoSource':
          pulumi.Input.mapInputValue<RepoSourceResponse, Map<String, dynamic>>(
            repoSource,
            (value) => value.toMap(),
          ),
      'storageSource':
          pulumi.Input.mapInputValue<
            StorageSourceResponse,
            Map<String, dynamic>
          >(storageSource, (value) => value.toMap()),
      'storageSourceManifest':
          pulumi.Input.mapInputValue<
            StorageSourceManifestResponse,
            Map<String, dynamic>
          >(storageSourceManifest, (value) => value.toMap()),
    };
  }

  factory SourceResponse.fromMap(Map<String, dynamic> map) {
    return SourceResponse(
      connectedRepository: pulumi.Input.fromValue(
        ConnectedRepositoryResponse.fromMap(
          (map['connectedRepository']! as Map).cast<String, dynamic>(),
        ),
      ),
      gitSource: pulumi.Input.fromValue(
        GitSourceResponse.fromMap(
          (map['gitSource']! as Map).cast<String, dynamic>(),
        ),
      ),
      repoSource: pulumi.Input.fromValue(
        RepoSourceResponse.fromMap(
          (map['repoSource']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageSource: pulumi.Input.fromValue(
        StorageSourceResponse.fromMap(
          (map['storageSource']! as Map).cast<String, dynamic>(),
        ),
      ),
      storageSourceManifest: pulumi.Input.fromValue(
        StorageSourceManifestResponse.fromMap(
          (map['storageSourceManifest']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}

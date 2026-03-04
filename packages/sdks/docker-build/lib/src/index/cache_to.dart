// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_to_azure_blob.dart';
import 'cache_to_git_hub_actions.dart';
import 'cache_to_local.dart';
import 'cache_to_registry.dart';
import 'cache_to_s3.dart';

class CacheTo {
  /// Push cache to Azure's blob storage service.
  final pulumi.Input<CacheToAzureBlob>? azblob;

  /// When `true` this entry will be excluded. Defaults to `false`.
  final pulumi.Input<bool>? disabled;

  /// Recommended for use with GitHub Actions workflows.
  ///
  /// An action like `crazy-max/ghaction-github-runtime` is recommended to
  /// expose appropriate credentials to your GitHub workflow.
  final pulumi.Input<CacheToGitHubActions>? gha;

  /// The inline cache storage backend is the simplest implementation to get
  /// started with, but it does not handle multi-stage builds. Consider the
  /// `registry` cache backend instead.
  final pulumi.Input<Map<String, dynamic>>? inline;

  /// A simple backend which caches imagines on your local filesystem.
  final pulumi.Input<CacheToLocal>? local;

  /// A raw string as you would provide it to the Docker CLI (e.g.,
  /// `type=inline`)
  final pulumi.Input<String>? raw;

  /// Push caches to remote registries. Incompatible with the `docker` build
  /// driver.
  final pulumi.Input<CacheToRegistry>? registry;

  /// Push cache to AWS S3 or S3-compatible services such as MinIO.
  final pulumi.Input<CacheToS3>? s3;

  /// Creates a new [CacheTo].
  /// [azblob] Push cache to Azure's blob storage service.
  /// [disabled] When `true` this entry will be excluded. Defaults to `false`.
  /// [gha] Recommended for use with GitHub Actions workflows.
  /// [inline] The inline cache storage backend is the simplest implementation to get
  /// [local] A simple backend which caches imagines on your local filesystem.
  /// [raw] A raw string as you would provide it to the Docker CLI (e.g.,
  /// [registry] Push caches to remote registries. Incompatible with the `docker` build
  /// [s3] Push cache to AWS S3 or S3-compatible services such as MinIO.
  CacheTo({
    this.azblob,
    this.disabled,
    this.gha,
    this.inline,
    this.local,
    this.raw,
    this.registry,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azblob':
          ?pulumi.Input.mapOptionalInputValue<
            CacheToAzureBlob,
            Map<String, dynamic>
          >(azblob, (value) => value.toMap()),
      'disabled': ?disabled,
      'gha':
          ?pulumi.Input.mapOptionalInputValue<
            CacheToGitHubActions,
            Map<String, dynamic>
          >(gha, (value) => value.toMap()),
      'inline': ?inline,
      'local':
          ?pulumi.Input.mapOptionalInputValue<
            CacheToLocal,
            Map<String, dynamic>
          >(local, (value) => value.toMap()),
      'raw': ?raw,
      'registry':
          ?pulumi.Input.mapOptionalInputValue<
            CacheToRegistry,
            Map<String, dynamic>
          >(registry, (value) => value.toMap()),
      's3':
          ?pulumi.Input.mapOptionalInputValue<CacheToS3, Map<String, dynamic>>(
            s3,
            (value) => value.toMap(),
          ),
    };
  }

  factory CacheTo.fromMap(Map<String, dynamic> map) {
    return CacheTo(
      azblob: (() {
        final guardedValue = map['azblob'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheToAzureBlob.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      disabled: (() {
        final guardedValue = map['disabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      gha: (() {
        final guardedValue = map['gha'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheToGitHubActions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      inline: (() {
        final guardedValue = map['inline'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      local: (() {
        final guardedValue = map['local'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheToLocal.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      raw: (() {
        final guardedValue = map['raw'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      registry: (() {
        final guardedValue = map['registry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheToRegistry.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3: (() {
        final guardedValue = map['s3'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CacheToS3.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
    );
  }
}

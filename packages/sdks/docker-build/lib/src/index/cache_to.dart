// ignore_for_file: unused_element, unnecessary_cast

import 'cache_to_azure_blob.dart';
import 'cache_to_git_hub_actions.dart';
import 'cache_to_local.dart';
import 'cache_to_registry.dart';
import 'cache_to_s3.dart';

class CacheTo {
  /// Push cache to Azure's blob storage service.
  final CacheToAzureBlob? azblob;
  /// When `true` this entry will be excluded. Defaults to `false`.
  final bool? disabled;
  /// Recommended for use with GitHub Actions workflows.
  ///
  /// An action like `crazy-max/ghaction-github-runtime` is recommended to
  /// expose appropriate credentials to your GitHub workflow.
  final CacheToGitHubActions? gha;
  /// The inline cache storage backend is the simplest implementation to get
  /// started with, but it does not handle multi-stage builds. Consider the
  /// `registry` cache backend instead.
  final Map<String, dynamic>? inline;
  /// A simple backend which caches imagines on your local filesystem.
  final CacheToLocal? local;
  /// A raw string as you would provide it to the Docker CLI (e.g.,
  /// `type=inline`)
  final String? raw;
  /// Push caches to remote registries. Incompatible with the `docker` build
  /// driver.
  final CacheToRegistry? registry;
  /// Push cache to AWS S3 or S3-compatible services such as MinIO.
  final CacheToS3? s3;

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
      'azblob': ?azblob == null ? null : azblob!.toMap(),
      'disabled': ?disabled,
      'gha': ?gha == null ? null : gha!.toMap(),
      'inline': ?inline,
      'local': ?local == null ? null : local!.toMap(),
      'raw': ?raw,
      'registry': ?registry == null ? null : registry!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
    };
  }

  factory CacheTo.fromMap(Map<String, dynamic> map) {
    return CacheTo(
      azblob: map['azblob'] == null ? null : CacheToAzureBlob.fromMap((map['azblob'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      gha: map['gha'] == null ? null : CacheToGitHubActions.fromMap((map['gha'] as Map).cast<String, dynamic>()),
      inline: map['inline'] == null ? null : (map['inline'] as Map).cast<String, dynamic>(),
      local: map['local'] == null ? null : CacheToLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      raw: map['raw'] == null ? null : map['raw'] as String,
      registry: map['registry'] == null ? null : CacheToRegistry.fromMap((map['registry'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null ? null : CacheToS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'cache_from_azure_blob.dart';
import 'cache_from_git_hub_actions.dart';
import 'cache_from_local.dart';
import 'cache_from_registry.dart';
import 'cache_from_s3.dart';

class CacheFrom {
  /// Upload build caches to Azure's blob storage service.
  final CacheFromAzureBlob? azblob;
  /// When `true` this entry will be excluded. Defaults to `false`.
  final bool? disabled;
  /// Recommended for use with GitHub Actions workflows.
  ///
  /// An action like `crazy-max/ghaction-github-runtime` is recommended to
  /// expose appropriate credentials to your GitHub workflow.
  final CacheFromGitHubActions? gha;
  /// A simple backend which caches images on your local filesystem.
  final CacheFromLocal? local;
  /// A raw string as you would provide it to the Docker CLI (e.g.,
  /// `type=inline`).
  final String? raw;
  /// Upload build caches to remote registries.
  final CacheFromRegistry? registry;
  /// Upload build caches to AWS S3 or an S3-compatible services such as
  /// MinIO.
  final CacheFromS3? s3;

  /// Creates a new [CacheFrom].
  /// [azblob] Upload build caches to Azure's blob storage service.
  /// [disabled] When `true` this entry will be excluded. Defaults to `false`.
  /// [gha] Recommended for use with GitHub Actions workflows.
  /// [local] A simple backend which caches images on your local filesystem.
  /// [raw] A raw string as you would provide it to the Docker CLI (e.g.,
  /// [registry] Upload build caches to remote registries.
  /// [s3] Upload build caches to AWS S3 or an S3-compatible services such as
  CacheFrom({
    this.azblob,
    this.disabled,
    this.gha,
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
      'local': ?local == null ? null : local!.toMap(),
      'raw': ?raw,
      'registry': ?registry == null ? null : registry!.toMap(),
      's3': ?s3 == null ? null : s3!.toMap(),
    };
  }

  factory CacheFrom.fromMap(Map<String, dynamic> map) {
    return CacheFrom(
      azblob: map['azblob'] == null ? null : CacheFromAzureBlob.fromMap((map['azblob'] as Map).cast<String, dynamic>()),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      gha: map['gha'] == null ? null : CacheFromGitHubActions.fromMap((map['gha'] as Map).cast<String, dynamic>()),
      local: map['local'] == null ? null : CacheFromLocal.fromMap((map['local'] as Map).cast<String, dynamic>()),
      raw: map['raw'] == null ? null : map['raw'] as String,
      registry: map['registry'] == null ? null : CacheFromRegistry.fromMap((map['registry'] as Map).cast<String, dynamic>()),
      s3: map['s3'] == null ? null : CacheFromS3.fromMap((map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}


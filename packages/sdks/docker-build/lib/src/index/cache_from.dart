// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cache_from_azure_blob.dart';
import 'cache_from_git_hub_actions.dart';
import 'cache_from_local.dart';
import 'cache_from_registry.dart';
import 'cache_from_s3.dart';

class CacheFrom {
  /// Upload build caches to Azure's blob storage service.
  final pulumi.Input<CacheFromAzureBlob>? azblob;
  /// When `true` this entry will be excluded. Defaults to `false`.
  final pulumi.Input<bool>? disabled;
  /// Recommended for use with GitHub Actions workflows.
  ///
  /// An action like `crazy-max/ghaction-github-runtime` is recommended to
  /// expose appropriate credentials to your GitHub workflow.
  final pulumi.Input<CacheFromGitHubActions>? gha;
  /// A simple backend which caches images on your local filesystem.
  final pulumi.Input<CacheFromLocal>? local;
  /// A raw string as you would provide it to the Docker CLI (e.g.,
  /// `type=inline`).
  final pulumi.Input<String>? raw;
  /// Upload build caches to remote registries.
  final pulumi.Input<CacheFromRegistry>? registry;
  /// Upload build caches to AWS S3 or an S3-compatible services such as
  /// MinIO.
  final pulumi.Input<CacheFromS3>? s3;

  /// Creates a new [CacheFrom].
  /// [azblob] Upload build caches to Azure's blob storage service.
  /// [disabled] When `true` this entry will be excluded. Defaults to `false`.
  /// [gha] Recommended for use with GitHub Actions workflows.
  /// [local] A simple backend which caches images on your local filesystem.
  /// [raw] A raw string as you would provide it to the Docker CLI (e.g.,
  /// [registry] Upload build caches to remote registries.
  /// [s3] Upload build caches to AWS S3 or an S3-compatible services such as
  const CacheFrom({
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
      'azblob': ?pulumi.Input.mapOptionalInputValue<CacheFromAzureBlob, Map<String, dynamic>>(azblob, (value) => value.toMap()),
      'disabled': ?disabled,
      'gha': ?pulumi.Input.mapOptionalInputValue<CacheFromGitHubActions, Map<String, dynamic>>(gha, (value) => value.toMap()),
      'local': ?pulumi.Input.mapOptionalInputValue<CacheFromLocal, Map<String, dynamic>>(local, (value) => value.toMap()),
      'raw': ?raw,
      'registry': ?pulumi.Input.mapOptionalInputValue<CacheFromRegistry, Map<String, dynamic>>(registry, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<CacheFromS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory CacheFrom.fromMap(Map<String, dynamic> map) {
    return CacheFrom(
      azblob: (() { final guardedValue = map['azblob']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheFromAzureBlob.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disabled: (() { final guardedValue = map['disabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      gha: (() { final guardedValue = map['gha']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheFromGitHubActions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheFromLocal.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      raw: (() { final guardedValue = map['raw']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registry: (() { final guardedValue = map['registry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheFromRegistry.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CacheFromS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


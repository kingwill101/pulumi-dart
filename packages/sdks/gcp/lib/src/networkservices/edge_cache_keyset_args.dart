// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_keyset_public_key.dart';
import 'edge_cache_keyset_validation_shared_key.dart';

/// {@template pulumi_networkservices_edge_cache_keyset_edge_cache_keyset_args_doc}
/// The set of arguments for EdgeCacheKeyset.
/// {@endtemplate}
/// {@macro pulumi_networkservices_edge_cache_keyset_edge_cache_keyset_args_doc}
class EdgeCacheKeysetArgs {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// Set of label tags associated with the EdgeCache resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the resource; provided by the client when the resource is created.
  /// The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
  /// and all following characters must be a dash, underscore, letter or digit.
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// An ordered list of Ed25519 public keys to use for validating signed requests.
  /// You must specify `public_keys` or `validation_shared_keys` (or both). The keys in `public_keys` are checked first.
  /// You may specify no more than one Google-managed public key.
  /// If you specify `public_keys`, you must specify at least one (1) key and may specify up to three (3) keys.
  /// Ed25519 public keys are not secret, and only allow Google to validate a request was signed by your corresponding private key.
  /// Ensure that the private key is kept secret, and that only authorized users can add public keys to a keyset.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheKeysetPublicKey>>? publicKeys;
  /// An ordered list of shared keys to use for validating signed requests.
  /// Shared keys are secret.  Ensure that only authorized users can add `validation_shared_keys` to a keyset.
  /// You can rotate keys by appending (pushing) a new key to the list of `validation_shared_keys` and removing any superseded keys.
  /// You must specify `public_keys` or `validation_shared_keys` (or both). The keys in `public_keys` are checked first.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheKeysetValidationSharedKey>>? validationSharedKeys;

  /// Creates a new [EdgeCacheKeysetArgs].
  /// [description] A human-readable description of the resource.
  /// [labels] Set of label tags associated with the EdgeCache resource.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [publicKeys] An ordered list of Ed25519 public keys to use for validating signed requests.
  /// [validationSharedKeys] An ordered list of shared keys to use for validating signed requests.
  EdgeCacheKeysetArgs({
    this.description,
    this.labels,
    this.name,
    this.project,
    this.publicKeys,
    this.validationSharedKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheKeysetPublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<EdgeCacheKeysetPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'validationSharedKeys': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheKeysetValidationSharedKey>, List<Map<String, dynamic>>>(validationSharedKeys, (value) => pulumi.Input.encodeList<EdgeCacheKeysetValidationSharedKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EdgeCacheKeysetArgs.fromMap(Map<String, dynamic> map) {
    return EdgeCacheKeysetArgs(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      labels: map['labels'] == null ? null : ((map['labels'] as Map).cast<String, String>()).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      publicKeys: map['publicKeys'] == null ? null : (pulumi.Input.decodeList<EdgeCacheKeysetPublicKey>(map['publicKeys'], (value) => EdgeCacheKeysetPublicKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
      validationSharedKeys: map['validationSharedKeys'] == null ? null : (pulumi.Input.decodeList<EdgeCacheKeysetValidationSharedKey>(map['validationSharedKeys'], (value) => EdgeCacheKeysetValidationSharedKey.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'edge_cache_keyset_public_key.dart';
import 'edge_cache_keyset_validation_shared_key.dart';

/// Input properties used for looking up and filtering EdgeCacheKeyset resources.
class EdgeCacheKeysetState {
  /// A human-readable description of the resource.
  final pulumi.Input<String>? description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  final pulumi.Input<Map<String, String>>? effectiveLabels;
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
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  final pulumi.Input<Map<String, String>>? pulumiLabels;
  /// An ordered list of shared keys to use for validating signed requests.
  /// Shared keys are secret.  Ensure that only authorized users can add `validation_shared_keys` to a keyset.
  /// You can rotate keys by appending (pushing) a new key to the list of `validation_shared_keys` and removing any superseded keys.
  /// You must specify `public_keys` or `validation_shared_keys` (or both). The keys in `public_keys` are checked first.
  /// Structure is documented below.
  final pulumi.Input<List<EdgeCacheKeysetValidationSharedKey>>? validationSharedKeys;

  /// Creates a new [EdgeCacheKeysetState].
  /// [description] A human-readable description of the resource.
  /// [effectiveLabels] All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  /// [labels] Set of label tags associated with the EdgeCache resource.
  /// [name] Name of the resource; provided by the client when the resource is created.
  /// [project] The ID of the project in which the resource belongs.
  /// [publicKeys] An ordered list of Ed25519 public keys to use for validating signed requests.
  /// [pulumiLabels] The combination of labels configured directly on the resource
  /// [validationSharedKeys] An ordered list of shared keys to use for validating signed requests.
  EdgeCacheKeysetState({
    this.description,
    this.effectiveLabels,
    this.labels,
    this.name,
    this.project,
    this.publicKeys,
    this.pulumiLabels,
    this.validationSharedKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'effectiveLabels': ?effectiveLabels,
      'labels': ?labels,
      'name': ?name,
      'project': ?project,
      'publicKeys': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheKeysetPublicKey>, List<Map<String, dynamic>>>(publicKeys, (value) => pulumi.Input.encodeList<EdgeCacheKeysetPublicKey, Map<String, dynamic>>(value, (value) => value.toMap())),
      'pulumiLabels': ?pulumiLabels,
      'validationSharedKeys': ?pulumi.Input.mapOptionalInputValue<List<EdgeCacheKeysetValidationSharedKey>, List<Map<String, dynamic>>>(validationSharedKeys, (value) => pulumi.Input.encodeList<EdgeCacheKeysetValidationSharedKey, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory EdgeCacheKeysetState.fromMap(Map<String, dynamic> map) {
    return EdgeCacheKeysetState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      effectiveLabels: (() { final guardedValue = map['effectiveLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      publicKeys: (() { final guardedValue = map['publicKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheKeysetPublicKey>(guardedValue, (value) => EdgeCacheKeysetPublicKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
      pulumiLabels: (() { final guardedValue = map['pulumiLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      validationSharedKeys: (() { final guardedValue = map['validationSharedKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EdgeCacheKeysetValidationSharedKey>(guardedValue, (value) => EdgeCacheKeysetValidationSharedKey.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'secret_v1_acl.dart';

/// Input properties used for looking up and filtering SecretV1 resources.
class SecretV1State {
  /// Allows to control an access to a secret. Currently only the
  /// `read` operation is supported. If not specified, the secret is accessible
  /// project wide.
  final pulumi.Input<SecretV1Acl>? acl;
  /// Metadata provided by a user or system for informational purposes.
  final pulumi.Input<String>? algorithm;
  /// The map of metadata, assigned on the secret, which has been
  /// explicitly and implicitly added.
  final pulumi.Input<Map<String, String>>? allMetadata;
  /// Metadata provided by a user or system for informational purposes.
  final pulumi.Input<int>? bitLength;
  /// The map of the content types, assigned on the secret.
  final pulumi.Input<Map<String, String>>? contentTypes;
  /// The date the secret was created.
  final pulumi.Input<String>? createdAt;
  /// The creator of the secret.
  final pulumi.Input<String>? creatorId;
  /// The expiration time of the secret in the RFC3339 timestamp format (e.g. `2019-03-09T12:58:49Z`). If omitted, a secret will never expire. Changing this creates a new secret.
  final pulumi.Input<String>? expiration;
  /// Additional Metadata for the secret.
  final pulumi.Input<Map<String, String>>? metadata;
  /// Metadata provided by a user or system for informational purposes.
  final pulumi.Input<String>? mode;
  /// Human-readable name for the Secret. Does not have
  /// to be unique.
  final pulumi.Input<String>? name;
  /// The secret's data to be stored. **payload\_content\_type** must also be supplied if **payload** is included.
  final pulumi.Input<String>? payload;
  /// (required if **payload** is encoded) The encoding used for the payload to be able to include it in the JSON request. Must be either `base64` or `binary`.
  final pulumi.Input<String>? payloadContentEncoding;
  /// (required if **payload** is included) The media type for the content of the payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  final pulumi.Input<String>? payloadContentType;
  /// The region in which to obtain the V1 KeyManager client.
  /// A KeyManager client is needed to create a secret. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// V1 secret.
  final pulumi.Input<String>? region;
  /// The secret reference / where to find the secret.
  final pulumi.Input<String>? secretRef;
  /// Used to indicate the type of secret being stored. For more information see [Secret types](https://docs.openstack.org/barbican/latest/api/reference/secret_types.html).
  final pulumi.Input<String>? secretType;
  /// The status of the secret.
  final pulumi.Input<String>? status;
  /// The date the secret was last updated.
  final pulumi.Input<String>? updatedAt;

  /// Creates a new [SecretV1State].
  /// [acl] Allows to control an access to a secret. Currently only the
  /// [algorithm] Metadata provided by a user or system for informational purposes.
  /// [allMetadata] The map of metadata, assigned on the secret, which has been
  /// [bitLength] Metadata provided by a user or system for informational purposes.
  /// [contentTypes] The map of the content types, assigned on the secret.
  /// [createdAt] The date the secret was created.
  /// [creatorId] The creator of the secret.
  /// [expiration] The expiration time of the secret in the RFC3339 timestamp format (e.g. `2019-03-09T12:58:49Z`). If omitted, a secret will never expire. Changing this creates a new secret.
  /// [metadata] Additional Metadata for the secret.
  /// [mode] Metadata provided by a user or system for informational purposes.
  /// [name] Human-readable name for the Secret. Does not have
  /// [payload] The secret's data to be stored. **payload\_content\_type** must also be supplied if **payload** is included.
  /// [payloadContentEncoding] (required if **payload** is encoded) The encoding used for the payload to be able to include it in the JSON request. Must be either `base64` or `binary`.
  /// [payloadContentType] (required if **payload** is included) The media type for the content of the payload. Must be one of `text/plain`, `text/plain;charset=utf-8`, `text/plain; charset=utf-8`, `application/octet-stream`, `application/pkcs8`.
  /// [region] The region in which to obtain the V1 KeyManager client.
  /// [secretRef] The secret reference / where to find the secret.
  /// [secretType] Used to indicate the type of secret being stored. For more information see [Secret types](https://docs.openstack.org/barbican/latest/api/reference/secret_types.html).
  /// [status] The status of the secret.
  /// [updatedAt] The date the secret was last updated.
  SecretV1State({
    this.acl,
    this.algorithm,
    this.allMetadata,
    this.bitLength,
    this.contentTypes,
    this.createdAt,
    this.creatorId,
    this.expiration,
    this.metadata,
    this.mode,
    this.name,
    this.payload,
    this.payloadContentEncoding,
    this.payloadContentType,
    this.region,
    this.secretRef,
    this.secretType,
    this.status,
    this.updatedAt,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acl': ?pulumi.Input.mapOptionalInputValue<SecretV1Acl, Map<String, dynamic>>(acl, (value) => value.toMap()),
      'algorithm': ?algorithm,
      'allMetadata': ?allMetadata,
      'bitLength': ?bitLength,
      'contentTypes': ?contentTypes,
      'createdAt': ?createdAt,
      'creatorId': ?creatorId,
      'expiration': ?expiration,
      'metadata': ?metadata,
      'mode': ?mode,
      'name': ?name,
      'payload': ?payload,
      'payloadContentEncoding': ?payloadContentEncoding,
      'payloadContentType': ?payloadContentType,
      'region': ?region,
      'secretRef': ?secretRef,
      'secretType': ?secretType,
      'status': ?status,
      'updatedAt': ?updatedAt,
    };
  }

  factory SecretV1State.fromMap(Map<String, dynamic> map) {
    return SecretV1State(
      acl: (() { final guardedValue = map['acl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecretV1Acl.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allMetadata: (() { final guardedValue = map['allMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      bitLength: (() { final guardedValue = map['bitLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      contentTypes: (() { final guardedValue = map['contentTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creatorId: (() { final guardedValue = map['creatorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expiration: (() { final guardedValue = map['expiration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metadata: (() { final guardedValue = map['metadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      mode: (() { final guardedValue = map['mode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payload: (() { final guardedValue = map['payload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadContentEncoding: (() { final guardedValue = map['payloadContentEncoding']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      payloadContentType: (() { final guardedValue = map['payloadContentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretRef: (() { final guardedValue = map['secretRef']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      secretType: (() { final guardedValue = map['secretType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      updatedAt: (() { final guardedValue = map['updatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


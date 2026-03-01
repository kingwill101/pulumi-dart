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
    pulumi.Output<SecretV1Acl>? acl,
    pulumi.Output<String>? algorithm,
    pulumi.Output<Map<String, String>>? allMetadata,
    pulumi.Output<int>? bitLength,
    pulumi.Output<Map<String, String>>? contentTypes,
    pulumi.Output<String>? createdAt,
    pulumi.Output<String>? creatorId,
    pulumi.Output<String>? expiration,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? mode,
    pulumi.Output<String>? name,
    pulumi.Output<String>? payload,
    pulumi.Output<String>? payloadContentEncoding,
    pulumi.Output<String>? payloadContentType,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretRef,
    pulumi.Output<String>? secretType,
    pulumi.Output<String>? status,
    pulumi.Output<String>? updatedAt,
  }) :
      acl = pulumi.Input.asOptionalInput<SecretV1Acl>(acl),
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      allMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(allMetadata),
      bitLength = pulumi.Input.asOptionalInput<int>(bitLength),
      contentTypes = pulumi.Input.asOptionalInput<Map<String, String>>(contentTypes),
      createdAt = pulumi.Input.asOptionalInput<String>(createdAt),
      creatorId = pulumi.Input.asOptionalInput<String>(creatorId),
      expiration = pulumi.Input.asOptionalInput<String>(expiration),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asOptionalInput<String>(name),
      payload = pulumi.Input.asOptionalInput<String>(payload),
      payloadContentEncoding = pulumi.Input.asOptionalInput<String>(payloadContentEncoding),
      payloadContentType = pulumi.Input.asOptionalInput<String>(payloadContentType),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretRef = pulumi.Input.asOptionalInput<String>(secretRef),
      secretType = pulumi.Input.asOptionalInput<String>(secretType),
      status = pulumi.Input.asOptionalInput<String>(status),
      updatedAt = pulumi.Input.asOptionalInput<String>(updatedAt);

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
      acl: map['acl'] == null ? null : pulumi.Output.create<SecretV1Acl>(SecretV1Acl.fromMap((map['acl'] as Map).cast<String, dynamic>())),
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      allMetadata: map['allMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['allMetadata'] as Map).cast<String, String>()),
      bitLength: map['bitLength'] == null ? null : pulumi.Output.create<int>(map['bitLength'] as int),
      contentTypes: map['contentTypes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['contentTypes'] as Map).cast<String, String>()),
      createdAt: map['createdAt'] == null ? null : pulumi.Output.create<String>(map['createdAt'] as String),
      creatorId: map['creatorId'] == null ? null : pulumi.Output.create<String>(map['creatorId'] as String),
      expiration: map['expiration'] == null ? null : pulumi.Output.create<String>(map['expiration'] as String),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      payload: map['payload'] == null ? null : pulumi.Output.create<String>(map['payload'] as String),
      payloadContentEncoding: map['payloadContentEncoding'] == null ? null : pulumi.Output.create<String>(map['payloadContentEncoding'] as String),
      payloadContentType: map['payloadContentType'] == null ? null : pulumi.Output.create<String>(map['payloadContentType'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretRef: map['secretRef'] == null ? null : pulumi.Output.create<String>(map['secretRef'] as String),
      secretType: map['secretType'] == null ? null : pulumi.Output.create<String>(map['secretType'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      updatedAt: map['updatedAt'] == null ? null : pulumi.Output.create<String>(map['updatedAt'] as String),
    );
  }
}


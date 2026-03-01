// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
/// Arguments for getCryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
class GetCryptoKeyVersionArgs {
  final pulumi.Input<String> cryptoKeyId;
  final pulumi.Input<String> cryptoKeyVersionId;
  final pulumi.Input<String> keyRingId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCryptoKeyVersionArgs].
  /// [cryptoKeyId] Required.
  /// [cryptoKeyVersionId] Required.
  /// [keyRingId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetCryptoKeyVersionArgs({
    required pulumi.Output<String> cryptoKeyId,
    required pulumi.Output<String> cryptoKeyVersionId,
    required pulumi.Output<String> keyRingId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      cryptoKeyId = pulumi.Input.asInput<String>(cryptoKeyId),
      cryptoKeyVersionId = pulumi.Input.asInput<String>(cryptoKeyVersionId),
      keyRingId = pulumi.Input.asInput<String>(keyRingId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKeyId': cryptoKeyId,
      'cryptoKeyVersionId': cryptoKeyVersionId,
      'keyRingId': keyRingId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetCryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetCryptoKeyVersionArgs(
      cryptoKeyId: pulumi.Output.create<String>(map['cryptoKeyId'] as String),
      cryptoKeyVersionId: pulumi.Output.create<String>(map['cryptoKeyVersionId'] as String),
      keyRingId: pulumi.Output.create<String>(map['keyRingId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


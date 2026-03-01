// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_external_protection_level_options.dart';

/// {@template pulumi_kms_crypto_key_version_crypto_key_version_args_doc}
/// The set of arguments for CryptoKeyVersion.
/// {@endtemplate}
/// {@macro pulumi_kms_crypto_key_version_crypto_key_version_args_doc}
class CryptoKeyVersionArgs {
  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String> cryptoKey;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionExternalProtectionLevelOptions>? externalProtectionLevelOptions;
  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  final pulumi.Input<String>? state;

  /// Creates a new [CryptoKeyVersionArgs].
  /// [cryptoKey] The name of the cryptoKey associated with the CryptoKeyVersions.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [state] The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  CryptoKeyVersionArgs({
    required pulumi.Output<String> cryptoKey,
    pulumi.Output<CryptoKeyVersionExternalProtectionLevelOptions>? externalProtectionLevelOptions,
    pulumi.Output<String>? state,
  }) :
      cryptoKey = pulumi.Input.asInput<String>(cryptoKey),
      externalProtectionLevelOptions = pulumi.Input.asOptionalInput<CryptoKeyVersionExternalProtectionLevelOptions>(externalProtectionLevelOptions),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'externalProtectionLevelOptions': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionExternalProtectionLevelOptions, Map<String, dynamic>>(externalProtectionLevelOptions, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory CryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionArgs(
      cryptoKey: pulumi.Output.create<String>(map['cryptoKey'] as String),
      externalProtectionLevelOptions: map['externalProtectionLevelOptions'] == null ? null : pulumi.Output.create<CryptoKeyVersionExternalProtectionLevelOptions>(CryptoKeyVersionExternalProtectionLevelOptions.fromMap((map['externalProtectionLevelOptions'] as Map).cast<String, dynamic>())),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}


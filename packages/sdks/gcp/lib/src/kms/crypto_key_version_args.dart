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
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionExternalProtectionLevelOptions>? externalProtectionLevelOptions;
  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  final pulumi.Input<String>? state;

  /// Creates a new [CryptoKeyVersionArgs].
  /// [cryptoKey] The name of the cryptoKey associated with the CryptoKeyVersions.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [state] The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  const CryptoKeyVersionArgs({
    required this.cryptoKey,
    this.deletionPolicy,
    this.externalProtectionLevelOptions,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cryptoKey': cryptoKey,
      'deletionPolicy': ?deletionPolicy,
      'externalProtectionLevelOptions': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionExternalProtectionLevelOptions, Map<String, dynamic>>(externalProtectionLevelOptions, (value) => value.toMap()),
      'state': ?state,
    };
  }

  factory CryptoKeyVersionArgs.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionArgs(
      cryptoKey: pulumi.Input.fromValue(map['cryptoKey'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalProtectionLevelOptions: (() { final guardedValue = map['externalProtectionLevelOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoKeyVersionExternalProtectionLevelOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

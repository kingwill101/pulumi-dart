// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_attestation.dart';
import 'crypto_key_version_external_protection_level_options.dart';

/// Input properties used for looking up and filtering CryptoKeyVersion resources.
class CryptoKeyVersionState {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final pulumi.Input<String?>? algorithm;
  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only provided for key versions with protectionLevel HSM.
  /// Structure is documented below.
  final pulumi.Input<List<CryptoKeyVersionAttestation>?>? attestations;
  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String?>? cryptoKey;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionExternalProtectionLevelOptions?>? externalProtectionLevelOptions;
  /// The time this CryptoKeyVersion key material was generated
  final pulumi.Input<String?>? generateTime;
  /// The resource name for this CryptoKeyVersion.
  final pulumi.Input<String?>? name;
  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  final pulumi.Input<String?>? protectionLevel;
  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  final pulumi.Input<String?>? state;

  /// Creates a new [CryptoKeyVersionState].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [attestations] Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// [cryptoKey] The name of the cryptoKey associated with the CryptoKeyVersions.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [generateTime] The time this CryptoKeyVersion key material was generated
  /// [name] The resource name for this CryptoKeyVersion.
  /// [protectionLevel] The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  /// [state] The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  const CryptoKeyVersionState({
    this.algorithm,
    this.attestations,
    this.cryptoKey,
    this.deletionPolicy,
    this.externalProtectionLevelOptions,
    this.generateTime,
    this.name,
    this.protectionLevel,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'attestations': ?pulumi.Input.mapOptionalInputValue<List<CryptoKeyVersionAttestation>, List<Map<String, dynamic>>>(attestations, (value) => pulumi.Input.encodeList<CryptoKeyVersionAttestation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cryptoKey': ?cryptoKey,
      'deletionPolicy': ?deletionPolicy,
      'externalProtectionLevelOptions': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionExternalProtectionLevelOptions, Map<String, dynamic>>(externalProtectionLevelOptions, (value) => value.toMap()),
      'generateTime': ?generateTime,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'state': ?state,
    };
  }

  factory CryptoKeyVersionState.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionState(
      algorithm: (() { final guardedValue = map['algorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      attestations: (() { final guardedValue = map['attestations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CryptoKeyVersionAttestation>(guardedValue, (value) => CryptoKeyVersionAttestation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cryptoKey: (() { final guardedValue = map['cryptoKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalProtectionLevelOptions: (() { final guardedValue = map['externalProtectionLevelOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CryptoKeyVersionExternalProtectionLevelOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      generateTime: (() { final guardedValue = map['generateTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionLevel: (() { final guardedValue = map['protectionLevel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

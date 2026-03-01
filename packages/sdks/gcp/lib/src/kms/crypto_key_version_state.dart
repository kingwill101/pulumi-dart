// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_attestation.dart';
import 'crypto_key_version_external_protection_level_options.dart';

/// Input properties used for looking up and filtering CryptoKeyVersion resources.
class CryptoKeyVersionState {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  final pulumi.Input<String>? algorithm;
  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only provided for key versions with protectionLevel HSM.
  /// Structure is documented below.
  final pulumi.Input<List<CryptoKeyVersionAttestation>>? attestations;
  /// The name of the cryptoKey associated with the CryptoKeyVersions.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyring}}/cryptoKeys/{{cryptoKey}}'`
  final pulumi.Input<String>? cryptoKey;
  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// Structure is documented below.
  final pulumi.Input<CryptoKeyVersionExternalProtectionLevelOptions>? externalProtectionLevelOptions;
  /// The time this CryptoKeyVersion key material was generated
  final pulumi.Input<String>? generateTime;
  /// The resource name for this CryptoKeyVersion.
  final pulumi.Input<String>? name;
  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  final pulumi.Input<String>? protectionLevel;
  /// The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  /// otherwise the value of this field is always retrieved automatically.
  /// Possible values are: `PENDING_GENERATION`, `ENABLED`, `DISABLED`, `DESTROYED`, `DESTROY_SCHEDULED`, `PENDING_IMPORT`, `IMPORT_FAILED`.
  final pulumi.Input<String>? state;

  /// Creates a new [CryptoKeyVersionState].
  /// [algorithm] The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  /// [attestations] Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// [cryptoKey] The name of the cryptoKey associated with the CryptoKeyVersions.
  /// [externalProtectionLevelOptions] ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  /// [generateTime] The time this CryptoKeyVersion key material was generated
  /// [name] The resource name for this CryptoKeyVersion.
  /// [protectionLevel] The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  /// [state] The current state of the CryptoKeyVersion. Note: you can only specify this field to manually `ENABLE` or `DISABLE` the CryptoKeyVersion,
  CryptoKeyVersionState({
    pulumi.Output<String>? algorithm,
    pulumi.Output<List<CryptoKeyVersionAttestation>>? attestations,
    pulumi.Output<String>? cryptoKey,
    pulumi.Output<CryptoKeyVersionExternalProtectionLevelOptions>? externalProtectionLevelOptions,
    pulumi.Output<String>? generateTime,
    pulumi.Output<String>? name,
    pulumi.Output<String>? protectionLevel,
    pulumi.Output<String>? state,
  }) :
      algorithm = pulumi.Input.asOptionalInput<String>(algorithm),
      attestations = pulumi.Input.asOptionalInput<List<CryptoKeyVersionAttestation>>(attestations),
      cryptoKey = pulumi.Input.asOptionalInput<String>(cryptoKey),
      externalProtectionLevelOptions = pulumi.Input.asOptionalInput<CryptoKeyVersionExternalProtectionLevelOptions>(externalProtectionLevelOptions),
      generateTime = pulumi.Input.asOptionalInput<String>(generateTime),
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionLevel = pulumi.Input.asOptionalInput<String>(protectionLevel),
      state = pulumi.Input.asOptionalInput<String>(state);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'attestations': ?pulumi.Input.mapOptionalInputValue<List<CryptoKeyVersionAttestation>, List<Map<String, dynamic>>>(attestations, (value) => pulumi.Input.encodeList<CryptoKeyVersionAttestation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cryptoKey': ?cryptoKey,
      'externalProtectionLevelOptions': ?pulumi.Input.mapOptionalInputValue<CryptoKeyVersionExternalProtectionLevelOptions, Map<String, dynamic>>(externalProtectionLevelOptions, (value) => value.toMap()),
      'generateTime': ?generateTime,
      'name': ?name,
      'protectionLevel': ?protectionLevel,
      'state': ?state,
    };
  }

  factory CryptoKeyVersionState.fromMap(Map<String, dynamic> map) {
    return CryptoKeyVersionState(
      algorithm: map['algorithm'] == null ? null : pulumi.Output.create<String>(map['algorithm'] as String),
      attestations: map['attestations'] == null ? null : pulumi.Output.create<List<CryptoKeyVersionAttestation>>(pulumi.Input.decodeList<CryptoKeyVersionAttestation>(map['attestations'], (value) => CryptoKeyVersionAttestation.fromMap((value as Map).cast<String, dynamic>()))),
      cryptoKey: map['cryptoKey'] == null ? null : pulumi.Output.create<String>(map['cryptoKey'] as String),
      externalProtectionLevelOptions: map['externalProtectionLevelOptions'] == null ? null : pulumi.Output.create<CryptoKeyVersionExternalProtectionLevelOptions>(CryptoKeyVersionExternalProtectionLevelOptions.fromMap((map['externalProtectionLevelOptions'] as Map).cast<String, dynamic>())),
      generateTime: map['generateTime'] == null ? null : pulumi.Output.create<String>(map['generateTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionLevel: map['protectionLevel'] == null ? null : pulumi.Output.create<String>(map['protectionLevel'] as String),
      state: map['state'] == null ? null : pulumi.Output.create<String>(map['state'] as String),
    );
  }
}


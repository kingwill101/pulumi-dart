import 'package:pulumi/pulumi.dart' as pulumi;
import 'crypto_key_version_args.dart';
import 'external_protection_level_options_response.dart';
import 'key_operation_attestation_response.dart';

/// Create a new CryptoKeyVersion in a CryptoKey. The server will assign the next sequential id. If unset, state will be set to ENABLED.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class CryptoKeyVersion extends pulumi.CustomResource {
  /// The CryptoKeyVersionAlgorithm that this CryptoKeyVersion supports.
  late final pulumi.Output<String> algorithm;

  /// Statement that was generated and signed by the HSM at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only provided for key versions with protection_level HSM.
  late final pulumi.Output<KeyOperationAttestationResponse> attestation;

  /// The time at which this CryptoKeyVersion was created.
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String> cryptoKeyId;

  /// The time this CryptoKeyVersion's key material was destroyed. Only present if state is DESTROYED.
  late final pulumi.Output<String> destroyEventTime;

  /// The time this CryptoKeyVersion's key material is scheduled for destruction. Only present if state is DESTROY_SCHEDULED.
  late final pulumi.Output<String> destroyTime;

  /// The root cause of the most recent external destruction failure. Only present if state is EXTERNAL_DESTRUCTION_FAILED.
  late final pulumi.Output<String> externalDestructionFailureReason;

  /// ExternalProtectionLevelOptions stores a group of additional fields for configuring a CryptoKeyVersion that are specific to the EXTERNAL protection level and EXTERNAL_VPC protection levels.
  late final pulumi.Output<ExternalProtectionLevelOptionsResponse>
  externalProtectionLevelOptions;

  /// The time this CryptoKeyVersion's key material was generated.
  late final pulumi.Output<String> generateTime;

  /// The root cause of the most recent generation failure. Only present if state is GENERATION_FAILED.
  late final pulumi.Output<String> generationFailureReason;

  /// The root cause of the most recent import failure. Only present if state is IMPORT_FAILED.
  late final pulumi.Output<String> importFailureReason;

  /// The name of the ImportJob used in the most recent import of this CryptoKeyVersion. Only present if the underlying key material was imported.
  late final pulumi.Output<String> importJob;

  /// The time at which this CryptoKeyVersion's key material was most recently imported.
  late final pulumi.Output<String> importTime;
  late final pulumi.Output<String> keyRingId;
  late final pulumi.Output<String> location;

  /// The resource name for this CryptoKeyVersion in the format `projects/*/locations/*/keyRings/*/cryptoKeys/*/cryptoKeyVersions/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The ProtectionLevel describing how crypto operations are performed with this CryptoKeyVersion.
  late final pulumi.Output<String> protectionLevel;

  /// Whether or not this key version is eligible for reimport, by being specified as a target in ImportCryptoKeyVersionRequest.crypto_key_version.
  late final pulumi.Output<bool> reimportEligible;

  /// The current state of the CryptoKeyVersion.
  late final pulumi.Output<String> state;

  /// Creates a new [CryptoKeyVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CryptoKeyVersion]. {@macro pulumi_cloudkms_v1_crypto_key_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CryptoKeyVersion(
    String name, {
    CryptoKeyVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:cloudkms/v1:CryptoKeyVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    algorithm = registerOutput<String>('algorithm');
    attestation = registerOutput<KeyOperationAttestationResponse>(
      'attestation',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return KeyOperationAttestationResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    createTime = registerOutput<String>('createTime');
    cryptoKeyId = registerOutput<String>('cryptoKeyId');
    destroyEventTime = registerOutput<String>('destroyEventTime');
    destroyTime = registerOutput<String>('destroyTime');
    externalDestructionFailureReason = registerOutput<String>(
      'externalDestructionFailureReason',
    );
    externalProtectionLevelOptions =
        registerOutput<ExternalProtectionLevelOptionsResponse>(
          'externalProtectionLevelOptions',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return ExternalProtectionLevelOptionsResponse.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    generateTime = registerOutput<String>('generateTime');
    generationFailureReason = registerOutput<String>('generationFailureReason');
    importFailureReason = registerOutput<String>('importFailureReason');
    importJob = registerOutput<String>('importJob');
    importTime = registerOutput<String>('importTime');
    keyRingId = registerOutput<String>('keyRingId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protectionLevel = registerOutput<String>('protectionLevel');
    reimportEligible = registerOutput<bool>('reimportEligible');
    state = registerOutput<String>('state');
  }
}

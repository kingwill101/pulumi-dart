import 'package:pulumi/pulumi.dart' as pulumi;
import 'import_job_args.dart';
import 'key_operation_attestation_response.dart';
import 'wrapping_public_key_response.dart';

/// Create a new ImportJob within a KeyRing. ImportJob.import_method is required.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class ImportJob extends pulumi.CustomResource {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time. Use this statement to verify attributes of the key as stored on the HSM, independently of Google. Only present if the chosen ImportMethod is one with a protection level of HSM.
  late final pulumi.Output<KeyOperationAttestationResponse> attestation;
  /// The time at which this ImportJob was created.
  late final pulumi.Output<String> createTime;
  /// The time this ImportJob expired. Only present if state is EXPIRED.
  late final pulumi.Output<String> expireEventTime;
  /// The time at which this ImportJob is scheduled for expiration and can no longer be used to import key material.
  late final pulumi.Output<String> expireTime;
  /// The time this ImportJob's key material was generated.
  late final pulumi.Output<String> generateTime;
  /// Required. It must be unique within a KeyRing and match the regular expression `[a-zA-Z0-9_-]{1,63}`
  late final pulumi.Output<String> importJobId;
  /// Immutable. The wrapping method to be used for incoming key material.
  late final pulumi.Output<String> importMethod;
  late final pulumi.Output<String> keyRingId;
  late final pulumi.Output<String> location;
  /// The resource name for this ImportJob in the format `projects/*/locations/*/keyRings/*/importJobs/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// Immutable. The protection level of the ImportJob. This must match the protection_level of the version_template on the CryptoKey you attempt to import into.
  late final pulumi.Output<String> protectionLevel;
  /// The public key with which to wrap key material prior to import. Only returned if state is ACTIVE.
  late final pulumi.Output<WrappingPublicKeyResponse> publicKey;
  /// The current state of the ImportJob, indicating if it can be used.
  late final pulumi.Output<String> state;

  /// Creates a new [ImportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImportJob]. {@macro pulumi_cloudkms_v1_import_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImportJob(
    String name, {
    ImportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:ImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestation = registerOutput<KeyOperationAttestationResponse>('attestation', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return KeyOperationAttestationResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    createTime = registerOutput<String>('createTime');
    expireEventTime = registerOutput<String>('expireEventTime');
    expireTime = registerOutput<String>('expireTime');
    generateTime = registerOutput<String>('generateTime');
    importJobId = registerOutput<String>('importJobId');
    importMethod = registerOutput<String>('importMethod');
    keyRingId = registerOutput<String>('keyRingId');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    protectionLevel = registerOutput<String>('protectionLevel');
    publicKey = registerOutput<WrappingPublicKeyResponse>('publicKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return WrappingPublicKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    state = registerOutput<String>('state');
  }
}

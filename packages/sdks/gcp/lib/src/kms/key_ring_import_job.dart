import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_ring_import_job_args.dart';
import 'key_ring_import_job_attestation.dart';
import 'key_ring_import_job_public_key.dart';
import 'key_ring_import_job_state.dart';

/// A `KeyRingImportJob` can be used to create `CryptoKeys` and `CryptoKeyVersions` using pre-existing
/// key material, generated outside of Cloud KMS. A `KeyRingImportJob` expires 3 days after it is created.
/// Once expired, Cloud KMS will no longer be able to import or unwrap any key material that
/// was wrapped with the `KeyRingImportJob`'s public key.
///
/// &gt; **Note:** KeyRingImportJobs cannot be deleted from Google Cloud Platform.
/// Destroying a provider-managed KeyRingImportJob will remove it from state but
/// *will not delete the resource from the project.*
///
///
/// To get more information about KeyRingImportJob, see:
///
/// * [API documentation](https://cloud.google.com/kms/docs/reference/rest/v1/projects.locations.keyRings.importJobs)
/// * How-to Guides
/// * [Importing a key](https://cloud.google.com/kms/docs/importing-a-key)
///
/// ## Example Usage
///
/// ## Import
///
/// KeyRingImportJob can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, KeyRingImportJob can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/keyRingImportJob:KeyRingImportJob default {{name}}
/// ```
class KeyRingImportJob extends pulumi.CustomResource {
  /// Statement that was generated and signed by the key creator (for example, an HSM) at key creation time.
  /// Use this statement to verify attributes of the key as stored on the HSM, independently of Google.
  /// Only present if the chosen ImportMethod is one with a protection level of HSM.
  /// Structure is documented below.
  late final pulumi.Output<List<KeyRingImportJobAttestation>> attestations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The time at which this resource is scheduled for expiration and can no longer be used.
  /// This is in RFC3339 text format.
  late final pulumi.Output<String> expireTime;
  /// It must be unique within a KeyRing and match the regular expression [a-zA-Z0-9_-]{1,63}
  late final pulumi.Output<String> importJobId;
  /// The wrapping method to be used for incoming key material.
  /// Possible values are: `RSA_OAEP_3072_SHA1_AES_256`, `RSA_OAEP_4096_SHA1_AES_256`, `RSA_OAEP_3072_SHA256_AES_256`, `RSA_OAEP_4096_SHA256_AES_256`, `RSA_OAEP_3072_SHA256`, `RSA_OAEP_4096_SHA256`.
  late final pulumi.Output<String> importMethod;
  /// The KeyRing that this import job belongs to.
  /// Format: `'projects/{{project}}/locations/{{location}}/keyRings/{{keyRing}}'`.
  late final pulumi.Output<String> keyRing;
  /// The resource name for this ImportJob in the format projects/*/locations/*/keyRings/*/importJobs/*.
  late final pulumi.Output<String> name;
  /// The protection level of the ImportJob. This must match the protectionLevel of the
  /// versionTemplate on the CryptoKey you attempt to import into.
  /// Possible values are: `SOFTWARE`, `HSM`, `EXTERNAL`.
  late final pulumi.Output<String> protectionLevel;
  /// The public key with which to wrap key material prior to import. Only returned if state is `ACTIVE`.
  /// Structure is documented below.
  late final pulumi.Output<List<KeyRingImportJobPublicKey>> publicKeys;
  /// The current state of the ImportJob, indicating if it can be used.
  late final pulumi.Output<String> state;

  /// Creates a new [KeyRingImportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [KeyRingImportJob]. {@macro pulumi_kms_key_ring_import_job_key_ring_import_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  KeyRingImportJob(
    String name, {
    KeyRingImportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyRingImportJob:KeyRingImportJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    attestations = registerOutput<List<KeyRingImportJobAttestation>>('attestations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyRingImportJobAttestation>(guardedValue, (value) => KeyRingImportJobAttestation.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expireTime = registerOutput<String>('expireTime');
    importJobId = registerOutput<String>('importJobId');
    importMethod = registerOutput<String>('importMethod');
    keyRing = registerOutput<String>('keyRing');
    this.name = registerOutput<String>('name');
    protectionLevel = registerOutput<String>('protectionLevel');
    publicKeys = registerOutput<List<KeyRingImportJobPublicKey>>('publicKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyRingImportJobPublicKey>(guardedValue, (value) => KeyRingImportJobPublicKey.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }

  /// Gets an existing [KeyRingImportJob] resource's state with the given [name] and [id].
  static KeyRingImportJob get(
    String name,
    pulumi.Input<String> id, {
    KeyRingImportJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return KeyRingImportJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  KeyRingImportJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:kms/keyRingImportJob:KeyRingImportJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    attestations = registerOutput<List<KeyRingImportJobAttestation>>('attestations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyRingImportJobAttestation>(guardedValue, (value) => KeyRingImportJobAttestation.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expireTime = registerOutput<String>('expireTime');
    importJobId = registerOutput<String>('importJobId');
    importMethod = registerOutput<String>('importMethod');
    keyRing = registerOutput<String>('keyRing');
    this.name = registerOutput<String>('name');
    protectionLevel = registerOutput<String>('protectionLevel');
    publicKeys = registerOutput<List<KeyRingImportJobPublicKey>>('publicKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyRingImportJobPublicKey>(guardedValue, (value) => KeyRingImportJobPublicKey.fromMap((value as Map).cast<String, dynamic>())); });
    this.state = registerOutput<String>('state');
  }

  /// Creates a typed reference to an existing [KeyRingImportJob] resource.
  KeyRingImportJob.reference(String urn)
    : super(
        'gcp:kms/keyRingImportJob:KeyRingImportJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    attestations = registerOutput<List<KeyRingImportJobAttestation>>('attestations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyRingImportJobAttestation>(guardedValue, (value) => KeyRingImportJobAttestation.fromMap((value as Map).cast<String, dynamic>())); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    expireTime = registerOutput<String>('expireTime');
    importJobId = registerOutput<String>('importJobId');
    importMethod = registerOutput<String>('importMethod');
    keyRing = registerOutput<String>('keyRing');
    this.name = registerOutput<String>('name');
    protectionLevel = registerOutput<String>('protectionLevel');
    publicKeys = registerOutput<List<KeyRingImportJobPublicKey>>('publicKeys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<KeyRingImportJobPublicKey>(guardedValue, (value) => KeyRingImportJobPublicKey.fromMap((value as Map).cast<String, dynamic>())); });
    state = registerOutput<String>('state');
  }
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_artifact_healthcare_v1beta1_args.dart';
import 'signature_response_healthcare_v1beta1.dart';

/// Creates a new Consent artifact in the parent consent store.
class ConsentArtifactHealthcareV1beta1 extends pulumi.CustomResource {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  late final pulumi.Output<List<Map<String, dynamic>>>
  consentContentScreenshots;

  /// Optional. An string indicating the version of the consent information shown to the user.
  late final pulumi.Output<String> consentContentVersion;
  late final pulumi.Output<String> consentStoreId;
  late final pulumi.Output<String> datasetId;

  /// Optional. A signature from a guardian.
  late final pulumi.Output<SignatureResponseHealthcareV1beta1>
  guardianSignature;
  late final pulumi.Output<String> location;

  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  late final pulumi.Output<Map<String, String>> metadata;

  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// User's UUID provided by the client.
  late final pulumi.Output<String> userId;

  /// Optional. User's signature.
  late final pulumi.Output<SignatureResponseHealthcareV1beta1> userSignature;

  /// Optional. A signature from a witness.
  late final pulumi.Output<SignatureResponseHealthcareV1beta1> witnessSignature;

  /// Creates a new [ConsentArtifactHealthcareV1beta1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsentArtifactHealthcareV1beta1]. {@macro pulumi_healthcare_v1beta1_consent_artifact_healthcare_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsentArtifactHealthcareV1beta1(
    String name, {
    ConsentArtifactHealthcareV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:healthcare/v1beta1:ConsentArtifact',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    consentContentScreenshots = registerOutput<List<Map<String, dynamic>>>(
      'consentContentScreenshots',
    );
    consentContentVersion = registerOutput<String>('consentContentVersion');
    consentStoreId = registerOutput<String>('consentStoreId');
    datasetId = registerOutput<String>('datasetId');
    guardianSignature = registerOutput<SignatureResponseHealthcareV1beta1>(
      'guardianSignature',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SignatureResponseHealthcareV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    userId = registerOutput<String>('userId');
    userSignature = registerOutput<SignatureResponseHealthcareV1beta1>(
      'userSignature',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SignatureResponseHealthcareV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    witnessSignature = registerOutput<SignatureResponseHealthcareV1beta1>(
      'witnessSignature',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SignatureResponseHealthcareV1beta1.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}

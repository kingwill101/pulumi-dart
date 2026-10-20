import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_artifact_args.dart';
import 'image_response.dart';
import 'signature_response.dart';

/// Creates a new Consent artifact in the parent consent store.
class ConsentArtifact extends pulumi.CustomResource {
  /// Optional. Screenshots, PDFs, or other binary information documenting the user's consent.
  late final pulumi.Output<List<ImageResponse>> consentContentScreenshots;
  /// Optional. An string indicating the version of the consent information shown to the user.
  late final pulumi.Output<String> consentContentVersion;
  late final pulumi.Output<String> consentStoreId;
  late final pulumi.Output<String> datasetId;
  /// Optional. A signature from a guardian.
  late final pulumi.Output<SignatureResponse> guardianSignature;
  late final pulumi.Output<String> location;
  /// Optional. Metadata associated with the Consent artifact. For example, the consent locale or user agent version.
  late final pulumi.Output<Map<String, String>> metadata;
  /// Resource name of the Consent artifact, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;
  /// User's UUID provided by the client.
  late final pulumi.Output<String> userId;
  /// Optional. User's signature.
  late final pulumi.Output<SignatureResponse> userSignature;
  /// Optional. A signature from a witness.
  late final pulumi.Output<SignatureResponse> witnessSignature;

  /// Creates a new [ConsentArtifact].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsentArtifact]. {@macro pulumi_healthcare_v1_consent_artifact_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsentArtifact(
    String name, {
    ConsentArtifactArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:ConsentArtifact',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['consentStoreId', 'datasetId', 'location', 'project']).merge(options),
        ) {
    consentContentScreenshots = registerOutput<List<ImageResponse>>('consentContentScreenshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageResponse>(guardedValue, (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    consentContentVersion = registerOutput<String>('consentContentVersion');
    consentStoreId = registerOutput<String>('consentStoreId');
    datasetId = registerOutput<String>('datasetId');
    guardianSignature = registerOutput<SignatureResponse>('guardianSignature', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    userId = registerOutput<String>('userId');
    userSignature = registerOutput<SignatureResponse>('userSignature', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    witnessSignature = registerOutput<SignatureResponse>('witnessSignature', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ConsentArtifact] resource.
  ConsentArtifact.reference(String urn)
    : super(
        'google-native:healthcare/v1:ConsentArtifact',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    consentContentScreenshots = registerOutput<List<ImageResponse>>('consentContentScreenshots', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<ImageResponse>(guardedValue, (value) => ImageResponse.fromMap((value as Map).cast<String, dynamic>())); });
    consentContentVersion = registerOutput<String>('consentContentVersion');
    consentStoreId = registerOutput<String>('consentStoreId');
    datasetId = registerOutput<String>('datasetId');
    guardianSignature = registerOutput<SignatureResponse>('guardianSignature', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    userId = registerOutput<String>('userId');
    userSignature = registerOutput<SignatureResponse>('userSignature', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    witnessSignature = registerOutput<SignatureResponse>('witnessSignature', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SignatureResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

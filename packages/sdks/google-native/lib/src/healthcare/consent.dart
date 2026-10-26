import 'package:pulumi/pulumi.dart' as pulumi;
import 'consent_args.dart';
import 'google_cloud_healthcare_v1_consent_policy_response.dart';

/// Creates a new Consent in the parent consent store.
class Consent extends pulumi.CustomResource {
  /// The resource name of the Consent artifact that contains proof of the end user's consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consentArtifacts/{consent_artifact_id}`.
  late final pulumi.Output<String> consentArtifact;
  late final pulumi.Output<String> consentStoreId;
  late final pulumi.Output<String> datasetId;
  /// Timestamp in UTC of when this Consent is considered expired.
  late final pulumi.Output<String> expireTime;
  late final pulumi.Output<String> location;
  /// Optional. User-supplied key-value pairs used to organize Consent resources. Metadata keys must: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - begin with a letter - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes Metadata values must be: - be between 1 and 63 characters long - have a UTF-8 encoding of maximum 128 bytes - consist of up to 63 characters including lowercase letters, numeric characters, underscores, and dashes No more than 64 metadata entries can be associated with a given consent.
  late final pulumi.Output<Map<String, String>> metadata;
  /// Resource name of the Consent, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/consents/{consent_id}`. Cannot be changed after creation.
  late final pulumi.Output<String> name;
  /// Optional. Represents a user's consent in terms of the resources that can be accessed and under what conditions.
  late final pulumi.Output<List<GoogleCloudHealthcareV1ConsentPolicyResponse>> policies;
  late final pulumi.Output<String> project;
  /// The timestamp that the revision was created.
  late final pulumi.Output<String> revisionCreateTime;
  /// The revision ID of the Consent. The format is an 8-character hexadecimal string. Refer to a specific revision of a Consent by appending `@{revision_id}` to the Consent's resource name.
  late final pulumi.Output<String> revisionId;
  /// Indicates the current state of this Consent.
  late final pulumi.Output<String> state;
  /// Input only. The time to live for this Consent from when it is created.
  late final pulumi.Output<String> ttl;
  /// User's UUID provided by the client.
  late final pulumi.Output<String> userId;

  /// Creates a new [Consent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Consent]. {@macro pulumi_healthcare_v1_consent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Consent(
    String name, {
    ConsentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:healthcare/v1:Consent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['consentStoreId', 'datasetId', 'location', 'project']).merge(options),
        ) {
    consentArtifact = registerOutput<String>('consentArtifact');
    consentStoreId = registerOutput<String>('consentStoreId');
    datasetId = registerOutput<String>('datasetId');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<GoogleCloudHealthcareV1ConsentPolicyResponse>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudHealthcareV1ConsentPolicyResponse>(guardedValue, (value) => GoogleCloudHealthcareV1ConsentPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    revisionCreateTime = registerOutput<String>('revisionCreateTime');
    revisionId = registerOutput<String>('revisionId');
    state = registerOutput<String>('state');
    ttl = registerOutput<String>('ttl');
    userId = registerOutput<String>('userId');
  }

  /// Creates a typed reference to an existing [Consent] resource.
  Consent.reference(String urn)
    : super(
        'google-native:healthcare/v1:Consent',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    consentArtifact = registerOutput<String>('consentArtifact');
    consentStoreId = registerOutput<String>('consentStoreId');
    datasetId = registerOutput<String>('datasetId');
    expireTime = registerOutput<String>('expireTime');
    location = registerOutput<String>('location');
    metadata = registerOutput<Map<String, String>>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<GoogleCloudHealthcareV1ConsentPolicyResponse>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<GoogleCloudHealthcareV1ConsentPolicyResponse>(guardedValue, (value) => GoogleCloudHealthcareV1ConsentPolicyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    project = registerOutput<String>('project');
    revisionCreateTime = registerOutput<String>('revisionCreateTime');
    revisionId = registerOutput<String>('revisionId');
    state = registerOutput<String>('state');
    ttl = registerOutput<String>('ttl');
    userId = registerOutput<String>('userId');
  }
}

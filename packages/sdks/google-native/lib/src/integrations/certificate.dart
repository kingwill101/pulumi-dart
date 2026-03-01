import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_args.dart';
import 'google_cloud_integrations_v1alpha_client_certificate_response.dart';

/// Creates a new certificate. The certificate will be registered to the trawler service and will be encrypted using cloud KMS and stored in Spanner Returns the certificate.
/// Auto-naming is currently not supported for this resource.
class Certificate extends pulumi.CustomResource {
  /// Status of the certificate
  late final pulumi.Output<String> certificateStatus;
  /// Immutable. Credential id that will be used to register with trawler INTERNAL_ONLY
  late final pulumi.Output<String> credentialId;
  /// Description of the certificate
  late final pulumi.Output<String> description;
  /// Name of the certificate
  late final pulumi.Output<String> displayName;
  late final pulumi.Output<String> location;
  /// Auto generated primary key
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> productId;
  late final pulumi.Output<String> project;
  /// Input only. Raw client certificate which would be registered with trawler
  late final pulumi.Output<GoogleCloudIntegrationsV1alphaClientCertificateResponse> rawCertificate;
  /// Immutable. Requestor ID to be used to register certificate with trawler
  late final pulumi.Output<String> requestorId;
  /// The timestamp after which certificate will expire
  late final pulumi.Output<String> validEndTime;
  /// The timestamp after which certificate will be valid
  late final pulumi.Output<String> validStartTime;

  /// Creates a new [Certificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Certificate]. {@macro pulumi_integrations_v1alpha_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Certificate(
    String name, {
    CertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:Certificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.certificateStatus = registerOutput<String>('certificateStatus');
    this.credentialId = registerOutput<String>('credentialId');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.productId = registerOutput<String>('productId');
    this.project = registerOutput<String>('project');
    this.rawCertificate = registerOutput<GoogleCloudIntegrationsV1alphaClientCertificateResponse>('rawCertificate');
    this.requestorId = registerOutput<String>('requestorId');
    this.validEndTime = registerOutput<String>('validEndTime');
    this.validStartTime = registerOutput<String>('validStartTime');
  }
}

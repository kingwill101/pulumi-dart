import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'certificate_signing_request_certificates_k8s_io_v1beta1_args.dart';
import 'certificate_signing_request_spec_certificates_k8s_io_v1beta1.dart';
import 'certificate_signing_request_status_certificates_k8s_io_v1beta1.dart';

/// Describes a certificate signing request
class CertificateSigningRequestResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;

  /// The certificate request itself and any additional information.
  late final pulumi.Output<
    CertificateSigningRequestSpecCertificatesK8sIoV1beta1
  >
  spec;

  /// Derived information about the request.
  late final pulumi.Output<
    CertificateSigningRequestStatusCertificatesK8sIoV1beta1?
  >
  status;

  /// Creates a new [CertificateSigningRequestResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateSigningRequestResource]. {@macro pulumi_certificates_k8s_io_v1beta1_certificate_signing_request_certificates_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateSigningRequestResource(
    String name, {
    CertificateSigningRequestCertificatesK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:certificates.k8s.io/v1beta1:CertificateSigningRequest',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata');
    spec =
        registerOutput<CertificateSigningRequestSpecCertificatesK8sIoV1beta1>(
          'spec',
        );
    status =
        registerOutput<
          CertificateSigningRequestStatusCertificatesK8sIoV1beta1?
        >('status');
  }
}

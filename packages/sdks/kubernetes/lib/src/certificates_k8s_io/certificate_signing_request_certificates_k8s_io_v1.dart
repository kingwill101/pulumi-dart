import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'certificate_signing_request_args.dart';
import 'certificate_signing_request_spec.dart';
import 'certificate_signing_request_status.dart';

/// CertificateSigningRequest objects provide a mechanism to obtain x509 certificates by submitting a certificate signing request, and having it asynchronously approved and issued.
///
/// Kubelets use this API to obtain:
/// 1. client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client-kubelet" signerName).
/// 2. serving certificates for TLS endpoints kube-apiserver can connect to securely (with the "kubernetes.io/kubelet-serving" signerName).
///
/// This API can be used to request client certificates to authenticate to kube-apiserver (with the "kubernetes.io/kube-apiserver-client" signerName), or to obtain certificates from custom non-Kubernetes signers.
class CertificateSigningRequestCertificatesK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec contains the certificate request, and is immutable after creation. Only the request, signerName, expirationSeconds, and usages fields can be set on creation. Other fields are derived by Kubernetes and cannot be modified by users.
  late final pulumi.Output<CertificateSigningRequestSpec> spec;
  /// status contains information about whether the request is approved or denied, and the certificate issued by the signer, or the failure condition indicating signer failure.
  late final pulumi.Output<CertificateSigningRequestStatus?> status;

  /// Creates a new [CertificateSigningRequestCertificatesK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateSigningRequestCertificatesK8sIoV1]. {@macro pulumi_certificates_k8s_io_v1_certificate_signing_request_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateSigningRequestCertificatesK8sIoV1(
    String name, {
    CertificateSigningRequestArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1:CertificateSigningRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<CertificateSigningRequestSpec>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateSigningRequestSpec.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<CertificateSigningRequestStatus?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return CertificateSigningRequestStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

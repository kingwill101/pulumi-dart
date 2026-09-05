import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta.dart';
import 'pod_certificate_request_certificates_k8s_io_v1beta1_args.dart';
import 'pod_certificate_request_spec_certificates_k8s_io_v1beta1.dart';
import 'pod_certificate_request_status_certificates_k8s_io_v1beta1.dart';

/// PodCertificateRequest encodes a pod requesting a certificate from a given signer.
///
/// Kubelets use this API to implement podCertificate projected volumes
class PodCertificateRequestResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the object metadata.
  late final pulumi.Output<ObjectMeta> metadata;
  /// spec contains the details about the certificate being requested.
  late final pulumi.Output<PodCertificateRequestSpecCertificatesK8sIoV1beta1> spec;
  /// status contains the issued certificate, and a standard set of conditions.
  late final pulumi.Output<PodCertificateRequestStatusCertificatesK8sIoV1beta1?> status;

  /// Creates a new [PodCertificateRequestResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodCertificateRequestResource]. {@macro pulumi_certificates_k8s_io_v1beta1_pod_certificate_request_certificates_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodCertificateRequestResource(
    String name, {
    PodCertificateRequestCertificatesK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1beta1:PodCertificateRequest',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodCertificateRequestSpecCertificatesK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodCertificateRequestSpecCertificatesK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodCertificateRequestStatusCertificatesK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodCertificateRequestStatusCertificatesK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodCertificateRequestResource] resource.
  PodCertificateRequestResource.reference(String urn)
    : super(
        'kubernetes:certificates.k8s.io/v1beta1:PodCertificateRequest',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ObjectMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ObjectMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    spec = registerOutput<PodCertificateRequestSpecCertificatesK8sIoV1beta1>('spec', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodCertificateRequestSpecCertificatesK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<PodCertificateRequestStatusCertificatesK8sIoV1beta1?>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return PodCertificateRequestStatusCertificatesK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

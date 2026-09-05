import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'pod_certificate_request.dart';
import 'pod_certificate_request_list_args.dart';

/// PodCertificateRequestList is a collection of PodCertificateRequest objects
class PodCertificateRequestListCertificatesK8sIoV1 extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  /// items is a collection of PodCertificateRequest objects
  late final pulumi.Output<List<PodCertificateRequest>> items;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  /// metadata contains the list metadata.
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [PodCertificateRequestListCertificatesK8sIoV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PodCertificateRequestListCertificatesK8sIoV1]. {@macro pulumi_certificates_k8s_io_v1_pod_certificate_request_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PodCertificateRequestListCertificatesK8sIoV1(
    String name, {
    PodCertificateRequestListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'kubernetes:certificates.k8s.io/v1:PodCertificateRequestList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PodCertificateRequest>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PodCertificateRequest>(guardedValue, (value) => PodCertificateRequest.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [PodCertificateRequestListCertificatesK8sIoV1] resource.
  PodCertificateRequestListCertificatesK8sIoV1.reference(String urn)
    : super(
        'kubernetes:certificates.k8s.io/v1:PodCertificateRequestList',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<PodCertificateRequest>>('items', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<PodCertificateRequest>(guardedValue, (value) => PodCertificateRequest.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ListMeta.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}

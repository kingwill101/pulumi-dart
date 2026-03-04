import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/list_meta.dart';
import 'certificate_signing_request_list_certificates_k8s_io_v1beta1_args.dart';

class CertificateSigningRequestListResource extends pulumi.CustomResource {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  late final pulumi.Output<String> apiVersion;
  late final pulumi.Output<List<Map<String, dynamic>>> items;

  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  late final pulumi.Output<String> kind;
  late final pulumi.Output<ListMeta> metadata;

  /// Creates a new [CertificateSigningRequestListResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CertificateSigningRequestListResource]. {@macro pulumi_certificates_k8s_io_v1beta1_certificate_signing_request_list_certificates_k8s_io_v1beta1_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CertificateSigningRequestListResource(
    String name, {
    CertificateSigningRequestListCertificatesK8sIoV1beta1Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'kubernetes:certificates.k8s.io/v1beta1:CertificateSigningRequestList',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    apiVersion = registerOutput<String>('apiVersion');
    items = registerOutput<List<Map<String, dynamic>>>('items');
    kind = registerOutput<String>('kind');
    metadata = registerOutput<ListMeta>('metadata');
  }
}

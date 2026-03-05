import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_ssl_certificate_args.dart';
import 'ssl_certificate_managed_ssl_certificate_response.dart';
import 'ssl_certificate_self_managed_ssl_certificate_response.dart';

/// Creates a SslCertificate resource in the specified project and region using the data included in the request
class RegionSslCertificate extends pulumi.CustomResource {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  late final pulumi.Output<String> certificate;
  /// Creation timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTimestamp;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String> description;
  /// Expire time of the certificate. RFC3339
  late final pulumi.Output<String> expireTime;
  /// Type of the resource. Always compute#sslCertificate for SSL certificates.
  late final pulumi.Output<String> kind;
  /// Configuration and status of a managed SSL certificate.
  late final pulumi.Output<SslCertificateManagedSslCertificateResponse> managed;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;
  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  late final pulumi.Output<String> privateKey;
  late final pulumi.Output<String> project;
  late final pulumi.Output<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// [Output only] Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;
  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithId;
  /// Configuration and status of a self-managed SSL certificate.
  late final pulumi.Output<SslCertificateSelfManagedSslCertificateResponse> selfManaged;
  /// Domains associated with the certificate via Subject Alternative Name.
  late final pulumi.Output<List<String>> subjectAlternativeNames;
  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  late final pulumi.Output<String> type;

  /// Creates a new [RegionSslCertificate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSslCertificate]. {@macro pulumi_compute_alpha_region_ssl_certificate_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSslCertificate(
    String name, {
    RegionSslCertificateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:compute/alpha:RegionSslCertificate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    certificate = registerOutput<String>('certificate');
    creationTimestamp = registerOutput<String>('creationTimestamp');
    description = registerOutput<String>('description');
    expireTime = registerOutput<String>('expireTime');
    kind = registerOutput<String>('kind');
    managed = registerOutput<SslCertificateManagedSslCertificateResponse>('managed', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SslCertificateManagedSslCertificateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    privateKey = registerOutput<String>('privateKey');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    requestId = registerOutput<String?>('requestId');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithId = registerOutput<String>('selfLinkWithId');
    selfManaged = registerOutput<SslCertificateSelfManagedSslCertificateResponse>('selfManaged', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SslCertificateSelfManagedSslCertificateResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subjectAlternativeNames = registerOutput<List<String>>('subjectAlternativeNames');
    type = registerOutput<String>('type');
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_certificate_managed_ssl_certificate.dart';
import 'ssl_certificate_self_managed_ssl_certificate.dart';
import 'ssl_certificate_type.dart';

/// {@template pulumi_compute_alpha_ssl_certificate_args_doc}
/// The set of arguments for SslCertificate.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_ssl_certificate_args_doc}
class SslCertificateArgs {
  /// A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  final pulumi.Input<String>? certificate;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Configuration and status of a managed SSL certificate.
  final pulumi.Input<SslCertificateManagedSslCertificate>? managed;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  final pulumi.Input<String>? privateKey;
  final pulumi.Input<String>? project;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// Configuration and status of a self-managed SSL certificate.
  final pulumi.Input<SslCertificateSelfManagedSslCertificate>? selfManaged;
  /// (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  final pulumi.Input<SslCertificateType>? type;

  /// Creates a new [SslCertificateArgs].
  /// [certificate] A value read into memory from a certificate file. The certificate file must be in PEM format. The certificate chain must be no greater than 5 certs long. The chain must include at least one intermediate cert.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [managed] Configuration and status of a managed SSL certificate.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [privateKey] A value read into memory from a write-only private key file. The private key file must be in PEM format. For security, only insert requests include this field.
  /// [project] Optional.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [selfManaged] Configuration and status of a self-managed SSL certificate.
  /// [type] (Optional) Specifies the type of SSL certificate, either "SELF_MANAGED" or "MANAGED". If not specified, the certificate is self-managed and the fields certificate and private_key are used.
  SslCertificateArgs({
    this.certificate,
    this.description,
    this.managed,
    this.name,
    this.privateKey,
    this.project,
    this.requestId,
    this.selfManaged,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate,
      'description': ?description,
      'managed': ?pulumi.Input.mapOptionalInputValue<SslCertificateManagedSslCertificate, Map<String, dynamic>>(managed, (value) => value.toMap()),
      'name': ?name,
      'privateKey': ?privateKey,
      'project': ?project,
      'requestId': ?requestId,
      'selfManaged': ?pulumi.Input.mapOptionalInputValue<SslCertificateSelfManagedSslCertificate, Map<String, dynamic>>(selfManaged, (value) => value.toMap()),
      'type': ?pulumi.Input.mapOptionalInputValue<SslCertificateType, String>(type, (value) => value.value),
    };
  }

  factory SslCertificateArgs.fromMap(Map<String, dynamic> map) {
    return SslCertificateArgs(
      certificate: map['certificate'] == null ? null : (map['certificate']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      managed: map['managed'] == null ? null : (SslCertificateManagedSslCertificate.fromMap((map['managed']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      privateKey: map['privateKey'] == null ? null : (map['privateKey']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      requestId: map['requestId'] == null ? null : (map['requestId']! as String).input(),
      selfManaged: map['selfManaged'] == null ? null : (SslCertificateSelfManagedSslCertificate.fromMap((map['selfManaged']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (SslCertificateType.fromValue(map['type']! as String)).input(),
    );
  }
}


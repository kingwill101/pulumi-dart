import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssl_cert_args.dart';

/// Creates an SSL certificate and returns it along with the private key and server certificate authority. The new certificate will not be usable until the instance is restarted.
/// Auto-naming is currently not supported for this resource.
class SslCertSqladminV1 extends pulumi.CustomResource {
  /// PEM representation.
  late final pulumi.Output<String> cert;
  /// Serial number, as extracted from the certificate.
  late final pulumi.Output<String> certSerialNumber;
  /// User supplied name. Constrained to [a-zA-Z.-_ ]+.
  late final pulumi.Output<String> commonName;
  /// The time when the certificate was created in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`
  late final pulumi.Output<String> createTime;
  /// The time when the certificate expires in [RFC 3339](https://tools.ietf.org/html/rfc3339) format, for example `2012-11-15T16:19:00.094Z`.
  late final pulumi.Output<String> expirationTime;
  late final pulumi.Output<String> instance;
  /// This is always `sql#sslCert`.
  late final pulumi.Output<String> kind;
  late final pulumi.Output<String> project;
  /// The URI of this resource.
  late final pulumi.Output<String> selfLink;
  /// Sha1 Fingerprint.
  late final pulumi.Output<String> sha1Fingerprint;

  /// Creates a new [SslCertSqladminV1].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SslCertSqladminV1]. {@macro pulumi_sqladmin_v1_ssl_cert_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SslCertSqladminV1(
    String name, {
    SslCertArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:sqladmin/v1:SslCert',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '0.32.0', replaceOnChanges: ['instance', 'project']).merge(options),
        ) {
    cert = registerOutput<String>('cert');
    certSerialNumber = registerOutput<String>('certSerialNumber');
    commonName = registerOutput<String>('commonName');
    createTime = registerOutput<String>('createTime');
    expirationTime = registerOutput<String>('expirationTime');
    instance = registerOutput<String>('instance');
    kind = registerOutput<String>('kind');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sha1Fingerprint = registerOutput<String>('sha1Fingerprint');
  }

  /// Creates a typed reference to an existing [SslCertSqladminV1] resource.
  SslCertSqladminV1.reference(String urn)
    : super(
        'google-native:sqladmin/v1:SslCert',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    cert = registerOutput<String>('cert');
    certSerialNumber = registerOutput<String>('certSerialNumber');
    commonName = registerOutput<String>('commonName');
    createTime = registerOutput<String>('createTime');
    expirationTime = registerOutput<String>('expirationTime');
    instance = registerOutput<String>('instance');
    kind = registerOutput<String>('kind');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sha1Fingerprint = registerOutput<String>('sha1Fingerprint');
  }
}

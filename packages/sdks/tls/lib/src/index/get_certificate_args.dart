// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// The content of the certificate in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Cannot be used with `url`.
  final pulumi.Input<String>? content;
  /// The URL of the website to get the certificates from. Cannot be used with `content`.
  final pulumi.Input<String>? url;
  /// Whether to verify the certificate chain while parsing it or not (default: `true`). Cannot be used with `content`.
  final pulumi.Input<bool>? verifyChain;

  /// Creates a new [GetCertificateArgs].
  /// [content] The content of the certificate in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. Cannot be used with `url`.
  /// [url] The URL of the website to get the certificates from. Cannot be used with `content`.
  /// [verifyChain] Whether to verify the certificate chain while parsing it or not (default: `true`). Cannot be used with `content`.
  GetCertificateArgs({
    pulumi.Output<String>? content,
    pulumi.Output<String>? url,
    pulumi.Output<bool>? verifyChain,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      url = pulumi.Input.asOptionalInput<String>(url),
      verifyChain = pulumi.Input.asOptionalInput<bool>(verifyChain);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'url': ?url,
      'verifyChain': ?verifyChain,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      content: map['content'] == null ? null : pulumi.Output.create<String>(map['content'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
      verifyChain: map['verifyChain'] == null ? null : pulumi.Output.create<bool>(map['verifyChain'] as bool),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MangedSslCertificateManaged {
  /// Domains for which a managed SSL certificate will be valid.  Currently,
  /// there can be up to 100 domains in this list.
  final pulumi.Input<List<String>> domains;

  /// Creates a new [MangedSslCertificateManaged].
  /// [domains] Domains for which a managed SSL certificate will be valid.  Currently,
  MangedSslCertificateManaged({
    required this.domains,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domains': domains,
    };
  }

  factory MangedSslCertificateManaged.fromMap(Map<String, dynamic> map) {
    return MangedSslCertificateManaged(
      domains: pulumi.Input.fromValue((map['domains'] as List).cast<String>()),
    );
  }
}


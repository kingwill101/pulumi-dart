// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_certificate_get_certificate_args_doc}
/// Arguments for getCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_get_certificate_get_certificate_args_doc}
class GetCertificateArgs {
  /// The name of certificate.
  final pulumi.Input<String> name;

  /// Creates a new [GetCertificateArgs].
  /// [name] The name of certificate.
  GetCertificateArgs({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory GetCertificateArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateArgs(
      name: (map['name'] as String).input(),
    );
  }
}


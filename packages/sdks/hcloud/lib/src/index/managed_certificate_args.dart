// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_managed_certificate_managed_certificate_args_doc}
/// The set of arguments for ManagedCertificate.
/// {@endtemplate}
/// {@macro pulumi_index_managed_certificate_managed_certificate_args_doc}
class ManagedCertificateArgs {
  /// Domain names for which a certificate
  /// should be obtained.
  final pulumi.Input<List<String>> domainNames;
  /// User-defined labels (key-value pairs) the
  /// certificate should be created with.
  final pulumi.Input<Map<String, String>>? labels;
  /// Name of the Certificate.
  final pulumi.Input<String>? name;

  /// Creates a new [ManagedCertificateArgs].
  /// [domainNames] Domain names for which a certificate
  /// [labels] User-defined labels (key-value pairs) the
  /// [name] Name of the Certificate.
  const ManagedCertificateArgs({
    required this.domainNames,
    this.labels,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainNames': domainNames,
      'labels': ?labels,
      'name': ?name,
    };
  }

  factory ManagedCertificateArgs.fromMap(Map<String, dynamic> map) {
    return ManagedCertificateArgs(
      domainNames: pulumi.Input.fromValue((map['domainNames'] as List).cast<String>()),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


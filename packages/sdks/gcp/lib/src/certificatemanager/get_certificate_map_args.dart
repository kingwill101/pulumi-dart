// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_certificatemanager_get_certificate_map_get_certificate_map_args_doc}
/// Arguments for getCertificateMap.
/// {@endtemplate}
/// {@macro pulumi_certificatemanager_get_certificate_map_get_certificate_map_args_doc}
class GetCertificateMapArgs {
  /// The name of the certificate map.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetCertificateMapArgs].
  /// [name] The name of the certificate map.
  /// [project] The ID of the project in which the resource belongs. If it
  GetCertificateMapArgs({
    required this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
    };
  }

  factory GetCertificateMapArgs.fromMap(Map<String, dynamic> map) {
    return GetCertificateMapArgs(
      name: (map['name'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
    );
  }
}


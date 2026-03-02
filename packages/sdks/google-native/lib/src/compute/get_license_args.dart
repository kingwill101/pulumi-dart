// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_alpha_get_license_args_doc}
/// Arguments for getLicense.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_get_license_args_doc}
class GetLicenseArgs {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLicenseArgs].
  /// [license] Required.
  /// [project] Optional.
  GetLicenseArgs({
    required this.license,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': license,
      'project': ?project,
    };
  }

  factory GetLicenseArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseArgs(
      license: (map['license'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


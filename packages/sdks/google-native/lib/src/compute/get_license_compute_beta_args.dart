// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_beta_get_license_compute_beta_args_doc}
/// Arguments for getLicense.
/// {@endtemplate}
/// {@macro pulumi_compute_beta_get_license_compute_beta_args_doc}
class GetLicenseComputeBetaArgs {
  final pulumi.Input<String> license;
  final pulumi.Input<String>? project;

  /// Creates a new [GetLicenseComputeBetaArgs].
  /// [license] Required.
  /// [project] Optional.
  GetLicenseComputeBetaArgs({
    required this.license,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'license': license,
      'project': ?project,
    };
  }

  factory GetLicenseComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return GetLicenseComputeBetaArgs(
      license: pulumi.Input.fromValue(map['license'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


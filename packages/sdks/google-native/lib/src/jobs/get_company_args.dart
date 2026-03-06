// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_jobs_v3_get_company_args_doc}
/// Arguments for getCompany.
/// {@endtemplate}
/// {@macro pulumi_jobs_v3_get_company_args_doc}
class GetCompanyArgs {
  final pulumi.Input<String> companyId;
  final pulumi.Input<String>? project;

  /// Creates a new [GetCompanyArgs].
  /// [companyId] Required.
  /// [project] Optional.
  const GetCompanyArgs({
    required this.companyId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyId': companyId,
      'project': ?project,
    };
  }

  factory GetCompanyArgs.fromMap(Map<String, dynamic> map) {
    return GetCompanyArgs(
      companyId: pulumi.Input.fromValue(map['companyId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


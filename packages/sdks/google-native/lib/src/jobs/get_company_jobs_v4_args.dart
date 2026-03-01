// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_jobs_v4_get_company_jobs_v4_args_doc}
/// Arguments for getCompany.
/// {@endtemplate}
/// {@macro pulumi_jobs_v4_get_company_jobs_v4_args_doc}
class GetCompanyJobsV4Args {
  final pulumi.Input<String> companyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> tenantId;

  /// Creates a new [GetCompanyJobsV4Args].
  /// [companyId] Required.
  /// [project] Optional.
  /// [tenantId] Required.
  GetCompanyJobsV4Args({
    required pulumi.Output<String> companyId,
    pulumi.Output<String>? project,
    required pulumi.Output<String> tenantId,
  }) :
      companyId = pulumi.Input.asInput<String>(companyId),
      project = pulumi.Input.asOptionalInput<String>(project),
      tenantId = pulumi.Input.asInput<String>(tenantId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'companyId': companyId,
      'project': ?project,
      'tenantId': tenantId,
    };
  }

  factory GetCompanyJobsV4Args.fromMap(Map<String, dynamic> map) {
    return GetCompanyJobsV4Args(
      companyId: pulumi.Output.create<String>(map['companyId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      tenantId: pulumi.Output.create<String>(map['tenantId'] as String),
    );
  }
}


import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_company_args.dart';
import 'get_company_jobs_v4_args.dart';
import 'get_company_jobs_v4_result.dart';
import 'get_company_result.dart';
import 'get_job_args.dart';
import 'get_job_jobs_v4_args.dart';
import 'get_job_jobs_v4_result.dart';
import 'get_job_result.dart';
import 'get_tenant_args.dart';
import 'get_tenant_result.dart';

/// Retrieves specified company.
/// [args] Arguments passed to this invoke. {@macro pulumi_jobs_v3_get_company_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompanyResult> getCompany(
  GetCompanyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v3:getCompany',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompanyResult.fromMap(result);
}

/// Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_jobs_v3_get_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobResult> getJob(
  GetJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v3:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobResult.fromMap(result);
}

/// Retrieves specified company.
/// [args] Arguments passed to this invoke. {@macro pulumi_jobs_v4_get_company_jobs_v4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompanyJobsV4Result> getCompanyJobsV4(
  GetCompanyJobsV4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getCompany',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompanyJobsV4Result.fromMap(result);
}

/// Retrieves the specified job, whose status is OPEN or recently EXPIRED within the last 90 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_jobs_v4_get_job_jobs_v4_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobJobsV4Result> getJobJobsV4(
  GetJobJobsV4Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobJobsV4Result.fromMap(result);
}

/// Retrieves specified tenant.
/// [args] Arguments passed to this invoke. {@macro pulumi_jobs_v4_get_tenant_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTenantResult> getTenant(
  GetTenantArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:jobs/v4:getTenant',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTenantResult.fromMap(result);
}

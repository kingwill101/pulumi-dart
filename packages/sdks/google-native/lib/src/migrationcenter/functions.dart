import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_args.dart';
import 'get_group_migrationcenter_v1alpha1_args.dart';
import 'get_group_migrationcenter_v1alpha1_result.dart';
import 'get_group_result.dart';
import 'get_import_data_file_args.dart';
import 'get_import_data_file_migrationcenter_v1alpha1_args.dart';
import 'get_import_data_file_migrationcenter_v1alpha1_result.dart';
import 'get_import_data_file_result.dart';
import 'get_import_job_args.dart';
import 'get_import_job_migrationcenter_v1alpha1_args.dart';
import 'get_import_job_migrationcenter_v1alpha1_result.dart';
import 'get_import_job_result.dart';
import 'get_preference_set_args.dart';
import 'get_preference_set_migrationcenter_v1alpha1_args.dart';
import 'get_preference_set_migrationcenter_v1alpha1_result.dart';
import 'get_preference_set_result.dart';
import 'get_report_args.dart';
import 'get_report_config_args.dart';
import 'get_report_config_migrationcenter_v1alpha1_args.dart';
import 'get_report_config_migrationcenter_v1alpha1_result.dart';
import 'get_report_config_result.dart';
import 'get_report_migrationcenter_v1alpha1_args.dart';
import 'get_report_migrationcenter_v1alpha1_result.dart';
import 'get_report_result.dart';
import 'get_source_args.dart';
import 'get_source_migrationcenter_v1alpha1_args.dart';
import 'get_source_migrationcenter_v1alpha1_result.dart';
import 'get_source_result.dart';

/// Gets the details of a group.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Gets an import data file.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_import_data_file_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportDataFileResult> getImportDataFile(
  GetImportDataFileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportDataFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportDataFileResult.fromMap(result);
}

pulumi.Output<GetImportDataFileResult> getImportDataFileOutput(
  GetImportDataFileArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportDataFile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportDataFileResult.fromMap);
}

/// Gets the details of an import job.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_import_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportJobResult> getImportJob(
  GetImportJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobResult.fromMap(result);
}

pulumi.Output<GetImportJobResult> getImportJobOutput(
  GetImportJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getImportJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportJobResult.fromMap);
}

/// Gets the details of a preference set.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_preference_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPreferenceSetResult> getPreferenceSet(
  GetPreferenceSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getPreferenceSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPreferenceSetResult.fromMap(result);
}

pulumi.Output<GetPreferenceSetResult> getPreferenceSetOutput(
  GetPreferenceSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getPreferenceSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPreferenceSetResult.fromMap);
}

/// Gets details of a single Report.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportResult> getReport(
  GetReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportResult.fromMap(result);
}

pulumi.Output<GetReportResult> getReportOutput(
  GetReportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportResult.fromMap);
}

/// Gets details of a single ReportConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_report_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportConfigResult> getReportConfig(
  GetReportConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReportConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportConfigResult.fromMap(result);
}

pulumi.Output<GetReportConfigResult> getReportConfigOutput(
  GetReportConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getReportConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportConfigResult.fromMap);
}

/// Gets the details of a source.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1_get_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceResult> getSource(
  GetSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceResult.fromMap(result);
}

pulumi.Output<GetSourceResult> getSourceOutput(
  GetSourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1:getSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceResult.fromMap);
}

/// Gets the details of a group.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_group_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupMigrationcenterV1alpha1Result> getGroupMigrationcenterV1alpha1(
  GetGroupMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetGroupMigrationcenterV1alpha1Result> getGroupMigrationcenterV1alpha1Output(
  GetGroupMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupMigrationcenterV1alpha1Result.fromMap);
}

/// Gets an import data file.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_import_data_file_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportDataFileMigrationcenterV1alpha1Result> getImportDataFileMigrationcenterV1alpha1(
  GetImportDataFileMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportDataFile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportDataFileMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetImportDataFileMigrationcenterV1alpha1Result> getImportDataFileMigrationcenterV1alpha1Output(
  GetImportDataFileMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportDataFile',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportDataFileMigrationcenterV1alpha1Result.fromMap);
}

/// Gets the details of an import job.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_import_job_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportJobMigrationcenterV1alpha1Result> getImportJobMigrationcenterV1alpha1(
  GetImportJobMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetImportJobMigrationcenterV1alpha1Result> getImportJobMigrationcenterV1alpha1Output(
  GetImportJobMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getImportJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportJobMigrationcenterV1alpha1Result.fromMap);
}

/// Gets the details of a preference set.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_preference_set_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPreferenceSetMigrationcenterV1alpha1Result> getPreferenceSetMigrationcenterV1alpha1(
  GetPreferenceSetMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getPreferenceSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPreferenceSetMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetPreferenceSetMigrationcenterV1alpha1Result> getPreferenceSetMigrationcenterV1alpha1Output(
  GetPreferenceSetMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getPreferenceSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPreferenceSetMigrationcenterV1alpha1Result.fromMap);
}

/// Gets details of a single Report.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_report_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportMigrationcenterV1alpha1Result> getReportMigrationcenterV1alpha1(
  GetReportMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetReportMigrationcenterV1alpha1Result> getReportMigrationcenterV1alpha1Output(
  GetReportMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportMigrationcenterV1alpha1Result.fromMap);
}

/// Gets details of a single ReportConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_report_config_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportConfigMigrationcenterV1alpha1Result> getReportConfigMigrationcenterV1alpha1(
  GetReportConfigMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReportConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportConfigMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetReportConfigMigrationcenterV1alpha1Result> getReportConfigMigrationcenterV1alpha1Output(
  GetReportConfigMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getReportConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReportConfigMigrationcenterV1alpha1Result.fromMap);
}

/// Gets the details of a source.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrationcenter_v1alpha1_get_source_migrationcenter_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceMigrationcenterV1alpha1Result> getSourceMigrationcenterV1alpha1(
  GetSourceMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceMigrationcenterV1alpha1Result.fromMap(result);
}

pulumi.Output<GetSourceMigrationcenterV1alpha1Result> getSourceMigrationcenterV1alpha1Output(
  GetSourceMigrationcenterV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:migrationcenter/v1alpha1:getSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceMigrationcenterV1alpha1Result.fromMap);
}

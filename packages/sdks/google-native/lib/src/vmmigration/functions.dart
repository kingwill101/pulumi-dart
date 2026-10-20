import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_clone_job_args.dart';
import 'get_clone_job_result.dart';
import 'get_clone_job_vmmigration_v1alpha1_args.dart';
import 'get_clone_job_vmmigration_v1alpha1_result.dart';
import 'get_cutover_job_args.dart';
import 'get_cutover_job_result.dart';
import 'get_cutover_job_vmmigration_v1alpha1_args.dart';
import 'get_cutover_job_vmmigration_v1alpha1_result.dart';
import 'get_datacenter_connector_args.dart';
import 'get_datacenter_connector_result.dart';
import 'get_datacenter_connector_vmmigration_v1alpha1_args.dart';
import 'get_datacenter_connector_vmmigration_v1alpha1_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_group_vmmigration_v1alpha1_args.dart';
import 'get_group_vmmigration_v1alpha1_result.dart';
import 'get_migrating_vm_args.dart';
import 'get_migrating_vm_result.dart';
import 'get_migrating_vm_vmmigration_v1alpha1_args.dart';
import 'get_migrating_vm_vmmigration_v1alpha1_result.dart';
import 'get_source_args.dart';
import 'get_source_result.dart';
import 'get_source_vmmigration_v1alpha1_args.dart';
import 'get_source_vmmigration_v1alpha1_result.dart';
import 'get_target_project_args.dart';
import 'get_target_project_result.dart';
import 'get_target_project_vmmigration_v1alpha1_args.dart';
import 'get_target_project_vmmigration_v1alpha1_result.dart';
import 'get_utilization_report_args.dart';
import 'get_utilization_report_result.dart';
import 'get_utilization_report_vmmigration_v1alpha1_args.dart';
import 'get_utilization_report_vmmigration_v1alpha1_result.dart';

/// Gets details of a single CloneJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_clone_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloneJobResult> getCloneJob(
  GetCloneJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCloneJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloneJobResult.fromMap(result);
}

pulumi.Output<GetCloneJobResult> getCloneJobOutput(
  GetCloneJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCloneJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloneJobResult.fromMap);
}

/// Gets details of a single CutoverJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_cutover_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCutoverJobResult> getCutoverJob(
  GetCutoverJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCutoverJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCutoverJobResult.fromMap(result);
}

pulumi.Output<GetCutoverJobResult> getCutoverJobOutput(
  GetCutoverJobArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getCutoverJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCutoverJobResult.fromMap);
}

/// Gets details of a single DatacenterConnector.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_datacenter_connector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatacenterConnectorResult> getDatacenterConnector(
  GetDatacenterConnectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getDatacenterConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatacenterConnectorResult.fromMap(result);
}

pulumi.Output<GetDatacenterConnectorResult> getDatacenterConnectorOutput(
  GetDatacenterConnectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getDatacenterConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatacenterConnectorResult.fromMap);
}

/// Gets details of a single Group.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getGroup',
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
    'google-native:vmmigration/v1:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Gets details of a single MigratingVm.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_migrating_vm_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigratingVmResult> getMigratingVm(
  GetMigratingVmArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getMigratingVm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigratingVmResult.fromMap(result);
}

pulumi.Output<GetMigratingVmResult> getMigratingVmOutput(
  GetMigratingVmArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getMigratingVm',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigratingVmResult.fromMap);
}

/// Gets details of a single Source.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceResult> getSource(
  GetSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getSource',
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
    'google-native:vmmigration/v1:getSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceResult.fromMap);
}

/// Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_target_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetProjectResult> getTargetProject(
  GetTargetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getTargetProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetProjectResult.fromMap(result);
}

pulumi.Output<GetTargetProjectResult> getTargetProjectOutput(
  GetTargetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getTargetProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetProjectResult.fromMap);
}

/// Gets a single Utilization Report.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1_get_utilization_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUtilizationReportResult> getUtilizationReport(
  GetUtilizationReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getUtilizationReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUtilizationReportResult.fromMap(result);
}

pulumi.Output<GetUtilizationReportResult> getUtilizationReportOutput(
  GetUtilizationReportArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1:getUtilizationReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUtilizationReportResult.fromMap);
}

/// Gets details of a single CloneJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_clone_job_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCloneJobVmmigrationV1alpha1Result> getCloneJobVmmigrationV1alpha1(
  GetCloneJobVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCloneJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCloneJobVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetCloneJobVmmigrationV1alpha1Result> getCloneJobVmmigrationV1alpha1Output(
  GetCloneJobVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCloneJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCloneJobVmmigrationV1alpha1Result.fromMap);
}

/// Gets details of a single CutoverJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_cutover_job_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCutoverJobVmmigrationV1alpha1Result> getCutoverJobVmmigrationV1alpha1(
  GetCutoverJobVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCutoverJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCutoverJobVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetCutoverJobVmmigrationV1alpha1Result> getCutoverJobVmmigrationV1alpha1Output(
  GetCutoverJobVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getCutoverJob',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCutoverJobVmmigrationV1alpha1Result.fromMap);
}

/// Gets details of a single DatacenterConnector.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_datacenter_connector_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatacenterConnectorVmmigrationV1alpha1Result> getDatacenterConnectorVmmigrationV1alpha1(
  GetDatacenterConnectorVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getDatacenterConnector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatacenterConnectorVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetDatacenterConnectorVmmigrationV1alpha1Result> getDatacenterConnectorVmmigrationV1alpha1Output(
  GetDatacenterConnectorVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getDatacenterConnector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetDatacenterConnectorVmmigrationV1alpha1Result.fromMap);
}

/// Gets details of a single Group.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_group_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupVmmigrationV1alpha1Result> getGroupVmmigrationV1alpha1(
  GetGroupVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetGroupVmmigrationV1alpha1Result> getGroupVmmigrationV1alpha1Output(
  GetGroupVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupVmmigrationV1alpha1Result.fromMap);
}

/// Gets details of a single MigratingVm.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_migrating_vm_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigratingVmVmmigrationV1alpha1Result> getMigratingVmVmmigrationV1alpha1(
  GetMigratingVmVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getMigratingVm',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigratingVmVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetMigratingVmVmmigrationV1alpha1Result> getMigratingVmVmmigrationV1alpha1Output(
  GetMigratingVmVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getMigratingVm',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigratingVmVmmigrationV1alpha1Result.fromMap);
}

/// Gets details of a single Source.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_source_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceVmmigrationV1alpha1Result> getSourceVmmigrationV1alpha1(
  GetSourceVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetSourceVmmigrationV1alpha1Result> getSourceVmmigrationV1alpha1Output(
  GetSourceVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getSource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSourceVmmigrationV1alpha1Result.fromMap);
}

/// Gets details of a single TargetProject. NOTE: TargetProject is a global resource; hence the only supported value for location is `global`.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_target_project_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetProjectVmmigrationV1alpha1Result> getTargetProjectVmmigrationV1alpha1(
  GetTargetProjectVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getTargetProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetProjectVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetTargetProjectVmmigrationV1alpha1Result> getTargetProjectVmmigrationV1alpha1Output(
  GetTargetProjectVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getTargetProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTargetProjectVmmigrationV1alpha1Result.fromMap);
}

/// Gets a single Utilization Report.
/// [args] Arguments passed to this invoke. {@macro pulumi_vmmigration_v1alpha1_get_utilization_report_vmmigration_v1alpha1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetUtilizationReportVmmigrationV1alpha1Result> getUtilizationReportVmmigrationV1alpha1(
  GetUtilizationReportVmmigrationV1alpha1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getUtilizationReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetUtilizationReportVmmigrationV1alpha1Result.fromMap(result);
}

pulumi.Output<GetUtilizationReportVmmigrationV1alpha1Result> getUtilizationReportVmmigrationV1alpha1Output(
  GetUtilizationReportVmmigrationV1alpha1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:vmmigration/v1alpha1:getUtilizationReport',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetUtilizationReportVmmigrationV1alpha1Result.fromMap);
}

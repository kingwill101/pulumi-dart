import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_replay_args.dart';
import 'get_folder_replay_policysimulator_v1alpha_args.dart';
import 'get_folder_replay_policysimulator_v1alpha_result.dart';
import 'get_folder_replay_policysimulator_v1beta1_args.dart';
import 'get_folder_replay_policysimulator_v1beta1_result.dart';
import 'get_folder_replay_policysimulator_v1beta_args.dart';
import 'get_folder_replay_policysimulator_v1beta_result.dart';
import 'get_folder_replay_result.dart';
import 'get_organization_replay_args.dart';
import 'get_organization_replay_policysimulator_v1alpha_args.dart';
import 'get_organization_replay_policysimulator_v1alpha_result.dart';
import 'get_organization_replay_policysimulator_v1beta1_args.dart';
import 'get_organization_replay_policysimulator_v1beta1_result.dart';
import 'get_organization_replay_policysimulator_v1beta_args.dart';
import 'get_organization_replay_policysimulator_v1beta_result.dart';
import 'get_organization_replay_result.dart';
import 'get_replay_args.dart';
import 'get_replay_policysimulator_v1alpha_args.dart';
import 'get_replay_policysimulator_v1alpha_result.dart';
import 'get_replay_policysimulator_v1beta1_args.dart';
import 'get_replay_policysimulator_v1beta1_result.dart';
import 'get_replay_policysimulator_v1beta_args.dart';
import 'get_replay_policysimulator_v1beta_result.dart';
import 'get_replay_result.dart';

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1_get_folder_replay_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderReplayResult> getFolderReplay(
  GetFolderReplayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayResult.fromMap(result);
}

pulumi.Output<GetFolderReplayResult> getFolderReplayOutput(
  GetFolderReplayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getFolderReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderReplayResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1_get_organization_replay_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationReplayResult> getOrganizationReplay(
  GetOrganizationReplayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getOrganizationReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayResult.fromMap(result);
}

pulumi.Output<GetOrganizationReplayResult> getOrganizationReplayOutput(
  GetOrganizationReplayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getOrganizationReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationReplayResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1_get_replay_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplayResult> getReplay(
  GetReplayArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayResult.fromMap(result);
}

pulumi.Output<GetReplayResult> getReplayOutput(
  GetReplayArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1:getReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReplayResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1alpha_get_folder_replay_policysimulator_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderReplayPolicysimulatorV1alphaResult> getFolderReplayPolicysimulatorV1alpha(
  GetFolderReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayPolicysimulatorV1alphaResult.fromMap(result);
}

pulumi.Output<GetFolderReplayPolicysimulatorV1alphaResult> getFolderReplayPolicysimulatorV1alphaOutput(
  GetFolderReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getFolderReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderReplayPolicysimulatorV1alphaResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1alpha_get_organization_replay_policysimulator_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationReplayPolicysimulatorV1alphaResult> getOrganizationReplayPolicysimulatorV1alpha(
  GetOrganizationReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getOrganizationReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayPolicysimulatorV1alphaResult.fromMap(result);
}

pulumi.Output<GetOrganizationReplayPolicysimulatorV1alphaResult> getOrganizationReplayPolicysimulatorV1alphaOutput(
  GetOrganizationReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getOrganizationReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationReplayPolicysimulatorV1alphaResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1alpha_get_replay_policysimulator_v1alpha_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplayPolicysimulatorV1alphaResult> getReplayPolicysimulatorV1alpha(
  GetReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayPolicysimulatorV1alphaResult.fromMap(result);
}

pulumi.Output<GetReplayPolicysimulatorV1alphaResult> getReplayPolicysimulatorV1alphaOutput(
  GetReplayPolicysimulatorV1alphaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1alpha:getReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReplayPolicysimulatorV1alphaResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1beta1_get_folder_replay_policysimulator_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderReplayPolicysimulatorV1beta1Result> getFolderReplayPolicysimulatorV1beta1(
  GetFolderReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayPolicysimulatorV1beta1Result.fromMap(result);
}

pulumi.Output<GetFolderReplayPolicysimulatorV1beta1Result> getFolderReplayPolicysimulatorV1beta1Output(
  GetFolderReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getFolderReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderReplayPolicysimulatorV1beta1Result.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1beta1_get_organization_replay_policysimulator_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationReplayPolicysimulatorV1beta1Result> getOrganizationReplayPolicysimulatorV1beta1(
  GetOrganizationReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getOrganizationReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayPolicysimulatorV1beta1Result.fromMap(result);
}

pulumi.Output<GetOrganizationReplayPolicysimulatorV1beta1Result> getOrganizationReplayPolicysimulatorV1beta1Output(
  GetOrganizationReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getOrganizationReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationReplayPolicysimulatorV1beta1Result.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1beta1_get_replay_policysimulator_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplayPolicysimulatorV1beta1Result> getReplayPolicysimulatorV1beta1(
  GetReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayPolicysimulatorV1beta1Result.fromMap(result);
}

pulumi.Output<GetReplayPolicysimulatorV1beta1Result> getReplayPolicysimulatorV1beta1Output(
  GetReplayPolicysimulatorV1beta1Args args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta1:getReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReplayPolicysimulatorV1beta1Result.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1beta_get_folder_replay_policysimulator_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderReplayPolicysimulatorV1betaResult> getFolderReplayPolicysimulatorV1beta(
  GetFolderReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getFolderReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderReplayPolicysimulatorV1betaResult.fromMap(result);
}

pulumi.Output<GetFolderReplayPolicysimulatorV1betaResult> getFolderReplayPolicysimulatorV1betaOutput(
  GetFolderReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getFolderReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetFolderReplayPolicysimulatorV1betaResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1beta_get_organization_replay_policysimulator_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationReplayPolicysimulatorV1betaResult> getOrganizationReplayPolicysimulatorV1beta(
  GetOrganizationReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getOrganizationReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationReplayPolicysimulatorV1betaResult.fromMap(result);
}

pulumi.Output<GetOrganizationReplayPolicysimulatorV1betaResult> getOrganizationReplayPolicysimulatorV1betaOutput(
  GetOrganizationReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getOrganizationReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetOrganizationReplayPolicysimulatorV1betaResult.fromMap);
}

/// Gets the specified Replay. Each `Replay` is available for at least 7 days.
/// [args] Arguments passed to this invoke. {@macro pulumi_policysimulator_v1beta_get_replay_policysimulator_v1beta_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReplayPolicysimulatorV1betaResult> getReplayPolicysimulatorV1beta(
  GetReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getReplay',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReplayPolicysimulatorV1betaResult.fromMap(result);
}

pulumi.Output<GetReplayPolicysimulatorV1betaResult> getReplayPolicysimulatorV1betaOutput(
  GetReplayPolicysimulatorV1betaArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'google-native:policysimulator/v1beta:getReplay',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetReplayPolicysimulatorV1betaResult.fromMap);
}

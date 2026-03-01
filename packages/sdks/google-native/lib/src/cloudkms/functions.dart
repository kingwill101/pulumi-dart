import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_crypto_key_args.dart';
import 'get_crypto_key_result.dart';
import 'get_crypto_key_version_args.dart';
import 'get_crypto_key_version_result.dart';
import 'get_ekm_config_iam_policy_args.dart';
import 'get_ekm_config_iam_policy_result.dart';
import 'get_ekm_connection_args.dart';
import 'get_ekm_connection_iam_policy_args.dart';
import 'get_ekm_connection_iam_policy_result.dart';
import 'get_ekm_connection_result.dart';
import 'get_import_job_args.dart';
import 'get_import_job_result.dart';
import 'get_key_ring_args.dart';
import 'get_key_ring_crypto_key_iam_policy_args.dart';
import 'get_key_ring_crypto_key_iam_policy_result.dart';
import 'get_key_ring_iam_policy_args.dart';
import 'get_key_ring_iam_policy_result.dart';
import 'get_key_ring_import_job_iam_policy_args.dart';
import 'get_key_ring_import_job_iam_policy_result.dart';
import 'get_key_ring_result.dart';

/// Returns metadata for a given CryptoKey, as well as its primary CryptoKeyVersion.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_crypto_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCryptoKeyResult> getCryptoKey(
  GetCryptoKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getCryptoKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyResult.fromMap(result);
}

/// Returns metadata for a given CryptoKeyVersion.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_crypto_key_version_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCryptoKeyVersionResult> getCryptoKeyVersion(
  GetCryptoKeyVersionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getCryptoKeyVersion',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCryptoKeyVersionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_ekm_config_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEkmConfigIamPolicyResult> getEkmConfigIamPolicy(
  GetEkmConfigIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getEkmConfigIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEkmConfigIamPolicyResult.fromMap(result);
}

/// Returns metadata for a given EkmConnection.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_ekm_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEkmConnectionResult> getEkmConnection(
  GetEkmConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getEkmConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_ekm_connection_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEkmConnectionIamPolicyResult> getEkmConnectionIamPolicy(
  GetEkmConnectionIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getEkmConnectionIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEkmConnectionIamPolicyResult.fromMap(result);
}

/// Returns metadata for a given ImportJob.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_import_job_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportJobResult> getImportJob(
  GetImportJobArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getImportJob',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportJobResult.fromMap(result);
}

/// Returns metadata for a given KeyRing.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_key_ring_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyRingResult> getKeyRing(
  GetKeyRingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRing',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_key_ring_crypto_key_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyRingCryptoKeyIamPolicyResult> getKeyRingCryptoKeyIamPolicy(
  GetKeyRingCryptoKeyIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRingCryptoKeyIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingCryptoKeyIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_key_ring_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyRingIamPolicyResult> getKeyRingIamPolicy(
  GetKeyRingIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRingIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingIamPolicyResult.fromMap(result);
}

/// Gets the access control policy for a resource. Returns an empty policy if the resource exists and does not have a policy set.
/// [args] Arguments passed to this invoke. {@macro pulumi_cloudkms_v1_get_key_ring_import_job_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeyRingImportJobIamPolicyResult> getKeyRingImportJobIamPolicy(
  GetKeyRingImportJobIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:cloudkms/v1:getKeyRingImportJobIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyRingImportJobIamPolicyResult.fromMap(result);
}

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_args.dart';
import 'get_certificate_issuance_config_args.dart';
import 'get_certificate_issuance_config_result.dart';
import 'get_certificate_map_args.dart';
import 'get_certificate_map_entry_args.dart';
import 'get_certificate_map_entry_result.dart';
import 'get_certificate_map_result.dart';
import 'get_certificate_result.dart';
import 'get_dns_authorization_args.dart';
import 'get_dns_authorization_result.dart';
import 'get_trust_config_args.dart';
import 'get_trust_config_result.dart';

/// Gets details of a single Certificate.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_v1_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Gets details of a single CertificateIssuanceConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_v1_get_certificate_issuance_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateIssuanceConfigResult> getCertificateIssuanceConfig(
  GetCertificateIssuanceConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateIssuanceConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateIssuanceConfigResult.fromMap(result);
}

/// Gets details of a single CertificateMap.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_v1_get_certificate_map_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateMapResult> getCertificateMap(
  GetCertificateMapArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateMap',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapResult.fromMap(result);
}

/// Gets details of a single CertificateMapEntry.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_v1_get_certificate_map_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateMapEntryResult> getCertificateMapEntry(
  GetCertificateMapEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getCertificateMapEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateMapEntryResult.fromMap(result);
}

/// Gets details of a single DnsAuthorization.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_v1_get_dns_authorization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDnsAuthorizationResult> getDnsAuthorization(
  GetDnsAuthorizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getDnsAuthorization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDnsAuthorizationResult.fromMap(result);
}

/// Gets details of a single TrustConfig.
/// [args] Arguments passed to this invoke. {@macro pulumi_certificatemanager_v1_get_trust_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTrustConfigResult> getTrustConfig(
  GetTrustConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:certificatemanager/v1:getTrustConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTrustConfigResult.fromMap(result);
}

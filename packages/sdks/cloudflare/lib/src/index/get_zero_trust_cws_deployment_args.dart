// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_zero_trust_cws_deployment_filter.dart';

/// {@template pulumi_index_get_zero_trust_cws_deployment_get_zero_trust_cws_deployment_args_doc}
/// Arguments for getZeroTrustCwsDeployment.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_cws_deployment_get_zero_trust_cws_deployment_args_doc}
class GetZeroTrustCwsDeploymentArgs {
  /// Cloudflare account ID (32-character hexadecimal string)
  final pulumi.Input<String> accountId;
  /// ID of the deployment to retrieve
  final pulumi.Input<String?>? deploymentId;
  final pulumi.Input<GetZeroTrustCwsDeploymentFilter?>? filter;

  /// Creates a new [GetZeroTrustCwsDeploymentArgs].
  /// [accountId] Cloudflare account ID (32-character hexadecimal string)
  /// [deploymentId] ID of the deployment to retrieve
  /// [filter] Optional.
  const GetZeroTrustCwsDeploymentArgs({
    required this.accountId,
    this.deploymentId,
    this.filter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'deploymentId': ?deploymentId,
      'filter': ?pulumi.Input.mapOptionalInputValue<GetZeroTrustCwsDeploymentFilter, Map<String, dynamic>>(filter, (value) => value.toMap()),
    };
  }

  factory GetZeroTrustCwsDeploymentArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustCwsDeploymentArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      deploymentId: (() { final guardedValue = map['deploymentId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GetZeroTrustCwsDeploymentFilter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

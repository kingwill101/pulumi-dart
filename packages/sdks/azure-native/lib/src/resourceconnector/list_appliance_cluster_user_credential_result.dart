// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_credential_kubeconfig_response.dart';
import 'hybrid_connection_config_response.dart';

/// Result data returned by listApplianceClusterUserCredential.
class ListApplianceClusterUserCredentialResult {
  /// Contains the REP (rendezvous endpoint) and “Listener” access token from notification service (NS).
  final HybridConnectionConfigResponse hybridConnectionConfig;
  /// The list of appliance kubeconfigs.
  final List<ApplianceCredentialKubeconfigResponse> kubeconfigs;

  /// Creates a new [ListApplianceClusterUserCredentialResult].
  /// [hybridConnectionConfig] Contains the REP (rendezvous endpoint) and “Listener” access token from notification service (NS).
  /// [kubeconfigs] The list of appliance kubeconfigs.
  const ListApplianceClusterUserCredentialResult({
    required this.hybridConnectionConfig,
    required this.kubeconfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hybridConnectionConfig': hybridConnectionConfig.toMap(),
      'kubeconfigs': pulumi.Input.encodeList<ApplianceCredentialKubeconfigResponse, Map<String, dynamic>>(kubeconfigs, (value) => value.toMap()),
    };
  }

  factory ListApplianceClusterUserCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListApplianceClusterUserCredentialResult(
      hybridConnectionConfig: HybridConnectionConfigResponse.fromMap((map['hybridConnectionConfig']! as Map).cast<String, dynamic>()),
      kubeconfigs: pulumi.Input.decodeList<ApplianceCredentialKubeconfigResponse>(map['kubeconfigs']!, (value) => ApplianceCredentialKubeconfigResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


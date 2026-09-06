// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_credential_kubeconfig_response.dart';
import 'sshkey_response.dart';

/// Result data returned by listApplianceClusterCustomerUserCredential.
class ListApplianceClusterCustomerUserCredentialResult {
  /// The list of appliance kubeconfigs.
  final List<ApplianceCredentialKubeconfigResponse>? kubeconfigs;
  /// Map of Customer User Public and Private SSH Keys
  final Map<String, SSHKeyResponse>? sshKeys;

  /// Creates a new [ListApplianceClusterCustomerUserCredentialResult].
  /// [kubeconfigs] The list of appliance kubeconfigs.
  /// [sshKeys] Map of Customer User Public and Private SSH Keys
  const ListApplianceClusterCustomerUserCredentialResult({
    this.kubeconfigs,
    this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': ?(() { final guardedValue = kubeconfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplianceCredentialKubeconfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sshKeys': ?(() { final guardedValue = sshKeys; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<SSHKeyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListApplianceClusterCustomerUserCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListApplianceClusterCustomerUserCredentialResult(
      kubeconfigs: (() { final guardedValue = map['kubeconfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplianceCredentialKubeconfigResponse>(guardedValue, (value) => ApplianceCredentialKubeconfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sshKeys: (() { final guardedValue = map['sshKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<SSHKeyResponse>(guardedValue, (value) => SSHKeyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

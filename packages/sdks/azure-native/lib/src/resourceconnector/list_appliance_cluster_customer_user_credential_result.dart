// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_credential_kubeconfig_response.dart';
import 'sshkey_response.dart';

/// Result data returned by listApplianceClusterCustomerUserCredential.
class ListApplianceClusterCustomerUserCredentialResult {
  /// The list of appliance kubeconfigs.
  final List<ApplianceCredentialKubeconfigResponse> kubeconfigs;
  /// Map of Customer User Public and Private SSH Keys
  final Map<String, SSHKeyResponse> sshKeys;

  /// Creates a new [ListApplianceClusterCustomerUserCredentialResult].
  /// [kubeconfigs] The list of appliance kubeconfigs.
  /// [sshKeys] Map of Customer User Public and Private SSH Keys
  ListApplianceClusterCustomerUserCredentialResult({
    required this.kubeconfigs,
    required this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubeconfigs': pulumi.Input.encodeList<ApplianceCredentialKubeconfigResponse, Map<String, dynamic>>(kubeconfigs, (value) => value.toMap()),
      'sshKeys': pulumi.Input.encodeMapValues<SSHKeyResponse, Map<String, dynamic>>(sshKeys, (value) => value.toMap()),
    };
  }

  factory ListApplianceClusterCustomerUserCredentialResult.fromMap(Map<String, dynamic> map) {
    return ListApplianceClusterCustomerUserCredentialResult(
      kubeconfigs: pulumi.Input.decodeList<ApplianceCredentialKubeconfigResponse>(map['kubeconfigs'], (value) => ApplianceCredentialKubeconfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      sshKeys: pulumi.Input.decodeMapValues<SSHKeyResponse>(map['sshKeys'], (value) => SSHKeyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gkecluster_response.dart';
import 'response_policy_network_response.dart';

/// Result data returned by getResponsePolicy.
class GetResponsePolicyResult {
  /// User-provided description for this Response Policy.
  final String? description;
  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final List<ResponsePolicyGKEClusterResponse>? gkeClusters;
  final String? kind;
  /// User labels.
  final Map<String, String>? labels;
  /// List of network names specifying networks to which this policy is applied.
  final List<ResponsePolicyNetworkResponse>? networks;
  /// User assigned name for this Response Policy.
  final String? responsePolicyName;

  /// Creates a new [GetResponsePolicyResult].
  /// [description] User-provided description for this Response Policy.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters to which this response policy is applied.
  /// [kind] Optional.
  /// [labels] User labels.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [responsePolicyName] User assigned name for this Response Policy.
  const GetResponsePolicyResult({
    this.description,
    this.gkeClusters,
    this.kind,
    this.labels,
    this.networks,
    this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'gkeClusters': ?(() { final guardedValue = gkeClusters; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResponsePolicyGKEClusterResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kind': ?kind,
      'labels': ?labels,
      'networks': ?(() { final guardedValue = networks; if (guardedValue == null) return null; return pulumi.Input.encodeList<ResponsePolicyNetworkResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'responsePolicyName': ?responsePolicyName,
    };
  }

  factory GetResponsePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      gkeClusters: (() { final guardedValue = map['gkeClusters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyGKEClusterResponse>(guardedValue, (value) => ResponsePolicyGKEClusterResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      networks: (() { final guardedValue = map['networks']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ResponsePolicyNetworkResponse>(guardedValue, (value) => ResponsePolicyNetworkResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      responsePolicyName: (() { final guardedValue = map['responsePolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

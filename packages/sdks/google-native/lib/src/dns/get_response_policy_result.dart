// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gkecluster_response.dart';
import 'response_policy_network_response.dart';

/// Result data returned by getResponsePolicy.
class GetResponsePolicyResult {
  /// User-provided description for this Response Policy.
  final String description;
  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final List<ResponsePolicyGKEClusterResponse> gkeClusters;
  final String kind;
  /// User labels.
  final Map<String, String> labels;
  /// List of network names specifying networks to which this policy is applied.
  final List<ResponsePolicyNetworkResponse> networks;
  /// User assigned name for this Response Policy.
  final String responsePolicyName;

  /// Creates a new [GetResponsePolicyResult].
  /// [description] User-provided description for this Response Policy.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters to which this response policy is applied.
  /// [kind] Required.
  /// [labels] User labels.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [responsePolicyName] User assigned name for this Response Policy.
  GetResponsePolicyResult({
    required this.description,
    required this.gkeClusters,
    required this.kind,
    required this.labels,
    required this.networks,
    required this.responsePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'gkeClusters': pulumi.Input.encodeList<ResponsePolicyGKEClusterResponse, Map<String, dynamic>>(gkeClusters, (value) => value.toMap()),
      'kind': kind,
      'labels': labels,
      'networks': pulumi.Input.encodeList<ResponsePolicyNetworkResponse, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'responsePolicyName': responsePolicyName,
    };
  }

  factory GetResponsePolicyResult.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyResult(
      description: map['description'] as String,
      gkeClusters: pulumi.Input.decodeList<ResponsePolicyGKEClusterResponse>(map['gkeClusters']!, (value) => ResponsePolicyGKEClusterResponse.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      networks: pulumi.Input.decodeList<ResponsePolicyNetworkResponse>(map['networks']!, (value) => ResponsePolicyNetworkResponse.fromMap((value as Map).cast<String, dynamic>())),
      responsePolicyName: map['responsePolicyName'] as String,
    );
  }
}


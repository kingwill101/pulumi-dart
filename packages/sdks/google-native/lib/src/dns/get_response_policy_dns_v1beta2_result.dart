// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'response_policy_gkecluster_response_dns_v1beta2.dart';
import 'response_policy_network_response_dns_v1beta2.dart';

/// Result data returned by getResponsePolicy.
class GetResponsePolicyDnsV1beta2Result {
  /// User-provided description for this Response Policy.
  final String description;
  /// The list of Google Kubernetes Engine clusters to which this response policy is applied.
  final List<ResponsePolicyGKEClusterResponseDnsV1beta2> gkeClusters;
  final String kind;
  /// User labels.
  final Map<String, String> labels;
  /// List of network names specifying networks to which this policy is applied.
  final List<ResponsePolicyNetworkResponseDnsV1beta2> networks;
  /// User assigned name for this Response Policy.
  final String responsePolicyName;

  /// Creates a new [GetResponsePolicyDnsV1beta2Result].
  /// [description] User-provided description for this Response Policy.
  /// [gkeClusters] The list of Google Kubernetes Engine clusters to which this response policy is applied.
  /// [kind] Required.
  /// [labels] User labels.
  /// [networks] List of network names specifying networks to which this policy is applied.
  /// [responsePolicyName] User assigned name for this Response Policy.
  GetResponsePolicyDnsV1beta2Result({
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
      'gkeClusters': pulumi.Input.encodeList<ResponsePolicyGKEClusterResponseDnsV1beta2, Map<String, dynamic>>(gkeClusters, (value) => value.toMap()),
      'kind': kind,
      'labels': labels,
      'networks': pulumi.Input.encodeList<ResponsePolicyNetworkResponseDnsV1beta2, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'responsePolicyName': responsePolicyName,
    };
  }

  factory GetResponsePolicyDnsV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetResponsePolicyDnsV1beta2Result(
      description: map['description'] as String,
      gkeClusters: pulumi.Input.decodeList<ResponsePolicyGKEClusterResponseDnsV1beta2>(map['gkeClusters']!, (value) => ResponsePolicyGKEClusterResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      networks: pulumi.Input.decodeList<ResponsePolicyNetworkResponseDnsV1beta2>(map['networks']!, (value) => ResponsePolicyNetworkResponseDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
      responsePolicyName: map['responsePolicyName'] as String,
    );
  }
}


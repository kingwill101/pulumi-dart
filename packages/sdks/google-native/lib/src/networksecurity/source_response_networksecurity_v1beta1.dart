// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of traffic source attributes.
class SourceResponseNetworksecurityV1beta1 {
  /// Optional. List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g., "1.2.3.0/24") are supported. Authorization based on source IP alone should be avoided. The IP addresses of any load balancers or proxies should be considered untrusted.
  final pulumi.Input<List<String>> ipBlocks;
  /// Optional. List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, "namespace/*") or a suffix match (example, "*/service-account") or a presence match "*". Authorization based on the principal name without certificate validation (configured by ServerTlsPolicy resource) is considered insecure.
  final pulumi.Input<List<String>> principals;

  /// Creates a new [SourceResponseNetworksecurityV1beta1].
  /// [ipBlocks] Optional. List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g., "1.2.3.0/24") are supported. Authorization based on source IP alone should be avoided. The IP addresses of any load balancers or proxies should be considered untrusted.
  /// [principals] Optional. List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, "namespace/*") or a suffix match (example, "*/service-account") or a presence match "*". Authorization based on the principal name without certificate validation (configured by ServerTlsPolicy resource) is considered insecure.
  const SourceResponseNetworksecurityV1beta1({
    required this.ipBlocks,
    required this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': ipBlocks,
      'principals': principals,
    };
  }

  factory SourceResponseNetworksecurityV1beta1.fromMap(Map<String, dynamic> map) {
    return SourceResponseNetworksecurityV1beta1(
      ipBlocks: pulumi.Input.fromValue((map['ipBlocks'] as List).cast<String>()),
      principals: pulumi.Input.fromValue((map['principals'] as List).cast<String>()),
    );
  }
}

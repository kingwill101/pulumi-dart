// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpokeLinkedProducerVpcNetwork {
  /// IP ranges encompassing the subnets to be excluded from peering.
  final pulumi.Input<List<String>>? excludeExportRanges;
  /// IP ranges allowed to be included from peering.
  final pulumi.Input<List<String>>? includeExportRanges;
  /// The URI of the Service Consumer VPC that the Producer VPC is peered with.
  final pulumi.Input<String> network;
  /// The name of the VPC peering between the Service Consumer VPC and the Producer VPC (defined in the Tenant project) which is added to the NCC hub. This peering must be in ACTIVE state.
  final pulumi.Input<String> peering;
  /// (Output)
  /// The URI of the Producer VPC.
  final pulumi.Input<String>? producerNetwork;

  /// Creates a new [SpokeLinkedProducerVpcNetwork].
  /// [excludeExportRanges] IP ranges encompassing the subnets to be excluded from peering.
  /// [includeExportRanges] IP ranges allowed to be included from peering.
  /// [network] The URI of the Service Consumer VPC that the Producer VPC is peered with.
  /// [peering] The name of the VPC peering between the Service Consumer VPC and the Producer VPC (defined in the Tenant project) which is added to the NCC hub. This peering must be in ACTIVE state.
  /// [producerNetwork] (Output)
  SpokeLinkedProducerVpcNetwork({
    this.excludeExportRanges,
    this.includeExportRanges,
    required this.network,
    required this.peering,
    this.producerNetwork,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeExportRanges': ?excludeExportRanges,
      'includeExportRanges': ?includeExportRanges,
      'network': network,
      'peering': peering,
      'producerNetwork': ?producerNetwork,
    };
  }

  factory SpokeLinkedProducerVpcNetwork.fromMap(Map<String, dynamic> map) {
    return SpokeLinkedProducerVpcNetwork(
      excludeExportRanges: map['excludeExportRanges'] == null ? null : ((map['excludeExportRanges'] as List).cast<String>()).input(),
      includeExportRanges: map['includeExportRanges'] == null ? null : ((map['includeExportRanges'] as List).cast<String>()).input(),
      network: (map['network'] as String).input(),
      peering: (map['peering'] as String).input(),
      producerNetwork: map['producerNetwork'] == null ? null : (map['producerNetwork'] as String).input(),
    );
  }
}


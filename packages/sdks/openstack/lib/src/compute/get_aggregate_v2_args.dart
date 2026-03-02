// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_get_aggregate_v2_get_aggregate_v2_args_doc}
/// Arguments for getAggregateV2.
/// {@endtemplate}
/// {@macro pulumi_compute_get_aggregate_v2_get_aggregate_v2_args_doc}
class GetAggregateV2Args {
  /// List of Hypervisors contained in the Host Aggregate
  final pulumi.Input<List<String>>? hosts;
  /// Metadata of the Host Aggregate
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the host aggregate.
  final pulumi.Input<String> name;
  /// The region in which to obtain the V2 Compute client.
  /// If omitted, the `region` argument of the provider is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAggregateV2Args].
  /// [hosts] List of Hypervisors contained in the Host Aggregate
  /// [metadata] Metadata of the Host Aggregate
  /// [name] The name of the host aggregate.
  /// [region] The region in which to obtain the V2 Compute client.
  GetAggregateV2Args({
    this.hosts,
    this.metadata,
    required this.name,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts,
      'metadata': ?metadata,
      'name': name,
      'region': ?region,
    };
  }

  factory GetAggregateV2Args.fromMap(Map<String, dynamic> map) {
    return GetAggregateV2Args(
      hosts: map['hosts'] == null ? null : ((map['hosts'] as List).cast<String>()).input(),
      metadata: map['metadata'] == null ? null : ((map['metadata'] as Map).cast<String, String>()).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}


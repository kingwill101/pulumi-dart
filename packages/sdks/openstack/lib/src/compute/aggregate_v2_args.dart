// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_compute_aggregate_v2_aggregate_v2_args_doc}
/// The set of arguments for AggregateV2.
/// {@endtemplate}
/// {@macro pulumi_compute_aggregate_v2_aggregate_v2_args_doc}
class AggregateV2Args {
  /// The list of hosts contained in the Host Aggregate. The hosts must be added
  /// to Openstack and visible in the web interface, or the provider will fail to add them to the host
  /// aggregate.
  final pulumi.Input<List<String>>? hosts;
  /// The metadata of the Host Aggregate. Can be useful to indicate scheduler hints.
  final pulumi.Input<Map<String, String>>? metadata;
  /// The name of the Host Aggregate
  final pulumi.Input<String>? name;
  /// The region in which to create the Host Aggregate. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Host Aggregate.
  final pulumi.Input<String>? region;
  /// The name of the Availability Zone to use. If ommited, it will take the default
  /// availability zone.
  final pulumi.Input<String>? zone;

  /// Creates a new [AggregateV2Args].
  /// [hosts] The list of hosts contained in the Host Aggregate. The hosts must be added
  /// [metadata] The metadata of the Host Aggregate. Can be useful to indicate scheduler hints.
  /// [name] The name of the Host Aggregate
  /// [region] The region in which to create the Host Aggregate. If
  /// [zone] The name of the Availability Zone to use. If ommited, it will take the default
  AggregateV2Args({
    pulumi.Output<List<String>>? hosts,
    pulumi.Output<Map<String, String>>? metadata,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? zone,
  }) :
      hosts = pulumi.Input.asOptionalInput<List<String>>(hosts),
      metadata = pulumi.Input.asOptionalInput<Map<String, String>>(metadata),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      zone = pulumi.Input.asOptionalInput<String>(zone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hosts': ?hosts,
      'metadata': ?metadata,
      'name': ?name,
      'region': ?region,
      'zone': ?zone,
    };
  }

  factory AggregateV2Args.fromMap(Map<String, dynamic> map) {
    return AggregateV2Args(
      hosts: map['hosts'] == null ? null : pulumi.Output.create<List<String>>((map['hosts'] as List).cast<String>()),
      metadata: map['metadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['metadata'] as Map).cast<String, String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      zone: map['zone'] == null ? null : pulumi.Output.create<String>(map['zone'] as String),
    );
  }
}


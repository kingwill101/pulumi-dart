// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_policy_ipfx_emission.dart';
import 'collector_policy_ipfx_ingestion.dart';

/// {@template pulumi_networkfunction_collector_policy_collector_policy_args_doc}
/// The set of arguments for CollectorPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_collector_policy_collector_policy_args_doc}
class CollectorPolicyArgs {
  /// An `ipfx_emission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<CollectorPolicyIpfxEmission> ipfxEmission;
  /// An `ipfx_ingestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<CollectorPolicyIpfxIngestion> ipfxIngestion;
  /// Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Network Function Collector Policy.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<String> trafficCollectorId;

  /// Creates a new [CollectorPolicyArgs].
  /// [ipfxEmission] An `ipfx_emission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  /// [ipfxIngestion] An `ipfx_ingestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  /// [location] Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created.
  /// [name] Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Function Collector Policy.
  /// [trafficCollectorId] Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  CollectorPolicyArgs({
    required pulumi.Output<CollectorPolicyIpfxEmission> ipfxEmission,
    required pulumi.Output<CollectorPolicyIpfxIngestion> ipfxIngestion,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> trafficCollectorId,
  }) :
      ipfxEmission = pulumi.Input.asInput<CollectorPolicyIpfxEmission>(ipfxEmission),
      ipfxIngestion = pulumi.Input.asInput<CollectorPolicyIpfxIngestion>(ipfxIngestion),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficCollectorId = pulumi.Input.asInput<String>(trafficCollectorId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipfxEmission': pulumi.Input.mapInputValue<CollectorPolicyIpfxEmission, Map<String, dynamic>>(ipfxEmission, (value) => value.toMap()),
      'ipfxIngestion': pulumi.Input.mapInputValue<CollectorPolicyIpfxIngestion, Map<String, dynamic>>(ipfxIngestion, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'trafficCollectorId': trafficCollectorId,
    };
  }

  factory CollectorPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CollectorPolicyArgs(
      ipfxEmission: pulumi.Output.create<CollectorPolicyIpfxEmission>(CollectorPolicyIpfxEmission.fromMap((map['ipfxEmission'] as Map).cast<String, dynamic>())),
      ipfxIngestion: pulumi.Output.create<CollectorPolicyIpfxIngestion>(CollectorPolicyIpfxIngestion.fromMap((map['ipfxIngestion'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficCollectorId: pulumi.Output.create<String>(map['trafficCollectorId'] as String),
    );
  }
}


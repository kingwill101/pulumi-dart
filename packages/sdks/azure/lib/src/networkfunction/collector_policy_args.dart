// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_policy_ipfx_emission.dart';
import 'collector_policy_ipfx_ingestion.dart';

/// {@template pulumi_networkfunction_collector_policy_collector_policy_args_doc}
/// The set of arguments for CollectorPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_collector_policy_collector_policy_args_doc}
class CollectorPolicyArgs {
  /// An `ipfxEmission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<CollectorPolicyIpfxEmission> ipfxEmission;
  /// An `ipfxIngestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
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
  /// [ipfxEmission] An `ipfxEmission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  /// [ipfxIngestion] An `ipfxIngestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  /// [location] Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created.
  /// [name] Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Function Collector Policy.
  /// [trafficCollectorId] Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  const CollectorPolicyArgs({
    required this.ipfxEmission,
    required this.ipfxIngestion,
    this.location,
    this.name,
    this.tags,
    required this.trafficCollectorId,
  });

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
      ipfxEmission: pulumi.Input.fromValue(CollectorPolicyIpfxEmission.fromMap((map['ipfxEmission']! as Map).cast<String, dynamic>())),
      ipfxIngestion: pulumi.Input.fromValue(CollectorPolicyIpfxIngestion.fromMap((map['ipfxIngestion']! as Map).cast<String, dynamic>())),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      trafficCollectorId: pulumi.Input.fromValue(map['trafficCollectorId'] as String),
    );
  }
}

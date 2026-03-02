// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'collector_policy_ipfx_emission.dart';
import 'collector_policy_ipfx_ingestion.dart';

/// Input properties used for looking up and filtering CollectorPolicy resources.
class CollectorPolicyState {
  /// An `ipfx_emission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<CollectorPolicyIpfxEmission>? ipfxEmission;
  /// An `ipfx_ingestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<CollectorPolicyIpfxIngestion>? ipfxIngestion;
  /// Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Network Function Collector Policy.
  final pulumi.Input<Map<String, String>>? tags;
  /// Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  final pulumi.Input<String>? trafficCollectorId;

  /// Creates a new [CollectorPolicyState].
  /// [ipfxEmission] An `ipfx_emission` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  /// [ipfxIngestion] An `ipfx_ingestion` block as defined below. Changing this forces a new Network Function Collector Policy to be created.
  /// [location] Specifies the Azure Region where the Network Function Collector Policy should exist. Changing this forces a new Network Function Collector Policy to be created.
  /// [name] Specifies the name which should be used for this Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  /// [tags] A mapping of tags which should be assigned to the Network Function Collector Policy.
  /// [trafficCollectorId] Specifies the Azure Traffic Collector ID of the Network Function Collector Policy. Changing this forces a new Network Function Collector Policy to be created.
  CollectorPolicyState({
    this.ipfxEmission,
    this.ipfxIngestion,
    this.location,
    this.name,
    this.tags,
    this.trafficCollectorId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipfxEmission': ?pulumi.Input.mapOptionalInputValue<CollectorPolicyIpfxEmission, Map<String, dynamic>>(ipfxEmission, (value) => value.toMap()),
      'ipfxIngestion': ?pulumi.Input.mapOptionalInputValue<CollectorPolicyIpfxIngestion, Map<String, dynamic>>(ipfxIngestion, (value) => value.toMap()),
      'location': ?location,
      'name': ?name,
      'tags': ?tags,
      'trafficCollectorId': ?trafficCollectorId,
    };
  }

  factory CollectorPolicyState.fromMap(Map<String, dynamic> map) {
    return CollectorPolicyState(
      ipfxEmission: map['ipfxEmission'] == null ? null : (CollectorPolicyIpfxEmission.fromMap((map['ipfxEmission'] as Map).cast<String, dynamic>())).input(),
      ipfxIngestion: map['ipfxIngestion'] == null ? null : (CollectorPolicyIpfxIngestion.fromMap((map['ipfxIngestion'] as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      trafficCollectorId: map['trafficCollectorId'] == null ? null : (map['trafficCollectorId'] as String).input(),
    );
  }
}


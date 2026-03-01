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
    pulumi.Output<CollectorPolicyIpfxEmission>? ipfxEmission,
    pulumi.Output<CollectorPolicyIpfxIngestion>? ipfxIngestion,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? trafficCollectorId,
  }) :
      ipfxEmission = pulumi.Input.asOptionalInput<CollectorPolicyIpfxEmission>(ipfxEmission),
      ipfxIngestion = pulumi.Input.asOptionalInput<CollectorPolicyIpfxIngestion>(ipfxIngestion),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      trafficCollectorId = pulumi.Input.asOptionalInput<String>(trafficCollectorId);

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
      ipfxEmission: map['ipfxEmission'] == null ? null : pulumi.Output.create<CollectorPolicyIpfxEmission>(CollectorPolicyIpfxEmission.fromMap((map['ipfxEmission'] as Map).cast<String, dynamic>())),
      ipfxIngestion: map['ipfxIngestion'] == null ? null : pulumi.Output.create<CollectorPolicyIpfxIngestion>(CollectorPolicyIpfxIngestion.fromMap((map['ipfxIngestion'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      trafficCollectorId: map['trafficCollectorId'] == null ? null : pulumi.Output.create<String>(map['trafficCollectorId'] as String),
    );
  }
}


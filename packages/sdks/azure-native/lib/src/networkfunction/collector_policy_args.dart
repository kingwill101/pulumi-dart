// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'emission_policies_properties_format.dart';
import 'ingestion_policy_properties_format.dart';

/// {@template pulumi_networkfunction_collector_policy_args_doc}
/// The set of arguments for CollectorPolicy.
/// {@endtemplate}
/// {@macro pulumi_networkfunction_collector_policy_args_doc}
class CollectorPolicyArgs {
  /// Azure Traffic Collector name
  final pulumi.Input<String> azureTrafficCollectorName;
  /// Collector Policy Name
  final pulumi.Input<String>? collectorPolicyName;
  /// Emission policies.
  final pulumi.Input<List<EmissionPoliciesPropertiesFormat>>? emissionPolicies;
  /// Ingestion policies.
  final pulumi.Input<IngestionPolicyPropertiesFormat>? ingestionPolicy;
  /// Resource location.
  final pulumi.Input<String>? location;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [CollectorPolicyArgs].
  /// [azureTrafficCollectorName] Azure Traffic Collector name
  /// [collectorPolicyName] Collector Policy Name
  /// [emissionPolicies] Emission policies.
  /// [ingestionPolicy] Ingestion policies.
  /// [location] Resource location.
  /// [resourceGroupName] The name of the resource group.
  /// [tags] Resource tags.
  const CollectorPolicyArgs({
    required this.azureTrafficCollectorName,
    this.collectorPolicyName,
    this.emissionPolicies,
    this.ingestionPolicy,
    this.location,
    required this.resourceGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureTrafficCollectorName': azureTrafficCollectorName,
      'collectorPolicyName': ?collectorPolicyName,
      'emissionPolicies': ?pulumi.Input.mapOptionalInputValue<List<EmissionPoliciesPropertiesFormat>, List<Map<String, dynamic>>>(emissionPolicies, (value) => pulumi.Input.encodeList<EmissionPoliciesPropertiesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ingestionPolicy': ?pulumi.Input.mapOptionalInputValue<IngestionPolicyPropertiesFormat, Map<String, dynamic>>(ingestionPolicy, (value) => value.toMap()),
      'location': ?location,
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory CollectorPolicyArgs.fromMap(Map<String, dynamic> map) {
    return CollectorPolicyArgs(
      azureTrafficCollectorName: pulumi.Input.fromValue(map['azureTrafficCollectorName'] as String),
      collectorPolicyName: (() { final guardedValue = map['collectorPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emissionPolicies: (() { final guardedValue = map['emissionPolicies']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EmissionPoliciesPropertiesFormat>(guardedValue, (value) => EmissionPoliciesPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))); })(),
      ingestionPolicy: (() { final guardedValue = map['ingestionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(IngestionPolicyPropertiesFormat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


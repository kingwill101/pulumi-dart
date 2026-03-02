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
  CollectorPolicyArgs({
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
      azureTrafficCollectorName: (map['azureTrafficCollectorName'] as String).input(),
      collectorPolicyName: map['collectorPolicyName'] == null ? null : (map['collectorPolicyName']! as String).input(),
      emissionPolicies: map['emissionPolicies'] == null ? null : (pulumi.Input.decodeList<EmissionPoliciesPropertiesFormat>(map['emissionPolicies']!, (value) => EmissionPoliciesPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))).input(),
      ingestionPolicy: map['ingestionPolicy'] == null ? null : (IngestionPolicyPropertiesFormat.fromMap((map['ingestionPolicy']! as Map).cast<String, dynamic>())).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}


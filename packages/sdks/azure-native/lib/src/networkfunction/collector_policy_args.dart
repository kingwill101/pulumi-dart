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
    required pulumi.Output<String> azureTrafficCollectorName,
    pulumi.Output<String>? collectorPolicyName,
    pulumi.Output<List<EmissionPoliciesPropertiesFormat>>? emissionPolicies,
    pulumi.Output<IngestionPolicyPropertiesFormat>? ingestionPolicy,
    pulumi.Output<String>? location,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      azureTrafficCollectorName = pulumi.Input.asInput<String>(azureTrafficCollectorName),
      collectorPolicyName = pulumi.Input.asOptionalInput<String>(collectorPolicyName),
      emissionPolicies = pulumi.Input.asOptionalInput<List<EmissionPoliciesPropertiesFormat>>(emissionPolicies),
      ingestionPolicy = pulumi.Input.asOptionalInput<IngestionPolicyPropertiesFormat>(ingestionPolicy),
      location = pulumi.Input.asOptionalInput<String>(location),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      azureTrafficCollectorName: pulumi.Output.create<String>(map['azureTrafficCollectorName'] as String),
      collectorPolicyName: map['collectorPolicyName'] == null ? null : pulumi.Output.create<String>(map['collectorPolicyName'] as String),
      emissionPolicies: map['emissionPolicies'] == null ? null : pulumi.Output.create<List<EmissionPoliciesPropertiesFormat>>(pulumi.Input.decodeList<EmissionPoliciesPropertiesFormat>(map['emissionPolicies'], (value) => EmissionPoliciesPropertiesFormat.fromMap((value as Map).cast<String, dynamic>()))),
      ingestionPolicy: map['ingestionPolicy'] == null ? null : pulumi.Output.create<IngestionPolicyPropertiesFormat>(IngestionPolicyPropertiesFormat.fromMap((map['ingestionPolicy'] as Map).cast<String, dynamic>())),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


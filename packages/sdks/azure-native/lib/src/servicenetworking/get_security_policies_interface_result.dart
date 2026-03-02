// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'waf_policy_response.dart';

/// Result data returned by getSecurityPoliciesInterface.
class GetSecurityPoliciesInterfaceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// The name of the resource
  final String name;
  /// Type of the Traffic Controller Security Policy
  final String policyType;
  /// Provisioning State of Traffic Controller SecurityPolicy Resource
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  final WafPolicyResponse? wafPolicy;

  /// Creates a new [GetSecurityPoliciesInterfaceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [policyType] Type of the Traffic Controller Security Policy
  /// [provisioningState] Provisioning State of Traffic Controller SecurityPolicy Resource
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [wafPolicy] Web Application Firewall Policy of the Traffic Controller Security Policy. Single Security Policy can have only one policy type set.
  GetSecurityPoliciesInterfaceResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    required this.policyType,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    this.wafPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'policyType': policyType,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'wafPolicy': ?wafPolicy == null ? null : wafPolicy!.toMap(),
    };
  }

  factory GetSecurityPoliciesInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesInterfaceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      policyType: map['policyType'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      wafPolicy: map['wafPolicy'] == null ? null : WafPolicyResponse.fromMap((map['wafPolicy']! as Map).cast<String, dynamic>()),
    );
  }
}


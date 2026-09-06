// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';
import 'waf_policy_response.dart';

/// Result data returned by getSecurityPoliciesInterface.
class GetSecurityPoliciesInterfaceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String? name;
  /// Type of the Traffic Controller Security Policy
  final String? policyType;
  /// Provisioning State of Traffic Controller SecurityPolicy Resource
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
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
  const GetSecurityPoliciesInterfaceResult({
    this.azureApiVersion,
    this.id,
    this.location,
    this.name,
    this.policyType,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.wafPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'policyType': ?policyType,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'wafPolicy': ?wafPolicy?.toMap(),
    };
  }

  factory GetSecurityPoliciesInterfaceResult.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesInterfaceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policyType: (() { final guardedValue = map['policyType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      wafPolicy: (() { final guardedValue = map['wafPolicy']; if (guardedValue == null) return null; return WafPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule_collection_response.dart';

/// Result data returned by getFirewallPolicyRuleCollectionGroup.
class GetFirewallPolicyRuleCollectionGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  final int? priority;
  /// The provisioning state of the firewall policy rule collection group resource.
  final String provisioningState;
  /// Group of Firewall Policy rule collections.
  final List<FirewallPolicyFilterRuleCollectionResponse>? ruleCollections;
  /// A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  final String size;
  /// Rule Group type.
  final String type;

  /// Creates a new [GetFirewallPolicyRuleCollectionGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Collection Group resource.
  /// [provisioningState] The provisioning state of the firewall policy rule collection group resource.
  /// [ruleCollections] Group of Firewall Policy rule collections.
  /// [size] A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  /// [type] Rule Group type.
  GetFirewallPolicyRuleCollectionGroupResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    this.priority,
    required this.provisioningState,
    this.ruleCollections,
    required this.size,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': etag,
      'id': ?id,
      'name': ?name,
      'priority': ?priority,
      'provisioningState': provisioningState,
      'ruleCollections': ?ruleCollections == null ? null : pulumi.Input.encodeList<FirewallPolicyFilterRuleCollectionResponse, Map<String, dynamic>>(ruleCollections!, (value) => value.toMap()),
      'size': size,
      'type': type,
    };
  }

  factory GetFirewallPolicyRuleCollectionGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleCollectionGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      priority: map['priority'] == null ? null : map['priority'] as int,
      provisioningState: map['provisioningState'] as String,
      ruleCollections: map['ruleCollections'] == null ? null : pulumi.Input.decodeList<FirewallPolicyFilterRuleCollectionResponse>(map['ruleCollections'], (value) => FirewallPolicyFilterRuleCollectionResponse.fromMap((value as Map).cast<String, dynamic>())),
      size: map['size'] as String,
      type: map['type'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_filter_rule_response.dart';

/// Result data returned by getFirewallPolicyRuleGroup.
class GetFirewallPolicyRuleGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;

  /// Resource ID.
  final String? id;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;

  /// Priority of the Firewall Policy Rule Group resource.
  final int? priority;

  /// The provisioning state of the firewall policy rule group resource.
  final String provisioningState;

  /// Group of Firewall Policy rules.
  final List<FirewallPolicyFilterRuleResponse>? rules;

  /// Rule Group type.
  final String type;

  /// Creates a new [GetFirewallPolicyRuleGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [priority] Priority of the Firewall Policy Rule Group resource.
  /// [provisioningState] The provisioning state of the firewall policy rule group resource.
  /// [rules] Group of Firewall Policy rules.
  /// [type] Rule Group type.
  GetFirewallPolicyRuleGroupResult({
    required this.azureApiVersion,
    required this.etag,
    this.id,
    this.name,
    this.priority,
    required this.provisioningState,
    this.rules,
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
      'rules': ?(() {
        final guardedValue = rules;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<
          FirewallPolicyFilterRuleResponse,
          Map<String, dynamic>
        >(guardedValue, (value) => value.toMap());
      })(),
      'type': type,
    };
  }

  factory GetFirewallPolicyRuleGroupResult.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyRuleGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] as String,
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      provisioningState: map['provisioningState'] as String,
      rules: (() {
        final guardedValue = map['rules'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<FirewallPolicyFilterRuleResponse>(
          guardedValue,
          (value) => FirewallPolicyFilterRuleResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: map['type'] as String,
    );
  }
}

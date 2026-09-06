// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_for_containers_reference_definition_response.dart';
import 'application_gateway_response.dart';
import 'managed_rules_definition_response.dart';
import 'policy_settings_response.dart';
import 'sub_resource_response.dart';
import 'web_application_firewall_custom_rule_response.dart';

/// Result data returned by getWebApplicationFirewallPolicy.
class GetWebApplicationFirewallPolicyResult {
  /// A collection of references to application gateway for containers.
  final List<ApplicationGatewayForContainersReferenceDefinitionResponse>? applicationGatewayForContainers;
  /// A collection of references to application gateways.
  final List<ApplicationGatewayResponse>? applicationGateways;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The custom rules inside the policy.
  final List<WebApplicationFirewallCustomRuleResponse>? customRules;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// A collection of references to application gateway http listeners.
  final List<SubResourceResponse>? httpListeners;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Describes the managedRules structure.
  final ManagedRulesDefinitionResponse? managedRules;
  /// Resource name.
  final String? name;
  /// A collection of references to application gateway path rules.
  final List<SubResourceResponse>? pathBasedRules;
  /// The PolicySettings for policy.
  final PolicySettingsResponse? policySettings;
  /// The provisioning state of the web application firewall policy resource.
  final String? provisioningState;
  /// Resource status of the policy.
  final String? resourceState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// Resource type.
  final String? type;

  /// Creates a new [GetWebApplicationFirewallPolicyResult].
  /// [applicationGatewayForContainers] A collection of references to application gateway for containers.
  /// [applicationGateways] A collection of references to application gateways.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [customRules] The custom rules inside the policy.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [httpListeners] A collection of references to application gateway http listeners.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [managedRules] Describes the managedRules structure.
  /// [name] Resource name.
  /// [pathBasedRules] A collection of references to application gateway path rules.
  /// [policySettings] The PolicySettings for policy.
  /// [provisioningState] The provisioning state of the web application firewall policy resource.
  /// [resourceState] Resource status of the policy.
  /// [tags] Resource tags.
  /// [type] Resource type.
  const GetWebApplicationFirewallPolicyResult({
    this.applicationGatewayForContainers,
    this.applicationGateways,
    this.azureApiVersion,
    this.customRules,
    this.etag,
    this.httpListeners,
    this.id,
    this.location,
    this.managedRules,
    this.name,
    this.pathBasedRules,
    this.policySettings,
    this.provisioningState,
    this.resourceState,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationGatewayForContainers': ?(() { final guardedValue = applicationGatewayForContainers; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationGatewayForContainersReferenceDefinitionResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'applicationGateways': ?(() { final guardedValue = applicationGateways; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplicationGatewayResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'azureApiVersion': ?azureApiVersion,
      'customRules': ?(() { final guardedValue = customRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<WebApplicationFirewallCustomRuleResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'etag': ?etag,
      'httpListeners': ?(() { final guardedValue = httpListeners; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'location': ?location,
      'managedRules': ?managedRules?.toMap(),
      'name': ?name,
      'pathBasedRules': ?(() { final guardedValue = pathBasedRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'policySettings': ?policySettings?.toMap(),
      'provisioningState': ?provisioningState,
      'resourceState': ?resourceState,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetWebApplicationFirewallPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetWebApplicationFirewallPolicyResult(
      applicationGatewayForContainers: (() { final guardedValue = map['applicationGatewayForContainers']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayForContainersReferenceDefinitionResponse>(guardedValue, (value) => ApplicationGatewayForContainersReferenceDefinitionResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      applicationGateways: (() { final guardedValue = map['applicationGateways']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplicationGatewayResponse>(guardedValue, (value) => ApplicationGatewayResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customRules: (() { final guardedValue = map['customRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<WebApplicationFirewallCustomRuleResponse>(guardedValue, (value) => WebApplicationFirewallCustomRuleResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      httpListeners: (() { final guardedValue = map['httpListeners']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      managedRules: (() { final guardedValue = map['managedRules']; if (guardedValue == null) return null; return ManagedRulesDefinitionResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      pathBasedRules: (() { final guardedValue = map['pathBasedRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<SubResourceResponse>(guardedValue, (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      policySettings: (() { final guardedValue = map['policySettings']; if (guardedValue == null) return null; return PolicySettingsResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceState: (() { final guardedValue = map['resourceState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'alert_prometheus_rule_group_rule.dart';

/// Input properties used for looking up and filtering AlertPrometheusRuleGroup resources.
class AlertPrometheusRuleGroupState {
  /// Specifies the name of the Managed Kubernetes Cluster.
  final pulumi.Input<String>? clusterName;
  /// The description of the Alert Management Prometheus Rule Group.
  final pulumi.Input<String>? description;
  /// Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between `PT1M` and `PT15M`.
  final pulumi.Input<String>? interval;
  /// Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Is this Alert Management Prometheus Rule Group enabled? Possible values are `true` and `false`.
  final pulumi.Input<bool>? ruleGroupEnabled;
  /// One or more `rule` blocks as defined below.
  final pulumi.Input<List<AlertPrometheusRuleGroupRule>>? rules;
  /// Specifies the resource ID of the Azure Monitor Workspace.
  final pulumi.Input<List<String>>? scopes;
  /// A mapping of tags to assign to the Alert Management Prometheus Rule Group.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AlertPrometheusRuleGroupState].
  /// [clusterName] Specifies the name of the Managed Kubernetes Cluster.
  /// [description] The description of the Alert Management Prometheus Rule Group.
  /// [interval] Specifies the interval in which to run the Alert Management Prometheus Rule Group represented in ISO 8601 duration format. Possible values are between `PT1M` and `PT15M`.
  /// [location] Specifies the Azure Region where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created.
  /// [name] Specifies the name which should be used for this Alert Management Prometheus Rule Group. Changing this forces a new resource to be created.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Alert Management Prometheus Rule Group should exist. Changing this forces a new resource to be created.
  /// [ruleGroupEnabled] Is this Alert Management Prometheus Rule Group enabled? Possible values are `true` and `false`.
  /// [rules] One or more `rule` blocks as defined below.
  /// [scopes] Specifies the resource ID of the Azure Monitor Workspace.
  /// [tags] A mapping of tags to assign to the Alert Management Prometheus Rule Group.
  const AlertPrometheusRuleGroupState({
    this.clusterName,
    this.description,
    this.interval,
    this.location,
    this.name,
    this.resourceGroupName,
    this.ruleGroupEnabled,
    this.rules,
    this.scopes,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'description': ?description,
      'interval': ?interval,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'ruleGroupEnabled': ?ruleGroupEnabled,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<AlertPrometheusRuleGroupRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<AlertPrometheusRuleGroupRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'scopes': ?scopes,
      'tags': ?tags,
    };
  }

  factory AlertPrometheusRuleGroupState.fromMap(Map<String, dynamic> map) {
    return AlertPrometheusRuleGroupState(
      clusterName: (() { final guardedValue = map['clusterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      interval: (() { final guardedValue = map['interval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ruleGroupEnabled: (() { final guardedValue = map['ruleGroupEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AlertPrometheusRuleGroupRule>(guardedValue, (value) => AlertPrometheusRuleGroupRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
      scopes: (() { final guardedValue = map['scopes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}


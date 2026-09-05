// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_batch_rule_set_rule.dart';

/// Result data returned by getFrontdoorBatchRuleSet.
class GetFrontdoorBatchRuleSetResult {
  /// The ID of the Front Door Profile associated with this Front Door Batch Rule Set.
  final String? cdnFrontdoorProfileId;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The request header name associated with this condition.
  final String? name;
  final String? profileName;
  final String? resourceGroupName;
  /// A `rules` block as defined below.
  final List<GetFrontdoorBatchRuleSetRule>? rules;

  /// Creates a new [GetFrontdoorBatchRuleSetResult].
  /// [cdnFrontdoorProfileId] The ID of the Front Door Profile associated with this Front Door Batch Rule Set.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The request header name associated with this condition.
  /// [profileName] Optional.
  /// [resourceGroupName] Optional.
  /// [rules] A `rules` block as defined below.
  const GetFrontdoorBatchRuleSetResult({
    this.cdnFrontdoorProfileId,
    this.id,
    this.name,
    this.profileName,
    this.resourceGroupName,
    this.rules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdnFrontdoorProfileId': ?cdnFrontdoorProfileId,
      'id': ?id,
      'name': ?name,
      'profileName': ?profileName,
      'resourceGroupName': ?resourceGroupName,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorBatchRuleSetRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetFrontdoorBatchRuleSetResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorBatchRuleSetResult(
      cdnFrontdoorProfileId: (() { final guardedValue = map['cdnFrontdoorProfileId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      profileName: (() { final guardedValue = map['profileName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorBatchRuleSetRule>(guardedValue, (value) => GetFrontdoorBatchRuleSetRule.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

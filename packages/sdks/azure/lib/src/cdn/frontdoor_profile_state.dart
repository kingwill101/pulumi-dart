// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_profile_identity.dart';
import 'frontdoor_profile_log_scrubbing_rule.dart';

/// Input properties used for looking up and filtering FrontdoorProfile resources.
class FrontdoorProfileState {
  /// An `identity` block as defined below.
  final pulumi.Input<FrontdoorProfileIdentity>? identity;
  /// One or more `log_scrubbing_rule` blocks as defined below.
  ///
  /// > **Note:** When no `log_scrubbing_rule` blocks are defined, log scrubbing will be automatically `disabled`. When one or more `log_scrubbing_rule` blocks are present, log scrubbing will be `enabled`.
  final pulumi.Input<List<FrontdoorProfileLogScrubbingRule>>? logScrubbingRules;
  /// Specifies the name of the Front Door Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// The UUID of this Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  final pulumi.Input<String>? resourceGuid;
  /// Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds.
  final pulumi.Input<int>? responseTimeoutSeconds;
  /// Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? skuName;
  /// Specifies a mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorProfileState].
  /// [identity] An `identity` block as defined below.
  /// [logScrubbingRules] One or more `log_scrubbing_rule` blocks as defined below.
  /// [name] Specifies the name of the Front Door Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created.
  /// [resourceGuid] The UUID of this Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  /// [responseTimeoutSeconds] Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds.
  /// [skuName] Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  /// [tags] Specifies a mapping of tags to assign to the resource.
  FrontdoorProfileState({
    pulumi.Output<FrontdoorProfileIdentity>? identity,
    pulumi.Output<List<FrontdoorProfileLogScrubbingRule>>? logScrubbingRules,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<String>? resourceGuid,
    pulumi.Output<int>? responseTimeoutSeconds,
    pulumi.Output<String>? skuName,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      identity = pulumi.Input.asOptionalInput<FrontdoorProfileIdentity>(identity),
      logScrubbingRules = pulumi.Input.asOptionalInput<List<FrontdoorProfileLogScrubbingRule>>(logScrubbingRules),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      resourceGuid = pulumi.Input.asOptionalInput<String>(resourceGuid),
      responseTimeoutSeconds = pulumi.Input.asOptionalInput<int>(responseTimeoutSeconds),
      skuName = pulumi.Input.asOptionalInput<String>(skuName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<FrontdoorProfileIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'logScrubbingRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorProfileLogScrubbingRule>, List<Map<String, dynamic>>>(logScrubbingRules, (value) => pulumi.Input.encodeList<FrontdoorProfileLogScrubbingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceGuid': ?resourceGuid,
      'responseTimeoutSeconds': ?responseTimeoutSeconds,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory FrontdoorProfileState.fromMap(Map<String, dynamic> map) {
    return FrontdoorProfileState(
      identity: map['identity'] == null ? null : pulumi.Output.create<FrontdoorProfileIdentity>(FrontdoorProfileIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())),
      logScrubbingRules: map['logScrubbingRules'] == null ? null : pulumi.Output.create<List<FrontdoorProfileLogScrubbingRule>>(pulumi.Input.decodeList<FrontdoorProfileLogScrubbingRule>(map['logScrubbingRules'], (value) => FrontdoorProfileLogScrubbingRule.fromMap((value as Map).cast<String, dynamic>()))),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      resourceGuid: map['resourceGuid'] == null ? null : pulumi.Output.create<String>(map['resourceGuid'] as String),
      responseTimeoutSeconds: map['responseTimeoutSeconds'] == null ? null : pulumi.Output.create<int>(map['responseTimeoutSeconds'] as int),
      skuName: map['skuName'] == null ? null : pulumi.Output.create<String>(map['skuName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


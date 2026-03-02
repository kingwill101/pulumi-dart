// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_profile_identity.dart';
import 'frontdoor_profile_log_scrubbing_rule.dart';

/// {@template pulumi_cdn_frontdoor_profile_frontdoor_profile_args_doc}
/// The set of arguments for FrontdoorProfile.
/// {@endtemplate}
/// {@macro pulumi_cdn_frontdoor_profile_frontdoor_profile_args_doc}
class FrontdoorProfileArgs {
  /// An `identity` block as defined below.
  final pulumi.Input<FrontdoorProfileIdentity>? identity;
  /// One or more `log_scrubbing_rule` blocks as defined below.
  ///
  /// > **Note:** When no `log_scrubbing_rule` blocks are defined, log scrubbing will be automatically `disabled`. When one or more `log_scrubbing_rule` blocks are present, log scrubbing will be `enabled`.
  final pulumi.Input<List<FrontdoorProfileLogScrubbingRule>>? logScrubbingRules;
  /// Specifies the name of the Front Door Profile. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds.
  final pulumi.Input<int>? responseTimeoutSeconds;
  /// Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  final pulumi.Input<String> skuName;
  /// Specifies a mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [FrontdoorProfileArgs].
  /// [identity] An `identity` block as defined below.
  /// [logScrubbingRules] One or more `log_scrubbing_rule` blocks as defined below.
  /// [name] Specifies the name of the Front Door Profile. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where this Front Door Profile should exist. Changing this forces a new resource to be created.
  /// [responseTimeoutSeconds] Specifies the maximum response timeout in seconds. Possible values are between `16` and `240` seconds (inclusive). Defaults to `120` seconds.
  /// [skuName] Specifies the SKU for this Front Door Profile. Possible values include `Standard_AzureFrontDoor` and `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  /// [tags] Specifies a mapping of tags to assign to the resource.
  FrontdoorProfileArgs({
    this.identity,
    this.logScrubbingRules,
    this.name,
    required this.resourceGroupName,
    this.responseTimeoutSeconds,
    required this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<FrontdoorProfileIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'logScrubbingRules': ?pulumi.Input.mapOptionalInputValue<List<FrontdoorProfileLogScrubbingRule>, List<Map<String, dynamic>>>(logScrubbingRules, (value) => pulumi.Input.encodeList<FrontdoorProfileLogScrubbingRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'responseTimeoutSeconds': ?responseTimeoutSeconds,
      'skuName': skuName,
      'tags': ?tags,
    };
  }

  factory FrontdoorProfileArgs.fromMap(Map<String, dynamic> map) {
    return FrontdoorProfileArgs(
      identity: map['identity'] == null ? null : (FrontdoorProfileIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      logScrubbingRules: map['logScrubbingRules'] == null ? null : (pulumi.Input.decodeList<FrontdoorProfileLogScrubbingRule>(map['logScrubbingRules'], (value) => FrontdoorProfileLogScrubbingRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      responseTimeoutSeconds: map['responseTimeoutSeconds'] == null ? null : (map['responseTimeoutSeconds'] as int).input(),
      skuName: (map['skuName'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}


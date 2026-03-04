// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_profile_identity.dart';
import 'get_frontdoor_profile_log_scrubbing_rule.dart';

/// Result data returned by getFrontdoorProfile.
class GetFrontdoorProfileResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// An `identity` block as defined below.
  final GetFrontdoorProfileIdentity identity;

  /// One or more `log_scrubbing_rule` blocks as defined below.
  final List<GetFrontdoorProfileLogScrubbingRule> logScrubbingRules;
  final String name;
  final String resourceGroupName;

  /// The UUID of the Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  final String resourceGuid;

  /// Specifies the maximum response timeout in seconds.
  final int responseTimeoutSeconds;

  /// Specifies the SKU for this Front Door Profile.
  final String skuName;

  /// Specifies a mapping of Tags assigned to this Front Door Profile.
  final Map<String, String> tags;

  /// Creates a new [GetFrontdoorProfileResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identity] An `identity` block as defined below.
  /// [logScrubbingRules] One or more `log_scrubbing_rule` blocks as defined below.
  /// [name] Required.
  /// [resourceGroupName] Required.
  /// [resourceGuid] The UUID of the Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  /// [responseTimeoutSeconds] Specifies the maximum response timeout in seconds.
  /// [skuName] Specifies the SKU for this Front Door Profile.
  /// [tags] Specifies a mapping of Tags assigned to this Front Door Profile.
  GetFrontdoorProfileResult({
    required this.id,
    required this.identity,
    required this.logScrubbingRules,
    required this.name,
    required this.resourceGroupName,
    required this.resourceGuid,
    required this.responseTimeoutSeconds,
    required this.skuName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'identity': identity.toMap(),
      'logScrubbingRules':
          pulumi.Input.encodeList<
            GetFrontdoorProfileLogScrubbingRule,
            Map<String, dynamic>
          >(logScrubbingRules, (value) => value.toMap()),
      'name': name,
      'resourceGroupName': resourceGroupName,
      'resourceGuid': resourceGuid,
      'responseTimeoutSeconds': responseTimeoutSeconds,
      'skuName': skuName,
      'tags': tags,
    };
  }

  factory GetFrontdoorProfileResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorProfileResult(
      id: map['id'] as String,
      identity: GetFrontdoorProfileIdentity.fromMap(
        (map['identity']! as Map).cast<String, dynamic>(),
      ),
      logScrubbingRules:
          pulumi.Input.decodeList<GetFrontdoorProfileLogScrubbingRule>(
            map['logScrubbingRules']!,
            (value) => GetFrontdoorProfileLogScrubbingRule.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      resourceGuid: map['resourceGuid'] as String,
      responseTimeoutSeconds: map['responseTimeoutSeconds'] as int,
      skuName: map['skuName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

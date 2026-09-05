// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_frontdoor_profile_identity.dart';
import 'get_frontdoor_profile_log_scrubbing_rule.dart';

/// Result data returned by getFrontdoorProfile.
class GetFrontdoorProfileResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// An `identity` block as defined below.
  final GetFrontdoorProfileIdentity? identity;
  /// One or more `logScrubbingRule` blocks as defined below.
  final List<GetFrontdoorProfileLogScrubbingRule>? logScrubbingRules;
  final String? name;
  final String? resourceGroupName;
  /// The UUID of the Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  final String? resourceGuid;
  /// Specifies the maximum response timeout in seconds.
  final int? responseTimeoutSeconds;
  /// Specifies the SKU for this Front Door Profile.
  final String? skuName;
  /// Specifies a mapping of Tags assigned to this Front Door Profile.
  final Map<String, String>? tags;

  /// Creates a new [GetFrontdoorProfileResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [identity] An `identity` block as defined below.
  /// [logScrubbingRules] One or more `logScrubbingRule` blocks as defined below.
  /// [name] Optional.
  /// [resourceGroupName] Optional.
  /// [resourceGuid] The UUID of the Front Door Profile which will be sent in the HTTP Header as the `X-Azure-FDID` attribute.
  /// [responseTimeoutSeconds] Specifies the maximum response timeout in seconds.
  /// [skuName] Specifies the SKU for this Front Door Profile.
  /// [tags] Specifies a mapping of Tags assigned to this Front Door Profile.
  const GetFrontdoorProfileResult({
    this.id,
    this.identity,
    this.logScrubbingRules,
    this.name,
    this.resourceGroupName,
    this.resourceGuid,
    this.responseTimeoutSeconds,
    this.skuName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'identity': ?identity?.toMap(),
      'logScrubbingRules': ?(() { final guardedValue = logScrubbingRules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFrontdoorProfileLogScrubbingRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'resourceGuid': ?resourceGuid,
      'responseTimeoutSeconds': ?responseTimeoutSeconds,
      'skuName': ?skuName,
      'tags': ?tags,
    };
  }

  factory GetFrontdoorProfileResult.fromMap(Map<String, dynamic> map) {
    return GetFrontdoorProfileResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return GetFrontdoorProfileIdentity.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      logScrubbingRules: (() { final guardedValue = map['logScrubbingRules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFrontdoorProfileLogScrubbingRule>(guardedValue, (value) => GetFrontdoorProfileLogScrubbingRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      resourceGuid: (() { final guardedValue = map['resourceGuid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      responseTimeoutSeconds: (() { final guardedValue = map['responseTimeoutSeconds']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      skuName: (() { final guardedValue = map['skuName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}

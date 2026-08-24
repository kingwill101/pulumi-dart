// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_zero_trust_access_infrastructure_targets_get_zero_trust_access_infrastructure_targets_args_doc}
/// Arguments for getZeroTrustAccessInfrastructureTargets.
/// {@endtemplate}
/// {@macro pulumi_index_get_zero_trust_access_infrastructure_targets_get_zero_trust_access_infrastructure_targets_args_doc}
class GetZeroTrustAccessInfrastructureTargetsArgs {
  /// Account identifier
  final pulumi.Input<String?>? accountId;
  /// Date and time at which the target was created after (inclusive)
  final pulumi.Input<String?>? createdAfter;
  /// Date and time at which the target was created before (inclusive)
  final pulumi.Input<String?>? createdBefore;
  /// The sorting direction.
  /// Available values: "asc", "desc".
  final pulumi.Input<String?>? direction;
  /// Hostname of a target
  final pulumi.Input<String?>? hostname;
  /// Partial match to the hostname of a target
  final pulumi.Input<String?>? hostnameContains;
  /// Filters for targets whose IP addresses look like the specified string.
  /// Supports `*` as a wildcard character
  final pulumi.Input<String?>? ipLike;
  /// IPv4 address of the target
  final pulumi.Input<String?>? ipV4;
  /// IPv6 address of the target
  final pulumi.Input<String?>? ipV6;
  /// Filters for targets that have any of the following IP addresses. Specify
  /// `ips` multiple times in query parameter to build list of candidates.
  final pulumi.Input<List<String>?>? ips;
  /// Defines an IPv4 filter range's ending value (inclusive). Requires
  /// `ipv4Start` to be specified as well.
  final pulumi.Input<String?>? ipv4End;
  /// Defines an IPv4 filter range's starting value (inclusive). Requires
  /// `ipv4End` to be specified as well.
  final pulumi.Input<String?>? ipv4Start;
  /// Defines an IPv6 filter range's ending value (inclusive). Requires
  /// `ipv6Start` to be specified as well.
  final pulumi.Input<String?>? ipv6End;
  /// Defines an IPv6 filter range's starting value (inclusive). Requires
  /// `ipv6End` to be specified as well.
  final pulumi.Input<String?>? ipv6Start;
  /// Max items to fetch, default: 1000
  final pulumi.Input<int?>? maxItems;
  /// Date and time at which the target was modified after (inclusive)
  final pulumi.Input<String?>? modifiedAfter;
  /// Date and time at which the target was modified before (inclusive)
  final pulumi.Input<String?>? modifiedBefore;
  /// The field to sort by.
  /// Available values: "hostname", "createdAt".
  final pulumi.Input<String?>? order;
  /// Filters for targets that have any of the following UUIDs. Specify
  /// `targetIds` multiple times in query parameter to build list of
  /// candidates.
  final pulumi.Input<List<String>?>? targetIds;
  /// Private virtual network identifier of the target
  final pulumi.Input<String?>? virtualNetworkId;

  /// Creates a new [GetZeroTrustAccessInfrastructureTargetsArgs].
  /// [accountId] Account identifier
  /// [createdAfter] Date and time at which the target was created after (inclusive)
  /// [createdBefore] Date and time at which the target was created before (inclusive)
  /// [direction] The sorting direction.
  /// [hostname] Hostname of a target
  /// [hostnameContains] Partial match to the hostname of a target
  /// [ipLike] Filters for targets whose IP addresses look like the specified string.
  /// [ipV4] IPv4 address of the target
  /// [ipV6] IPv6 address of the target
  /// [ips] Filters for targets that have any of the following IP addresses. Specify
  /// [ipv4End] Defines an IPv4 filter range's ending value (inclusive). Requires
  /// [ipv4Start] Defines an IPv4 filter range's starting value (inclusive). Requires
  /// [ipv6End] Defines an IPv6 filter range's ending value (inclusive). Requires
  /// [ipv6Start] Defines an IPv6 filter range's starting value (inclusive). Requires
  /// [maxItems] Max items to fetch, default: 1000
  /// [modifiedAfter] Date and time at which the target was modified after (inclusive)
  /// [modifiedBefore] Date and time at which the target was modified before (inclusive)
  /// [order] The field to sort by.
  /// [targetIds] Filters for targets that have any of the following UUIDs. Specify
  /// [virtualNetworkId] Private virtual network identifier of the target
  const GetZeroTrustAccessInfrastructureTargetsArgs({
    this.accountId,
    this.createdAfter,
    this.createdBefore,
    this.direction,
    this.hostname,
    this.hostnameContains,
    this.ipLike,
    this.ipV4,
    this.ipV6,
    this.ips,
    this.ipv4End,
    this.ipv4Start,
    this.ipv6End,
    this.ipv6Start,
    this.maxItems,
    this.modifiedAfter,
    this.modifiedBefore,
    this.order,
    this.targetIds,
    this.virtualNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'createdAfter': ?createdAfter,
      'createdBefore': ?createdBefore,
      'direction': ?direction,
      'hostname': ?hostname,
      'hostnameContains': ?hostnameContains,
      'ipLike': ?ipLike,
      'ipV4': ?ipV4,
      'ipV6': ?ipV6,
      'ips': ?ips,
      'ipv4End': ?ipv4End,
      'ipv4Start': ?ipv4Start,
      'ipv6End': ?ipv6End,
      'ipv6Start': ?ipv6Start,
      'maxItems': ?maxItems,
      'modifiedAfter': ?modifiedAfter,
      'modifiedBefore': ?modifiedBefore,
      'order': ?order,
      'targetIds': ?targetIds,
      'virtualNetworkId': ?virtualNetworkId,
    };
  }

  factory GetZeroTrustAccessInfrastructureTargetsArgs.fromMap(Map<String, dynamic> map) {
    return GetZeroTrustAccessInfrastructureTargetsArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdAfter: (() { final guardedValue = map['createdAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdBefore: (() { final guardedValue = map['createdBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      direction: (() { final guardedValue = map['direction']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostname: (() { final guardedValue = map['hostname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostnameContains: (() { final guardedValue = map['hostnameContains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipLike: (() { final guardedValue = map['ipLike']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipV4: (() { final guardedValue = map['ipV4']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipV6: (() { final guardedValue = map['ipV6']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ips: (() { final guardedValue = map['ips']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      ipv4End: (() { final guardedValue = map['ipv4End']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv4Start: (() { final guardedValue = map['ipv4Start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6End: (() { final guardedValue = map['ipv6End']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ipv6Start: (() { final guardedValue = map['ipv6Start']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxItems: (() { final guardedValue = map['maxItems']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      modifiedAfter: (() { final guardedValue = map['modifiedAfter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modifiedBefore: (() { final guardedValue = map['modifiedBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetIds: (() { final guardedValue = map['targetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      virtualNetworkId: (() { final guardedValue = map['virtualNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

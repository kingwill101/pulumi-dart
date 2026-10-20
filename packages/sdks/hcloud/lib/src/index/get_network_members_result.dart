// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_network_members_member.dart';

/// Result data returned by getNetworkMembers.
class GetNetworkMembersResult {
  final List<GetNetworkMembersMember>? members;
  /// ID the Network to list the members of.
  final int? networkId;
  /// Filter members by status. May be used multiple times.
  final List<String>? withStatuses;
  /// Filter members by subnet. May be used multiple times.
  final List<String>? withSubnets;
  /// Filter members by type. May be used multiple times.
  final List<String>? withTypes;

  /// Creates a new [GetNetworkMembersResult].
  /// [members] Optional.
  /// [networkId] ID the Network to list the members of.
  /// [withStatuses] Filter members by status. May be used multiple times.
  /// [withSubnets] Filter members by subnet. May be used multiple times.
  /// [withTypes] Filter members by type. May be used multiple times.
  const GetNetworkMembersResult({
    this.members,
    this.networkId,
    this.withStatuses,
    this.withSubnets,
    this.withTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?(() { final guardedValue = members; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetNetworkMembersMember, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'networkId': ?networkId,
      'withStatuses': ?withStatuses,
      'withSubnets': ?withSubnets,
      'withTypes': ?withTypes,
    };
  }

  factory GetNetworkMembersResult.fromMap(Map<String, dynamic> map) {
    return GetNetworkMembersResult(
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetNetworkMembersMember>(guardedValue, (value) => GetNetworkMembersMember.fromMap((value as Map).cast<String, dynamic>())); })(),
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      withStatuses: (() { final guardedValue = map['withStatuses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      withSubnets: (() { final guardedValue = map['withSubnets']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      withTypes: (() { final guardedValue = map['withTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}

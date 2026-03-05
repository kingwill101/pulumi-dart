// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'members_member.dart';

/// Input properties used for looking up and filtering Members resources.
class MembersState {
  /// A set of dictionaries containing member parameters. The
  /// structure is described below.
  final pulumi.Input<List<MembersMember>>? members;
  /// The id of the pool that members will be assigned to.
  /// Changing this creates a new members resource.
  final pulumi.Input<String>? poolId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create pool members. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// members resource.
  final pulumi.Input<String>? region;

  /// Creates a new [MembersState].
  /// [members] A set of dictionaries containing member parameters. The
  /// [poolId] The id of the pool that members will be assigned to.
  /// [region] The region in which to obtain the V2 Networking client.
  MembersState({
    this.members,
    this.poolId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?pulumi.Input.mapOptionalInputValue<List<MembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<MembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolId': ?poolId,
      'region': ?region,
    };
  }

  factory MembersState.fromMap(Map<String, dynamic> map) {
    return MembersState(
      members: (() { final guardedValue = map['members']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MembersMember>(guardedValue, (value) => MembersMember.fromMap((value as Map).cast<String, dynamic>()))); })(),
      poolId: (() { final guardedValue = map['poolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


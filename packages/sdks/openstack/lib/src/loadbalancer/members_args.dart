// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'members_member.dart';

/// {@template pulumi_loadbalancer_members_members_args_doc}
/// The set of arguments for Members.
/// {@endtemplate}
/// {@macro pulumi_loadbalancer_members_members_args_doc}
class MembersArgs {
  /// A set of dictionaries containing member parameters. The
  /// structure is described below.
  final pulumi.Input<List<MembersMember>>? members;
  /// The id of the pool that members will be assigned to.
  /// Changing this creates a new members resource.
  final pulumi.Input<String> poolId;
  /// The region in which to obtain the V2 Networking client.
  /// A Networking client is needed to create pool members. If omitted, the
  /// `region` argument of the provider is used. Changing this creates a new
  /// members resource.
  final pulumi.Input<String>? region;

  /// Creates a new [MembersArgs].
  /// [members] A set of dictionaries containing member parameters. The
  /// [poolId] The id of the pool that members will be assigned to.
  /// [region] The region in which to obtain the V2 Networking client.
  MembersArgs({
    this.members,
    required this.poolId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'members': ?pulumi.Input.mapOptionalInputValue<List<MembersMember>, List<Map<String, dynamic>>>(members, (value) => pulumi.Input.encodeList<MembersMember, Map<String, dynamic>>(value, (value) => value.toMap())),
      'poolId': poolId,
      'region': ?region,
    };
  }

  factory MembersArgs.fromMap(Map<String, dynamic> map) {
    return MembersArgs(
      members: map['members'] == null ? null : (pulumi.Input.decodeList<MembersMember>(map['members']!, (value) => MembersMember.fromMap((value as Map).cast<String, dynamic>()))).input(),
      poolId: (map['poolId'] as String).input(),
      region: map['region'] == null ? null : (map['region']! as String).input(),
    );
  }
}


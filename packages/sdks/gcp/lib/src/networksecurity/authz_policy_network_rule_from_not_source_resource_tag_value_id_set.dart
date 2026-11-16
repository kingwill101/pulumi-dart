// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet {
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  /// Limited to 5 matches.
  final pulumi.Input<List<String>?>? ids;

  /// Creates a new [AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet].
  /// [ids] A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  const AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet({
    this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
    };
  }

  factory AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

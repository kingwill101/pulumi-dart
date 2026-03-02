// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet {
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  /// Limited to 5 matches.
  final pulumi.Input<List<String>>? ids;

  /// Creates a new [AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet].
  /// [ids] A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request. The match follows AND semantics which means all the ids must match.
  AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet({
    this.ids,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
    };
  }

  factory AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
    );
  }
}


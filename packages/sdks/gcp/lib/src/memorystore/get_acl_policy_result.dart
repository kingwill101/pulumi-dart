// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_acl_policy_rule.dart';

/// Result data returned by getAclPolicy.
class GetAclPolicyResult {
  final String? aclPolicyId;
  final String? deletionPolicy;
  final String? etag;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  final String? name;
  final String? project;
  final List<GetAclPolicyRule>? rules;
  final String? state;

  /// Creates a new [GetAclPolicyResult].
  /// [aclPolicyId] Optional.
  /// [deletionPolicy] Optional.
  /// [etag] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [name] Optional.
  /// [project] Optional.
  /// [rules] Optional.
  /// [state] Optional.
  const GetAclPolicyResult({
    this.aclPolicyId,
    this.deletionPolicy,
    this.etag,
    this.id,
    this.location,
    this.name,
    this.project,
    this.rules,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclPolicyId': ?aclPolicyId,
      'deletionPolicy': ?deletionPolicy,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'project': ?project,
      'rules': ?(() { final guardedValue = rules; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetAclPolicyRule, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'state': ?state,
    };
  }

  factory GetAclPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetAclPolicyResult(
      aclPolicyId: (() { final guardedValue = map['aclPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      rules: (() { final guardedValue = map['rules']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetAclPolicyRule>(guardedValue, (value) => GetAclPolicyRule.fromMap((value as Map).cast<String, dynamic>())); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_from_source_resource_iam_service_account.dart';
import 'authz_policy_http_rule_from_source_resource_tag_value_id_set.dart';

class AuthzPolicyHttpRuleFromSourceResource {
  /// An IAM service account to match against the source service account of the VM sending the request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyHttpRuleFromSourceResourceIamServiceAccount>? iamServiceAccount;
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet>? tagValueIdSet;

  /// Creates a new [AuthzPolicyHttpRuleFromSourceResource].
  /// [iamServiceAccount] An IAM service account to match against the source service account of the VM sending the request.
  /// [tagValueIdSet] A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  AuthzPolicyHttpRuleFromSourceResource({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamServiceAccount': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyHttpRuleFromSourceResourceIamServiceAccount, Map<String, dynamic>>(iamServiceAccount, (value) => value.toMap()),
      'tagValueIdSet': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet, Map<String, dynamic>>(tagValueIdSet, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyHttpRuleFromSourceResource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleFromSourceResource(
      iamServiceAccount: map['iamServiceAccount'] == null ? null : (AuthzPolicyHttpRuleFromSourceResourceIamServiceAccount.fromMap((map['iamServiceAccount']! as Map).cast<String, dynamic>())).input(),
      tagValueIdSet: map['tagValueIdSet'] == null ? null : (AuthzPolicyHttpRuleFromSourceResourceTagValueIdSet.fromMap((map['tagValueIdSet']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_not_source_resource_iam_service_account.dart';
import 'authz_policy_network_rule_from_not_source_resource_tag_value_id_set.dart';

class AuthzPolicyNetworkRuleFromNotSourceResource {
  /// An IAM service account to match against the source service account of the VM sending the request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFromNotSourceResourceIamServiceAccount?>? iamServiceAccount;
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet?>? tagValueIdSet;

  /// Creates a new [AuthzPolicyNetworkRuleFromNotSourceResource].
  /// [iamServiceAccount] An IAM service account to match against the source service account of the VM sending the request.
  /// [tagValueIdSet] A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  const AuthzPolicyNetworkRuleFromNotSourceResource({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamServiceAccount': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFromNotSourceResourceIamServiceAccount, Map<String, dynamic>>(iamServiceAccount, (value) => value.toMap()),
      'tagValueIdSet': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet, Map<String, dynamic>>(tagValueIdSet, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyNetworkRuleFromNotSourceResource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromNotSourceResource(
      iamServiceAccount: (() { final guardedValue = map['iamServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFromNotSourceResourceIamServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagValueIdSet: (() { final guardedValue = map['tagValueIdSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFromNotSourceResourceTagValueIdSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

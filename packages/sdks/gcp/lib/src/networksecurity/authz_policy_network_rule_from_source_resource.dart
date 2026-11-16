// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_network_rule_from_source_resource_iam_service_account.dart';
import 'authz_policy_network_rule_from_source_resource_tag_value_id_set.dart';

class AuthzPolicyNetworkRuleFromSourceResource {
  /// An IAM service account to match against the source service account of the VM sending the request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFromSourceResourceIamServiceAccount?>? iamServiceAccount;
  /// A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyNetworkRuleFromSourceResourceTagValueIdSet?>? tagValueIdSet;

  /// Creates a new [AuthzPolicyNetworkRuleFromSourceResource].
  /// [iamServiceAccount] An IAM service account to match against the source service account of the VM sending the request.
  /// [tagValueIdSet] A list of resource tag value permanent IDs to match against the resource manager tags value associated with the source VM of a request.
  const AuthzPolicyNetworkRuleFromSourceResource({
    this.iamServiceAccount,
    this.tagValueIdSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'iamServiceAccount': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFromSourceResourceIamServiceAccount, Map<String, dynamic>>(iamServiceAccount, (value) => value.toMap()),
      'tagValueIdSet': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyNetworkRuleFromSourceResourceTagValueIdSet, Map<String, dynamic>>(tagValueIdSet, (value) => value.toMap()),
    };
  }

  factory AuthzPolicyNetworkRuleFromSourceResource.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyNetworkRuleFromSourceResource(
      iamServiceAccount: (() { final guardedValue = map['iamServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFromSourceResourceIamServiceAccount.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tagValueIdSet: (() { final guardedValue = map['tagValueIdSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyNetworkRuleFromSourceResourceTagValueIdSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

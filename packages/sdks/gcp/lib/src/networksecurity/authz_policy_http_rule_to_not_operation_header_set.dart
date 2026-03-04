// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_not_operation_header_set_header.dart';

class AuthzPolicyHttpRuleToNotOperationHeaderSet {
  /// A list of headers to match against in http header. The match can be one of exact, prefix, suffix, or contains (substring match). The match follows AND semantics which means all the headers must match. Matches are always case sensitive unless the ignoreCase is set. Limited to 10 matches.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToNotOperationHeaderSetHeader>>?
  headers;

  /// Creates a new [AuthzPolicyHttpRuleToNotOperationHeaderSet].
  /// [headers] A list of headers to match against in http header. The match can be one of exact, prefix, suffix, or contains (substring match). The match follows AND semantics which means all the headers must match. Matches are always case sensitive unless the ignoreCase is set. Limited to 10 matches.
  AuthzPolicyHttpRuleToNotOperationHeaderSet({this.headers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headers':
          ?pulumi.Input.mapOptionalInputValue<
            List<AuthzPolicyHttpRuleToNotOperationHeaderSetHeader>,
            List<Map<String, dynamic>>
          >(
            headers,
            (value) =>
                pulumi.Input.encodeList<
                  AuthzPolicyHttpRuleToNotOperationHeaderSetHeader,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory AuthzPolicyHttpRuleToNotOperationHeaderSet.fromMap(
    Map<String, dynamic> map,
  ) {
    return AuthzPolicyHttpRuleToNotOperationHeaderSet(
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            AuthzPolicyHttpRuleToNotOperationHeaderSetHeader
          >(
            guardedValue,
            (value) => AuthzPolicyHttpRuleToNotOperationHeaderSetHeader.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}

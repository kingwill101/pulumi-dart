// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_http_rule_to_operation_header_set.dart';
import 'authz_policy_http_rule_to_operation_host.dart';
import 'authz_policy_http_rule_to_operation_path.dart';

class AuthzPolicyHttpRuleToOperation {
  /// A list of headers to match against in http header.
  /// Structure is documented below.
  final pulumi.Input<AuthzPolicyHttpRuleToOperationHeaderSet>? headerSet;
  /// A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 10 matches.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToOperationHost>>? hosts;
  /// A list of HTTP methods to match against. Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  final pulumi.Input<List<String>>? methods;
  /// A list of paths to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// Limited to 10 matches.
  /// Note that this path match includes the query parameters. For gRPC services, this should be a fully-qualified name of the form /package.service/method.
  /// Structure is documented below.
  final pulumi.Input<List<AuthzPolicyHttpRuleToOperationPath>>? paths;

  /// Creates a new [AuthzPolicyHttpRuleToOperation].
  /// [headerSet] A list of headers to match against in http header.
  /// [hosts] A list of HTTP Hosts to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  /// [methods] A list of HTTP methods to match against. Each entry must be a valid HTTP method name (GET, PUT, POST, HEAD, PATCH, DELETE, OPTIONS). It only allows exact match and is always case sensitive.
  /// [paths] A list of paths to match against. The match can be one of exact, prefix, suffix, or contains (substring match). Matches are always case sensitive unless the ignoreCase is set.
  AuthzPolicyHttpRuleToOperation({
    this.headerSet,
    this.hosts,
    this.methods,
    this.paths,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'headerSet': ?pulumi.Input.mapOptionalInputValue<AuthzPolicyHttpRuleToOperationHeaderSet, Map<String, dynamic>>(headerSet, (value) => value.toMap()),
      'hosts': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleToOperationHost>, List<Map<String, dynamic>>>(hosts, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperationHost, Map<String, dynamic>>(value, (value) => value.toMap())),
      'methods': ?methods,
      'paths': ?pulumi.Input.mapOptionalInputValue<List<AuthzPolicyHttpRuleToOperationPath>, List<Map<String, dynamic>>>(paths, (value) => pulumi.Input.encodeList<AuthzPolicyHttpRuleToOperationPath, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AuthzPolicyHttpRuleToOperation.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyHttpRuleToOperation(
      headerSet: (() { final guardedValue = map['headerSet']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthzPolicyHttpRuleToOperationHeaderSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      hosts: (() { final guardedValue = map['hosts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperationHost>(guardedValue, (value) => AuthzPolicyHttpRuleToOperationHost.fromMap((value as Map).cast<String, dynamic>()))); })(),
      methods: (() { final guardedValue = map['methods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      paths: (() { final guardedValue = map['paths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AuthzPolicyHttpRuleToOperationPath>(guardedValue, (value) => AuthzPolicyHttpRuleToOperationPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


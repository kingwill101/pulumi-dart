// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'check_response.dart';
import 'image_allowlist_response.dart';
import 'scope_response.dart';

/// A conjunction of policy checks, scoped to a particular namespace or Kubernetes service account. In order for evaluation of a `CheckSet` to return "allowed" for a given image in a given Pod, one of the following conditions must be satisfied: * The image is explicitly exempted by an entry in `image_allowlist`, OR * ALL of the `checks` evaluate to "allowed".
class CheckSetResponse {
  /// Optional. The checks to apply. The ultimate result of evaluating the check set will be "allow" if and only if every check in `checks` evaluates to "allow". If `checks` is empty, the default behavior is "always allow".
  final pulumi.Input<List<CheckResponse>> checks;
  /// Optional. A user-provided name for this `CheckSet`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final pulumi.Input<String> displayName;
  /// Optional. Images exempted from this `CheckSet`. If any of the patterns match the image being evaluated, no checks in the `CheckSet` will be evaluated.
  final pulumi.Input<ImageAllowlistResponse> imageAllowlist;
  /// Optional. The scope to which this `CheckSet` applies. If unset or an empty string (the default), applies to all namespaces and service accounts. See the `Scope` message documentation for details on scoping rules.
  final pulumi.Input<ScopeResponse> scope;

  /// Creates a new [CheckSetResponse].
  /// [checks] Optional. The checks to apply. The ultimate result of evaluating the check set will be "allow" if and only if every check in `checks` evaluates to "allow". If `checks` is empty, the default behavior is "always allow".
  /// [displayName] Optional. A user-provided name for this `CheckSet`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  /// [imageAllowlist] Optional. Images exempted from this `CheckSet`. If any of the patterns match the image being evaluated, no checks in the `CheckSet` will be evaluated.
  /// [scope] Optional. The scope to which this `CheckSet` applies. If unset or an empty string (the default), applies to all namespaces and service accounts. See the `Scope` message documentation for details on scoping rules.
  CheckSetResponse({
    required this.checks,
    required this.displayName,
    required this.imageAllowlist,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checks': pulumi.Input.mapInputValue<List<CheckResponse>, List<Map<String, dynamic>>>(checks, (value) => pulumi.Input.encodeList<CheckResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'imageAllowlist': pulumi.Input.mapInputValue<ImageAllowlistResponse, Map<String, dynamic>>(imageAllowlist, (value) => value.toMap()),
      'scope': pulumi.Input.mapInputValue<ScopeResponse, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory CheckSetResponse.fromMap(Map<String, dynamic> map) {
    return CheckSetResponse(
      checks: (pulumi.Input.decodeList<CheckResponse>(map['checks'], (value) => CheckResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: (map['displayName'] as String).input(),
      imageAllowlist: (ImageAllowlistResponse.fromMap((map['imageAllowlist'] as Map).cast<String, dynamic>())).input(),
      scope: (ScopeResponse.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


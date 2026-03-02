// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'check.dart';
import 'image_allowlist.dart';
import 'scope.dart';

/// A conjunction of policy checks, scoped to a particular namespace or Kubernetes service account. In order for evaluation of a `CheckSet` to return "allowed" for a given image in a given Pod, one of the following conditions must be satisfied: * The image is explicitly exempted by an entry in `image_allowlist`, OR * ALL of the `checks` evaluate to "allowed".
class CheckSet {
  /// Optional. The checks to apply. The ultimate result of evaluating the check set will be "allow" if and only if every check in `checks` evaluates to "allow". If `checks` is empty, the default behavior is "always allow".
  final pulumi.Input<List<Check>>? checks;
  /// Optional. A user-provided name for this `CheckSet`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  final pulumi.Input<String>? displayName;
  /// Optional. Images exempted from this `CheckSet`. If any of the patterns match the image being evaluated, no checks in the `CheckSet` will be evaluated.
  final pulumi.Input<ImageAllowlist>? imageAllowlist;
  /// Optional. The scope to which this `CheckSet` applies. If unset or an empty string (the default), applies to all namespaces and service accounts. See the `Scope` message documentation for details on scoping rules.
  final pulumi.Input<Scope>? scope;

  /// Creates a new [CheckSet].
  /// [checks] Optional. The checks to apply. The ultimate result of evaluating the check set will be "allow" if and only if every check in `checks` evaluates to "allow". If `checks` is empty, the default behavior is "always allow".
  /// [displayName] Optional. A user-provided name for this `CheckSet`. This field has no effect on the policy evaluation behavior except to improve readability of messages in evaluation results.
  /// [imageAllowlist] Optional. Images exempted from this `CheckSet`. If any of the patterns match the image being evaluated, no checks in the `CheckSet` will be evaluated.
  /// [scope] Optional. The scope to which this `CheckSet` applies. If unset or an empty string (the default), applies to all namespaces and service accounts. See the `Scope` message documentation for details on scoping rules.
  CheckSet({
    this.checks,
    this.displayName,
    this.imageAllowlist,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checks': ?pulumi.Input.mapOptionalInputValue<List<Check>, List<Map<String, dynamic>>>(checks, (value) => pulumi.Input.encodeList<Check, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'imageAllowlist': ?pulumi.Input.mapOptionalInputValue<ImageAllowlist, Map<String, dynamic>>(imageAllowlist, (value) => value.toMap()),
      'scope': ?pulumi.Input.mapOptionalInputValue<Scope, Map<String, dynamic>>(scope, (value) => value.toMap()),
    };
  }

  factory CheckSet.fromMap(Map<String, dynamic> map) {
    return CheckSet(
      checks: map['checks'] == null ? null : (pulumi.Input.decodeList<Check>(map['checks'], (value) => Check.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      imageAllowlist: map['imageAllowlist'] == null ? null : (ImageAllowlist.fromMap((map['imageAllowlist'] as Map).cast<String, dynamic>())).input(),
      scope: map['scope'] == null ? null : (Scope.fromMap((map['scope'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


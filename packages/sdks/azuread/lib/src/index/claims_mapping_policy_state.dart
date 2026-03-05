// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ClaimsMappingPolicy resources.
class ClaimsMappingPolicyState {
  /// The claims mapping policy. This is a JSON formatted string, for which the `jsonencode()` function can be used.
  final pulumi.Input<List<String>>? definitions;
  /// The display name for this Claims Mapping Policy.
  final pulumi.Input<String>? displayName;

  /// Creates a new [ClaimsMappingPolicyState].
  /// [definitions] The claims mapping policy. This is a JSON formatted string, for which the `jsonencode()` function can be used.
  /// [displayName] The display name for this Claims Mapping Policy.
  ClaimsMappingPolicyState({
    this.definitions,
    this.displayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': ?definitions,
      'displayName': ?displayName,
    };
  }

  factory ClaimsMappingPolicyState.fromMap(Map<String, dynamic> map) {
    return ClaimsMappingPolicyState(
      definitions: (() { final guardedValue = map['definitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


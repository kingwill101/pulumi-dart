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
    pulumi.Output<List<String>>? definitions,
    pulumi.Output<String>? displayName,
  }) :
      definitions = pulumi.Input.asOptionalInput<List<String>>(definitions),
      displayName = pulumi.Input.asOptionalInput<String>(displayName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'definitions': ?definitions,
      'displayName': ?displayName,
    };
  }

  factory ClaimsMappingPolicyState.fromMap(Map<String, dynamic> map) {
    return ClaimsMappingPolicyState(
      definitions: map['definitions'] == null ? null : pulumi.Output.create<List<String>>((map['definitions'] as List).cast<String>()),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
    );
  }
}


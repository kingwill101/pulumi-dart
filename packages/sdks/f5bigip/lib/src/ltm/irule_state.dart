// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IRule resources.
class IRuleState {
  /// Body of the iRule
  final pulumi.Input<String>? irule;
  /// Name of the iRule
  final pulumi.Input<String>? name;

  /// Creates a new [IRuleState].
  /// [irule] Body of the iRule
  /// [name] Name of the iRule
  IRuleState({
    this.irule,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'irule': ?irule,
      'name': ?name,
    };
  }

  factory IRuleState.fromMap(Map<String, dynamic> map) {
    return IRuleState(
      irule: map['irule'] == null ? null : (map['irule']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}


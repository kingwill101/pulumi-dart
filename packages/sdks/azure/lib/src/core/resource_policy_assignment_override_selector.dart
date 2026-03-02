// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyAssignmentOverrideSelector {
  final pulumi.Input<List<String>>? ins;
  final pulumi.Input<String>? kind;
  final pulumi.Input<List<String>>? notIns;

  /// Creates a new [ResourcePolicyAssignmentOverrideSelector].
  /// [ins] Optional.
  /// [kind] Optional.
  /// [notIns] Optional.
  ResourcePolicyAssignmentOverrideSelector({
    this.ins,
    this.kind,
    this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ?ins,
      'kind': ?kind,
      'notIns': ?notIns,
    };
  }

  factory ResourcePolicyAssignmentOverrideSelector.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentOverrideSelector(
      ins: map['ins'] == null ? null : ((map['ins']! as List).cast<String>()).input(),
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
      notIns: map['notIns'] == null ? null : ((map['notIns']! as List).cast<String>()).input(),
    );
  }
}


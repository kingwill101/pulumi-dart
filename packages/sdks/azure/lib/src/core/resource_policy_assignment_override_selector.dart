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
  ResourcePolicyAssignmentOverrideSelector({this.ins, this.kind, this.notIns});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ins': ?ins, 'kind': ?kind, 'notIns': ?notIns};
  }

  factory ResourcePolicyAssignmentOverrideSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyAssignmentOverrideSelector(
      ins: (() {
        final guardedValue = map['ins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      notIns: (() {
        final guardedValue = map['notIns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

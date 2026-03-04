// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResourcePolicyAssignmentResourceSelectorSelector {
  final pulumi.Input<List<String>>? ins;
  final pulumi.Input<String> kind;
  final pulumi.Input<List<String>>? notIns;

  /// Creates a new [ResourcePolicyAssignmentResourceSelectorSelector].
  /// [ins] Optional.
  /// [kind] Required.
  /// [notIns] Optional.
  ResourcePolicyAssignmentResourceSelectorSelector({
    this.ins,
    required this.kind,
    this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ins': ?ins, 'kind': kind, 'notIns': ?notIns};
  }

  factory ResourcePolicyAssignmentResourceSelectorSelector.fromMap(
    Map<String, dynamic> map,
  ) {
    return ResourcePolicyAssignmentResourceSelectorSelector(
      ins: (() {
        final guardedValue = map['ins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      notIns: (() {
        final guardedValue = map['notIns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

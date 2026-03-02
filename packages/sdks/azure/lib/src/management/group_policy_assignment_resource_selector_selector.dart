// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GroupPolicyAssignmentResourceSelectorSelector {
  final pulumi.Input<List<String>>? ins;
  final pulumi.Input<String> kind;
  final pulumi.Input<List<String>>? notIns;

  /// Creates a new [GroupPolicyAssignmentResourceSelectorSelector].
  /// [ins] Optional.
  /// [kind] Required.
  /// [notIns] Optional.
  GroupPolicyAssignmentResourceSelectorSelector({
    this.ins,
    required this.kind,
    this.notIns,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ins': ?ins,
      'kind': kind,
      'notIns': ?notIns,
    };
  }

  factory GroupPolicyAssignmentResourceSelectorSelector.fromMap(Map<String, dynamic> map) {
    return GroupPolicyAssignmentResourceSelectorSelector(
      ins: map['ins'] == null ? null : ((map['ins'] as List).cast<String>()).input(),
      kind: (map['kind'] as String).input(),
      notIns: map['notIns'] == null ? null : ((map['notIns'] as List).cast<String>()).input(),
    );
  }
}


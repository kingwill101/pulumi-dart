// ignore_for_file: unused_element, unnecessary_cast


class ResourceGroupPolicyAssignmentResourceSelectorSelector {
  final List<String>? ins;
  final String kind;
  final List<String>? notIns;

  /// Creates a new [ResourceGroupPolicyAssignmentResourceSelectorSelector].
  /// [ins] Optional.
  /// [kind] Required.
  /// [notIns] Optional.
  ResourceGroupPolicyAssignmentResourceSelectorSelector({
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

  factory ResourceGroupPolicyAssignmentResourceSelectorSelector.fromMap(Map<String, dynamic> map) {
    return ResourceGroupPolicyAssignmentResourceSelectorSelector(
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      kind: map['kind'] as String,
      notIns: map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
    );
  }
}


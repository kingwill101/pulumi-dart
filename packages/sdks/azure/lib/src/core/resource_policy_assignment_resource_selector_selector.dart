// ignore_for_file: unused_element, unnecessary_cast


class ResourcePolicyAssignmentResourceSelectorSelector {
  final List<String>? ins;
  final String kind;
  final List<String>? notIns;

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
    return <String, dynamic>{
      'ins': ?ins,
      'kind': kind,
      'notIns': ?notIns,
    };
  }

  factory ResourcePolicyAssignmentResourceSelectorSelector.fromMap(Map<String, dynamic> map) {
    return ResourcePolicyAssignmentResourceSelectorSelector(
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      kind: map['kind'] as String,
      notIns: map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
    );
  }
}


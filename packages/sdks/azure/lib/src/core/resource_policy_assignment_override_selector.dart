// ignore_for_file: unused_element, unnecessary_cast


class ResourcePolicyAssignmentOverrideSelector {
  final List<String>? ins;
  final String? kind;
  final List<String>? notIns;

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
      ins: map['ins'] == null ? null : (map['ins'] as List).cast<String>(),
      kind: map['kind'] == null ? null : map['kind'] as String,
      notIns: map['notIns'] == null ? null : (map['notIns'] as List).cast<String>(),
    );
  }
}


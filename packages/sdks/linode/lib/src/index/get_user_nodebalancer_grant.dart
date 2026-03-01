// ignore_for_file: unused_element, unnecessary_cast


class GetUserNodebalancerGrant {
  /// The ID of entity this grant applies to.
  final int id;
  /// The current label of the entity this grant applies to, for display purposes.
  final String label;
  /// The level of access this User has to this entity. If null, this User has no access. (`read_only`, `read_write`)
  final String permissions;

  /// Creates a new [GetUserNodebalancerGrant].
  /// [id] The ID of entity this grant applies to.
  /// [label] The current label of the entity this grant applies to, for display purposes.
  /// [permissions] The level of access this User has to this entity. If null, this User has no access. (`read_only`, `read_write`)
  GetUserNodebalancerGrant({
    required this.id,
    required this.label,
    required this.permissions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': label,
      'permissions': permissions,
    };
  }

  factory GetUserNodebalancerGrant.fromMap(Map<String, dynamic> map) {
    return GetUserNodebalancerGrant(
      id: map['id'] as int,
      label: map['label'] as String,
      permissions: map['permissions'] as String,
    );
  }
}


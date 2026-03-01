// ignore_for_file: unused_element, unnecessary_cast


class FleetUpdateRunManagedClusterUpdateNodeImageSelection {
  /// Specifies the node image upgrade type. Possible values are `Latest` and `Consistent`.
  final String type;

  /// Creates a new [FleetUpdateRunManagedClusterUpdateNodeImageSelection].
  /// [type] Specifies the node image upgrade type. Possible values are `Latest` and `Consistent`.
  FleetUpdateRunManagedClusterUpdateNodeImageSelection({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory FleetUpdateRunManagedClusterUpdateNodeImageSelection.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunManagedClusterUpdateNodeImageSelection(
      type: map['type'] as String,
    );
  }
}


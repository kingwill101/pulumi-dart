// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FleetUpdateRunManagedClusterUpdateNodeImageSelection {
  /// Specifies the node image upgrade type. Possible values are `Latest` and `Consistent`.
  final pulumi.Input<String> type;

  /// Creates a new [FleetUpdateRunManagedClusterUpdateNodeImageSelection].
  /// [type] Specifies the node image upgrade type. Possible values are `Latest` and `Consistent`.
  const FleetUpdateRunManagedClusterUpdateNodeImageSelection({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory FleetUpdateRunManagedClusterUpdateNodeImageSelection.fromMap(Map<String, dynamic> map) {
    return FleetUpdateRunManagedClusterUpdateNodeImageSelection(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VNet solution for linker
class VNetSolution {
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Type of VNet solution.
  final pulumi.Input<String>? type;

  /// Creates a new [VNetSolution].
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [type] Type of VNet solution.
  VNetSolution({
    this.deleteOrUpdateBehavior,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'type': ?type,
    };
  }

  factory VNetSolution.fromMap(Map<String, dynamic> map) {
    return VNetSolution(
      deleteOrUpdateBehavior: map['deleteOrUpdateBehavior'] == null ? null : (map['deleteOrUpdateBehavior'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}


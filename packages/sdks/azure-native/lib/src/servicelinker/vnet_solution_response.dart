// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The VNet solution for linker
class VNetSolutionResponse {
  /// Indicates whether to clean up previous operation when Linker is updating or deleting
  final pulumi.Input<String>? deleteOrUpdateBehavior;
  /// Type of VNet solution.
  final pulumi.Input<String>? type;

  /// Creates a new [VNetSolutionResponse].
  /// [deleteOrUpdateBehavior] Indicates whether to clean up previous operation when Linker is updating or deleting
  /// [type] Type of VNet solution.
  const VNetSolutionResponse({
    this.deleteOrUpdateBehavior,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deleteOrUpdateBehavior': ?deleteOrUpdateBehavior,
      'type': ?type,
    };
  }

  factory VNetSolutionResponse.fromMap(Map<String, dynamic> map) {
    return VNetSolutionResponse(
      deleteOrUpdateBehavior: (() { final guardedValue = map['deleteOrUpdateBehavior']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


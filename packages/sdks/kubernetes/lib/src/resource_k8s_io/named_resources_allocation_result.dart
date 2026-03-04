// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesAllocationResult is used in AllocationResultModel.
class NamedResourcesAllocationResult {
  /// Name is the name of the selected resource instance.
  final pulumi.Input<String> name;

  /// Creates a new [NamedResourcesAllocationResult].
  /// [name] Name is the name of the selected resource instance.
  NamedResourcesAllocationResult({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory NamedResourcesAllocationResult.fromMap(Map<String, dynamic> map) {
    return NamedResourcesAllocationResult(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

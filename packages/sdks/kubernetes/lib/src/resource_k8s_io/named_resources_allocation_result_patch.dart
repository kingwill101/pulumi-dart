// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// NamedResourcesAllocationResult is used in AllocationResultModel.
class NamedResourcesAllocationResultPatch {
  /// Name is the name of the selected resource instance.
  final pulumi.Input<String>? name;

  /// Creates a new [NamedResourcesAllocationResultPatch].
  /// [name] Name is the name of the selected resource instance.
  NamedResourcesAllocationResultPatch({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name};
  }

  factory NamedResourcesAllocationResultPatch.fromMap(
    Map<String, dynamic> map,
  ) {
    return NamedResourcesAllocationResultPatch(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

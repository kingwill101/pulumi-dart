// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Adds and removes POSIX capabilities from running containers.
class CapabilitiesPatch {
  /// Added capabilities
  final pulumi.Input<List<String>>? add;

  /// Removed capabilities
  final pulumi.Input<List<String>>? drop;

  /// Creates a new [CapabilitiesPatch].
  /// [add] Added capabilities
  /// [drop] Removed capabilities
  CapabilitiesPatch({this.add, this.drop});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'add': ?add, 'drop': ?drop};
  }

  factory CapabilitiesPatch.fromMap(Map<String, dynamic> map) {
    return CapabilitiesPatch(
      add: (() {
        final guardedValue = map['add'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      drop: (() {
        final guardedValue = map['drop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

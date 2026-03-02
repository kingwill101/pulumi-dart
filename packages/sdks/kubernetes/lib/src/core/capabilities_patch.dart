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
  CapabilitiesPatch({
    this.add,
    this.drop,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'add': ?add,
      'drop': ?drop,
    };
  }

  factory CapabilitiesPatch.fromMap(Map<String, dynamic> map) {
    return CapabilitiesPatch(
      add: map['add'] == null ? null : ((map['add']! as List).cast<String>()).input(),
      drop: map['drop'] == null ? null : ((map['drop']! as List).cast<String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AllowedCSIDriver represents a single inline CSI Driver that is allowed to be used.
class AllowedCSIDriverPatch {
  /// Name is the registered name of the CSI driver
  final pulumi.Input<String>? name;

  /// Creates a new [AllowedCSIDriverPatch].
  /// [name] Name is the registered name of the CSI driver
  const AllowedCSIDriverPatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory AllowedCSIDriverPatch.fromMap(Map<String, dynamic> map) {
    return AllowedCSIDriverPatch(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


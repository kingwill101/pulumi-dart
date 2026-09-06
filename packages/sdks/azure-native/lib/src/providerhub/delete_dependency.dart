// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeleteDependency {
  /// Linked property.
  final pulumi.Input<String?>? linkedProperty;
  /// Linked type.
  final pulumi.Input<String?>? linkedType;
  /// Required features.
  final pulumi.Input<List<String>?>? requiredFeatures;

  /// Creates a new [DeleteDependency].
  /// [linkedProperty] Linked property.
  /// [linkedType] Linked type.
  /// [requiredFeatures] Required features.
  const DeleteDependency({
    this.linkedProperty,
    this.linkedType,
    this.requiredFeatures,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'linkedProperty': ?linkedProperty,
      'linkedType': ?linkedType,
      'requiredFeatures': ?requiredFeatures,
    };
  }

  factory DeleteDependency.fromMap(Map<String, dynamic> map) {
    return DeleteDependency(
      linkedProperty: (() { final guardedValue = map['linkedProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkedType: (() { final guardedValue = map['linkedType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      requiredFeatures: (() { final guardedValue = map['requiredFeatures']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

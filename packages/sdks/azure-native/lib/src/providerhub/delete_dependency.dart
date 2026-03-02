// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeleteDependency {
  /// Linked property.
  final pulumi.Input<String>? linkedProperty;
  /// Linked type.
  final pulumi.Input<String>? linkedType;
  /// Required features.
  final pulumi.Input<List<String>>? requiredFeatures;

  /// Creates a new [DeleteDependency].
  /// [linkedProperty] Linked property.
  /// [linkedType] Linked type.
  /// [requiredFeatures] Required features.
  DeleteDependency({
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
      linkedProperty: map['linkedProperty'] == null ? null : (map['linkedProperty'] as String).input(),
      linkedType: map['linkedType'] == null ? null : (map['linkedType'] as String).input(),
      requiredFeatures: map['requiredFeatures'] == null ? null : ((map['requiredFeatures'] as List).cast<String>()).input(),
    );
  }
}


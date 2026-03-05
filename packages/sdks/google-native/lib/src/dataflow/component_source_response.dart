// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of an interstitial value between transforms in an execution stage.
class ComponentSourceResponse {
  /// Dataflow service generated name for this source.
  final pulumi.Input<String> name;
  /// User name for the original user transform or collection with which this source is most closely associated.
  final pulumi.Input<String> originalTransformOrCollection;
  /// Human-readable name for this transform; may be user or system generated.
  final pulumi.Input<String> userName;

  /// Creates a new [ComponentSourceResponse].
  /// [name] Dataflow service generated name for this source.
  /// [originalTransformOrCollection] User name for the original user transform or collection with which this source is most closely associated.
  /// [userName] Human-readable name for this transform; may be user or system generated.
  ComponentSourceResponse({
    required this.name,
    required this.originalTransformOrCollection,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'originalTransformOrCollection': originalTransformOrCollection,
      'userName': userName,
    };
  }

  factory ComponentSourceResponse.fromMap(Map<String, dynamic> map) {
    return ComponentSourceResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      originalTransformOrCollection: pulumi.Input.fromValue(map['originalTransformOrCollection'] as String),
      userName: pulumi.Input.fromValue(map['userName'] as String),
    );
  }
}


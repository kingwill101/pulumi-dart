// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Description of an input or output of an execution stage.
class StageSource {
  /// Dataflow service generated name for this source.
  final pulumi.Input<String>? name;
  /// User name for the original user transform or collection with which this source is most closely associated.
  final pulumi.Input<String>? originalTransformOrCollection;
  /// Size of the source, if measurable.
  final pulumi.Input<String>? sizeBytes;
  /// Human-readable name for this source; may be user or system generated.
  final pulumi.Input<String>? userName;

  /// Creates a new [StageSource].
  /// [name] Dataflow service generated name for this source.
  /// [originalTransformOrCollection] User name for the original user transform or collection with which this source is most closely associated.
  /// [sizeBytes] Size of the source, if measurable.
  /// [userName] Human-readable name for this source; may be user or system generated.
  StageSource({
    this.name,
    this.originalTransformOrCollection,
    this.sizeBytes,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'originalTransformOrCollection': ?originalTransformOrCollection,
      'sizeBytes': ?sizeBytes,
      'userName': ?userName,
    };
  }

  factory StageSource.fromMap(Map<String, dynamic> map) {
    return StageSource(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      originalTransformOrCollection: map['originalTransformOrCollection'] == null ? null : (map['originalTransformOrCollection']! as String).input(),
      sizeBytes: map['sizeBytes'] == null ? null : (map['sizeBytes']! as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}


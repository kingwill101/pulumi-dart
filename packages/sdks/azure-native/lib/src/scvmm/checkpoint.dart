// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines the resource properties.
class Checkpoint {
  /// Gets ID of the checkpoint.
  final pulumi.Input<String>? checkpointID;
  /// Gets description of the checkpoint.
  final pulumi.Input<String>? description;
  /// Gets name of the checkpoint.
  final pulumi.Input<String>? name;
  /// Gets ID of parent of the checkpoint.
  final pulumi.Input<String>? parentCheckpointID;

  /// Creates a new [Checkpoint].
  /// [checkpointID] Gets ID of the checkpoint.
  /// [description] Gets description of the checkpoint.
  /// [name] Gets name of the checkpoint.
  /// [parentCheckpointID] Gets ID of parent of the checkpoint.
  const Checkpoint({
    this.checkpointID,
    this.description,
    this.name,
    this.parentCheckpointID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkpointID': ?checkpointID,
      'description': ?description,
      'name': ?name,
      'parentCheckpointID': ?parentCheckpointID,
    };
  }

  factory Checkpoint.fromMap(Map<String, dynamic> map) {
    return Checkpoint(
      checkpointID: (() { final guardedValue = map['checkpointID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentCheckpointID: (() { final guardedValue = map['parentCheckpointID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


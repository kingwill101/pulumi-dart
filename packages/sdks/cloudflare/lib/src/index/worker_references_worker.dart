// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class WorkerReferencesWorker {
  /// ID of the referencing Worker.
  final pulumi.Input<String?>? id;
  /// Name of the referencing Worker.
  final pulumi.Input<String?>? name;

  /// Creates a new [WorkerReferencesWorker].
  /// [id] ID of the referencing Worker.
  /// [name] Name of the referencing Worker.
  const WorkerReferencesWorker({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory WorkerReferencesWorker.fromMap(Map<String, dynamic> map) {
    return WorkerReferencesWorker(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

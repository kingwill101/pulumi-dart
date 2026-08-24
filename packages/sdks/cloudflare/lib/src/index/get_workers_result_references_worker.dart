// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetWorkersResultReferencesWorker {
  /// ID of the referencing Worker.
  final pulumi.Input<String> id;
  /// Name of the referencing Worker.
  final pulumi.Input<String> name;

  /// Creates a new [GetWorkersResultReferencesWorker].
  /// [id] ID of the referencing Worker.
  /// [name] Name of the referencing Worker.
  const GetWorkersResultReferencesWorker({
    required this.id,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
    };
  }

  factory GetWorkersResultReferencesWorker.fromMap(Map<String, dynamic> map) {
    return GetWorkersResultReferencesWorker(
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

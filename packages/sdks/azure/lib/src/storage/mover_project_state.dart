// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MoverProject resources.
class MoverProjectState {
  /// Specifies a description for this Storage Mover Project.
  final pulumi.Input<String?>? description;
  /// Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? storageMoverId;

  /// Creates a new [MoverProjectState].
  /// [description] Specifies a description for this Storage Mover Project.
  /// [name] Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created.
  const MoverProjectState({
    this.description,
    this.name,
    this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'storageMoverId': ?storageMoverId,
    };
  }

  factory MoverProjectState.fromMap(Map<String, dynamic> map) {
    return MoverProjectState(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMoverId: (() { final guardedValue = map['storageMoverId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

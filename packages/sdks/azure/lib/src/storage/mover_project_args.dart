// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_storage_mover_project_mover_project_args_doc}
/// The set of arguments for MoverProject.
/// {@endtemplate}
/// {@macro pulumi_storage_mover_project_mover_project_args_doc}
class MoverProjectArgs {
  /// Specifies a description for this Storage Mover Project.
  final pulumi.Input<String?>? description;
  /// Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created.
  final pulumi.Input<String> storageMoverId;

  /// Creates a new [MoverProjectArgs].
  /// [description] Specifies a description for this Storage Mover Project.
  /// [name] Specifies the name which should be used for this Storage Mover Project. Changing this forces a new resource to be created.
  /// [storageMoverId] Specifies the ID of the storage mover for this Storage Mover Project. Changing this forces a new resource to be created.
  const MoverProjectArgs({
    this.description,
    this.name,
    required this.storageMoverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'storageMoverId': storageMoverId,
    };
  }

  factory MoverProjectArgs.fromMap(Map<String, dynamic> map) {
    return MoverProjectArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageMoverId: pulumi.Input.fromValue(map['storageMoverId'] as String),
    );
  }
}

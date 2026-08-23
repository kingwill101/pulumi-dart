// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_storage_box_type_get_storage_box_type_args_doc}
/// Arguments for getStorageBoxType.
/// {@endtemplate}
/// {@macro pulumi_index_get_storage_box_type_get_storage_box_type_args_doc}
class GetStorageBoxTypeArgs {
  /// ID of the Storage Box Type.
  final pulumi.Input<int>? id;
  /// Name of the Storage Box Type.
  final pulumi.Input<String>? name;

  /// Creates a new [GetStorageBoxTypeArgs].
  /// [id] ID of the Storage Box Type.
  /// [name] Name of the Storage Box Type.
  const GetStorageBoxTypeArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetStorageBoxTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypeArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

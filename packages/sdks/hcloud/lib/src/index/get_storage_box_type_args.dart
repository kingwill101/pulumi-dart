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
  GetStorageBoxTypeArgs({
    pulumi.Output<int>? id,
    pulumi.Output<String>? name,
  }) :
      id = pulumi.Input.asOptionalInput<int>(id),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetStorageBoxTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageBoxTypeArgs(
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


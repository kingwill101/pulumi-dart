// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_server_type_get_server_type_args_doc}
/// Arguments for getServerType.
/// {@endtemplate}
/// {@macro pulumi_index_get_server_type_get_server_type_args_doc}
class GetServerTypeArgs {
  /// ID of the Server Type.
  final pulumi.Input<int>? id;
  /// Name of the Server Type.
  final pulumi.Input<String>? name;

  /// Creates a new [GetServerTypeArgs].
  /// [id] ID of the Server Type.
  /// [name] Name of the Server Type.
  const GetServerTypeArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetServerTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTypeArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

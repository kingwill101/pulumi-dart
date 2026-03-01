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
  GetServerTypeArgs({
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

  factory GetServerTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetServerTypeArgs(
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


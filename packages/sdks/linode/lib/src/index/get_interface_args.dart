// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_interface_get_interface_args_doc}
/// Arguments for getInterface.
/// {@endtemplate}
/// {@macro pulumi_index_get_interface_get_interface_args_doc}
class GetInterfaceArgs {
  final pulumi.Input<String> id;
  final pulumi.Input<int> linodeId;

  /// Creates a new [GetInterfaceArgs].
  /// [id] Required.
  /// [linodeId] Required.
  GetInterfaceArgs({required this.id, required this.linodeId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'linodeId': linodeId};
  }

  factory GetInterfaceArgs.fromMap(Map<String, dynamic> map) {
    return GetInterfaceArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      linodeId: pulumi.Input.fromValue(map['linodeId'] as int),
    );
  }
}

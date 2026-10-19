// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_microvm_get_microvm_args_doc}
/// Arguments for getMicrovm.
/// {@endtemplate}
/// {@macro pulumi_index_get_microvm_get_microvm_args_doc}
class GetMicrovmArgs {
  /// The ID of the MicroVM.
  final pulumi.Input<String?>? id;
  /// The name of the MicroVM.
  final pulumi.Input<String?>? name;

  /// Creates a new [GetMicrovmArgs].
  /// [id] The ID of the MicroVM.
  /// [name] The name of the MicroVM.
  const GetMicrovmArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetMicrovmArgs.fromMap(Map<String, dynamic> map) {
    return GetMicrovmArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

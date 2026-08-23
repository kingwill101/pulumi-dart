// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_datacenter_get_datacenter_args_doc}
/// Arguments for getDatacenter.
/// {@endtemplate}
/// {@macro pulumi_index_get_datacenter_get_datacenter_args_doc}
class GetDatacenterArgs {
  /// ID of the Datacenter.
  final pulumi.Input<int>? id;
  /// Name of the Datacenter.
  final pulumi.Input<String>? name;

  /// Creates a new [GetDatacenterArgs].
  /// [id] ID of the Datacenter.
  /// [name] Name of the Datacenter.
  const GetDatacenterArgs({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory GetDatacenterArgs.fromMap(Map<String, dynamic> map) {
    return GetDatacenterArgs(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

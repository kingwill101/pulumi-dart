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
  GetDatacenterArgs({
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

  factory GetDatacenterArgs.fromMap(Map<String, dynamic> map) {
    return GetDatacenterArgs(
      id: map['id'] == null ? null : pulumi.Output.create<int>(map['id'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


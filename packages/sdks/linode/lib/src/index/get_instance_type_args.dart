// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_instance_type_get_instance_type_args_doc}
/// Arguments for getInstanceType.
/// {@endtemplate}
/// {@macro pulumi_index_get_instance_type_get_instance_type_args_doc}
class GetInstanceTypeArgs {
  /// Label used to identify instance type
  final pulumi.Input<String> id;
  /// The Linode Type's label is for display purposes only
  final pulumi.Input<String>? label;

  /// Creates a new [GetInstanceTypeArgs].
  /// [id] Label used to identify instance type
  /// [label] The Linode Type's label is for display purposes only
  GetInstanceTypeArgs({
    required pulumi.Output<String> id,
    pulumi.Output<String>? label,
  }) :
      id = pulumi.Input.asInput<String>(id),
      label = pulumi.Input.asOptionalInput<String>(label);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'label': ?label,
    };
  }

  factory GetInstanceTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeArgs(
      id: pulumi.Output.create<String>(map['id'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
    );
  }
}


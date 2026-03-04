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
  GetInstanceTypeArgs({required this.id, this.label});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'label': ?label};
  }

  factory GetInstanceTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetInstanceTypeArgs(
      id: pulumi.Input.fromValue(map['id'] as String),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

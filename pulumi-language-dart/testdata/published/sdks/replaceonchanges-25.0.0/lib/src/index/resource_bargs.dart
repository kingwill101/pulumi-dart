// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_resource_bargs_doc}
/// The set of arguments for ResourceB.
/// {@endtemplate}
/// {@macro pulumi_index_resource_bargs_doc}
class ResourceBArgs {
  final pulumi.Input<bool> value;

  /// Creates a new [ResourceBArgs].
  /// [value] Required.
  const ResourceBArgs({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': value,
    };
  }

  factory ResourceBArgs.fromMap(Map<String, dynamic> map) {
    return ResourceBArgs(
      value: pulumi.Input.fromValue(map['value'] as bool),
    );
  }
}

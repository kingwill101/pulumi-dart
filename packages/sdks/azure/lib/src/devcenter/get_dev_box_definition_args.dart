// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_dev_box_definition_get_dev_box_definition_args_doc}
/// Arguments for getDevBoxDefinition.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_dev_box_definition_get_dev_box_definition_args_doc}
class GetDevBoxDefinitionArgs {
  /// The ID of the associated Dev Center.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Dev Box Definition.
  final pulumi.Input<String> name;

  /// Creates a new [GetDevBoxDefinitionArgs].
  /// [devCenterId] The ID of the associated Dev Center.
  /// [name] The name of this Dev Center Dev Box Definition.
  GetDevBoxDefinitionArgs({
    required pulumi.Output<String> devCenterId,
    required pulumi.Output<String> name,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetDevBoxDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return GetDevBoxDefinitionArgs(
      devCenterId: pulumi.Output.create<String>(map['devCenterId'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


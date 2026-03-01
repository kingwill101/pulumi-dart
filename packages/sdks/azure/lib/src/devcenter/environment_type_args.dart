// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_environment_type_environment_type_args_doc}
/// The set of arguments for EnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_environment_type_environment_type_args_doc}
class EnvironmentTypeArgs {
  /// The ID of the associated Dev Center. Changing this forces a new resource to be created.
  final pulumi.Input<String> devCenterId;
  /// Specifies the name of this Dev Center Environment Type. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// A mapping of tags which should be assigned to the Dev Center Environment Type.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [EnvironmentTypeArgs].
  /// [devCenterId] The ID of the associated Dev Center. Changing this forces a new resource to be created.
  /// [name] Specifies the name of this Dev Center Environment Type. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags which should be assigned to the Dev Center Environment Type.
  EnvironmentTypeArgs({
    required pulumi.Output<String> devCenterId,
    pulumi.Output<String>? name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      devCenterId = pulumi.Input.asInput<String>(devCenterId),
      name = pulumi.Input.asOptionalInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': ?name,
      'tags': ?tags,
    };
  }

  factory EnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentTypeArgs(
      devCenterId: pulumi.Output.create<String>(map['devCenterId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}


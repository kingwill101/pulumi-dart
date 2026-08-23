// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_devcenter_get_environment_type_get_environment_type_args_doc}
/// Arguments for getEnvironmentType.
/// {@endtemplate}
/// {@macro pulumi_devcenter_get_environment_type_get_environment_type_args_doc}
class GetEnvironmentTypeArgs {
  /// The ID of the associated Dev Center.
  final pulumi.Input<String> devCenterId;
  /// The name of this Dev Center Environment Type.
  final pulumi.Input<String> name;

  /// Creates a new [GetEnvironmentTypeArgs].
  /// [devCenterId] The ID of the associated Dev Center.
  /// [name] The name of this Dev Center Environment Type.
  const GetEnvironmentTypeArgs({
    required this.devCenterId,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'devCenterId': devCenterId,
      'name': name,
    };
  }

  factory GetEnvironmentTypeArgs.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentTypeArgs(
      devCenterId: pulumi.Input.fromValue(map['devCenterId'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

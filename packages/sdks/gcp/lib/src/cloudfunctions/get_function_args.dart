// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_get_function_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_get_function_get_function_args_doc}
class GetFunctionArgs {
  /// The name of a Cloud Function.
  ///
  /// - - -
  final pulumi.Input<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The region in which the resource belongs. If it
  /// is not provided, the provider region is used.
  final pulumi.Input<String>? region;

  /// Creates a new [GetFunctionArgs].
  /// [name] The name of a Cloud Function.
  /// [project] The project in which the resource belongs. If it
  /// [region] The region in which the resource belongs. If it
  GetFunctionArgs({
    required pulumi.Output<String> name,
    pulumi.Output<String>? project,
    pulumi.Output<String>? region,
  }) :
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'project': ?project,
      'region': ?region,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}


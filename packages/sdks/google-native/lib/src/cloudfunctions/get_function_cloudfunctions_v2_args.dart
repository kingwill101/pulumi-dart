// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v2_get_function_cloudfunctions_v2_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2_get_function_cloudfunctions_v2_args_doc}
class GetFunctionCloudfunctionsV2Args {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionCloudfunctionsV2Args].
  /// [functionId] Required.
  /// [location] Required.
  /// [project] Optional.
  GetFunctionCloudfunctionsV2Args({
    required pulumi.Output<String> functionId,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      functionId = pulumi.Input.asInput<String>(functionId),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionId': functionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFunctionCloudfunctionsV2Args.fromMap(Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsV2Args(
      functionId: pulumi.Output.create<String>(map['functionId'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


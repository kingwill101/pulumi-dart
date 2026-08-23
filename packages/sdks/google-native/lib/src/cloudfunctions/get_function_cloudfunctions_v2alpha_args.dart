// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v2alpha_get_function_cloudfunctions_v2alpha_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v2alpha_get_function_cloudfunctions_v2alpha_args_doc}
class GetFunctionCloudfunctionsV2alphaArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;

  /// Creates a new [GetFunctionCloudfunctionsV2alphaArgs].
  /// [functionId] Required.
  /// [location] Required.
  /// [project] Optional.
  const GetFunctionCloudfunctionsV2alphaArgs({
    required this.functionId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionId': functionId,
      'location': location,
      'project': ?project,
    };
  }

  factory GetFunctionCloudfunctionsV2alphaArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionCloudfunctionsV2alphaArgs(
      functionId: pulumi.Input.fromValue(map['functionId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

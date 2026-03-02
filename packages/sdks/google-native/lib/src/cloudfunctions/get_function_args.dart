// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudfunctions_v1_get_function_args_doc}
/// Arguments for getFunction.
/// {@endtemplate}
/// {@macro pulumi_cloudfunctions_v1_get_function_args_doc}
class GetFunctionArgs {
  final pulumi.Input<String> functionId;
  final pulumi.Input<String> location;
  final pulumi.Input<String>? project;
  final pulumi.Input<String>? versionId;

  /// Creates a new [GetFunctionArgs].
  /// [functionId] Required.
  /// [location] Required.
  /// [project] Optional.
  /// [versionId] Optional.
  GetFunctionArgs({
    required this.functionId,
    required this.location,
    this.project,
    this.versionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'functionId': functionId,
      'location': location,
      'project': ?project,
      'versionId': ?versionId,
    };
  }

  factory GetFunctionArgs.fromMap(Map<String, dynamic> map) {
    return GetFunctionArgs(
      functionId: (map['functionId'] as String).input(),
      location: (map['location'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      versionId: map['versionId'] == null ? null : (map['versionId'] as String).input(),
    );
  }
}


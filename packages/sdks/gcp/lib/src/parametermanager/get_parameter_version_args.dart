// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_parameter_version_get_parameter_version_args_doc}
/// Arguments for getParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_parameter_version_get_parameter_version_args_doc}
class GetParameterVersionArgs {
  /// The parameter for obtaining the Parameter Version.
  /// This can be either the reference of the parameter as in `projects/{{project}}/locations/global/parameters/{{parameter_id}}` or only the name of the parameter as in `{{parameter_id}}`.
  final pulumi.Input<String> parameter;
  /// The version of the parameter to get.
  final pulumi.Input<String> parameterVersionId;
  /// The project for retrieving the Parameter Version. If it's not specified,
  /// the provider project will be used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetParameterVersionArgs].
  /// [parameter] The parameter for obtaining the Parameter Version.
  /// [parameterVersionId] The version of the parameter to get.
  /// [project] The project for retrieving the Parameter Version. If it's not specified,
  GetParameterVersionArgs({
    required this.parameter,
    required this.parameterVersionId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parameter': parameter,
      'parameterVersionId': parameterVersionId,
      'project': ?project,
    };
  }

  factory GetParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetParameterVersionArgs(
      parameter: (map['parameter'] as String).input(),
      parameterVersionId: (map['parameterVersionId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


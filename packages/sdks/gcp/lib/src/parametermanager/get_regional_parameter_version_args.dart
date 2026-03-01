// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_regional_parameter_version_get_regional_parameter_version_args_doc}
/// Arguments for getRegionalParameterVersion.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_regional_parameter_version_get_regional_parameter_version_args_doc}
class GetRegionalParameterVersionArgs {
  /// The location of regional parameter.
  final pulumi.Input<String>? location;
  /// The parameter for obtaining the Regional Parameter Version.
  /// This can be either the reference of the regional parameter as in `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}` or only the name of the regional parameter as in `{{parameter_id}}`.
  final pulumi.Input<String> parameter;
  /// The version of the regional parameter to get.
  final pulumi.Input<String> parameterVersionId;
  /// The project for retrieving the Regional Parameter Version. If it's not specified,
  /// the provider project will be used.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRegionalParameterVersionArgs].
  /// [location] The location of regional parameter.
  /// [parameter] The parameter for obtaining the Regional Parameter Version.
  /// [parameterVersionId] The version of the regional parameter to get.
  /// [project] The project for retrieving the Regional Parameter Version. If it's not specified,
  GetRegionalParameterVersionArgs({
    pulumi.Output<String>? location,
    required pulumi.Output<String> parameter,
    required pulumi.Output<String> parameterVersionId,
    pulumi.Output<String>? project,
  }) :
      location = pulumi.Input.asOptionalInput<String>(location),
      parameter = pulumi.Input.asInput<String>(parameter),
      parameterVersionId = pulumi.Input.asInput<String>(parameterVersionId),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': ?location,
      'parameter': parameter,
      'parameterVersionId': parameterVersionId,
      'project': ?project,
    };
  }

  factory GetRegionalParameterVersionArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterVersionArgs(
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      parameter: pulumi.Output.create<String>(map['parameter'] as String),
      parameterVersionId: pulumi.Output.create<String>(map['parameterVersionId'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


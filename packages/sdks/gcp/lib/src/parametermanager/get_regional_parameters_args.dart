// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_regional_parameters_get_regional_parameters_args_doc}
/// Arguments for getRegionalParameters.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_regional_parameters_get_regional_parameters_args_doc}
class GetRegionalParametersArgs {
  /// Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all regional parameters are listed.
  final pulumi.Input<String>? filter;
  /// The location of regional parameter.
  final pulumi.Input<String> location;
  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRegionalParametersArgs].
  /// [filter] Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all regional parameters are listed.
  /// [location] The location of regional parameter.
  /// [project] The ID of the project.
  GetRegionalParametersArgs({
    pulumi.Output<String>? filter,
    required pulumi.Output<String> location,
    pulumi.Output<String>? project,
  }) :
      filter = pulumi.Input.asOptionalInput<String>(filter),
      location = pulumi.Input.asInput<String>(location),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'location': location,
      'project': ?project,
    };
  }

  factory GetRegionalParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersArgs(
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      location: pulumi.Output.create<String>(map['location'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
    );
  }
}


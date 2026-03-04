// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_parameters_get_parameters_args_doc}
/// Arguments for getParameters.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_parameters_get_parameters_args_doc}
class GetParametersArgs {
  /// Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all parameters are listed.
  final pulumi.Input<String>? filter;

  /// The ID of the project.
  final pulumi.Input<String>? project;

  /// Creates a new [GetParametersArgs].
  /// [filter] Filter string, adhering to the rules in List-operation filtering. List only parameters matching the filter. If filter is empty, all parameters are listed.
  /// [project] The ID of the project.
  GetParametersArgs({this.filter, this.project});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'filter': ?filter, 'project': ?project};
  }

  factory GetParametersArgs.fromMap(Map<String, dynamic> map) {
    return GetParametersArgs(
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      project: (() {
        final guardedValue = map['project'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

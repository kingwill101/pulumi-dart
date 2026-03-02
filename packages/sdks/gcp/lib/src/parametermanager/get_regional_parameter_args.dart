// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_parametermanager_get_regional_parameter_get_regional_parameter_args_doc}
/// Arguments for getRegionalParameter.
/// {@endtemplate}
/// {@macro pulumi_parametermanager_get_regional_parameter_get_regional_parameter_args_doc}
class GetRegionalParameterArgs {
  /// The location of the regional parameter. eg us-central1
  final pulumi.Input<String> location;
  /// The name of the regional parameter.
  final pulumi.Input<String> parameterId;
  /// The ID of the project in which the resource belongs.
  final pulumi.Input<String>? project;

  /// Creates a new [GetRegionalParameterArgs].
  /// [location] The location of the regional parameter. eg us-central1
  /// [parameterId] The name of the regional parameter.
  /// [project] The ID of the project in which the resource belongs.
  GetRegionalParameterArgs({
    required this.location,
    required this.parameterId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'parameterId': parameterId,
      'project': ?project,
    };
  }

  factory GetRegionalParameterArgs.fromMap(Map<String, dynamic> map) {
    return GetRegionalParameterArgs(
      location: (map['location'] as String).input(),
      parameterId: (map['parameterId'] as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}


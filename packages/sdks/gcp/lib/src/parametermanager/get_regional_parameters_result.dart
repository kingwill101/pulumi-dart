// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameters_parameter.dart';

/// Result data returned by getRegionalParameters.
class GetRegionalParametersResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  /// A list of regional parameters matching the filter. Structure is defined below.
  final List<GetRegionalParametersParameter> parameters;
  /// The ID of the project in which the resource belongs.
  final String project;

  /// Creates a new [GetRegionalParametersResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Required.
  /// [parameters] A list of regional parameters matching the filter. Structure is defined below.
  /// [project] The ID of the project in which the resource belongs.
  const GetRegionalParametersResult({
    this.filter,
    required this.id,
    required this.location,
    required this.parameters,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': id,
      'location': location,
      'parameters': pulumi.Input.encodeList<GetRegionalParametersParameter, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'project': project,
    };
  }

  factory GetRegionalParametersResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      location: map['location'] as String,
      parameters: pulumi.Input.decodeList<GetRegionalParametersParameter>(map['parameters']!, (value) => GetRegionalParametersParameter.fromMap((value as Map).cast<String, dynamic>())),
      project: map['project'] as String,
    );
  }
}


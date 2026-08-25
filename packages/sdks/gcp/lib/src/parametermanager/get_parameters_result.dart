// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_parameters_parameter.dart';

/// Result data returned by getParameters.
class GetParametersResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// A list of parameters matching the filter. Structure is defined below.
  final List<GetParametersParameter>? parameters;
  /// The ID of the project in which the resource belongs.
  final String? project;

  /// Creates a new [GetParametersResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parameters] A list of parameters matching the filter. Structure is defined below.
  /// [project] The ID of the project in which the resource belongs.
  const GetParametersResult({
    this.filter,
    this.id,
    this.parameters,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetParametersParameter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
    };
  }

  factory GetParametersResult.fromMap(Map<String, dynamic> map) {
    return GetParametersResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetParametersParameter>(guardedValue, (value) => GetParametersParameter.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

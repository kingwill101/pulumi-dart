// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_regional_parameters_parameter.dart';

/// Result data returned by getRegionalParameters.
class GetRegionalParametersResult {
  final String? filter;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? location;
  /// A list of regional parameters matching the filter. Structure is defined below.
  final List<GetRegionalParametersParameter>? parameters;
  /// The ID of the project in which the resource belongs.
  final String? project;

  /// Creates a new [GetRegionalParametersResult].
  /// [filter] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [location] Optional.
  /// [parameters] A list of regional parameters matching the filter. Structure is defined below.
  /// [project] The ID of the project in which the resource belongs.
  const GetRegionalParametersResult({
    this.filter,
    this.id,
    this.location,
    this.parameters,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filter': ?filter,
      'id': ?id,
      'location': ?location,
      'parameters': ?(() { final guardedValue = parameters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetRegionalParametersParameter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'project': ?project,
    };
  }

  factory GetRegionalParametersResult.fromMap(Map<String, dynamic> map) {
    return GetRegionalParametersResult(
      filter: (() { final guardedValue = map['filter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetRegionalParametersParameter>(guardedValue, (value) => GetRegionalParametersParameter.fromMap((value as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

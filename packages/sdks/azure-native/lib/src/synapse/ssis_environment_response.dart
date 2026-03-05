// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssis_variable_response.dart';

/// Ssis environment.
class SsisEnvironmentResponse {
  /// Metadata description.
  final pulumi.Input<String>? description;
  /// Folder id which contains environment.
  final pulumi.Input<double>? folderId;
  /// Metadata id.
  final pulumi.Input<double>? id;
  /// Metadata name.
  final pulumi.Input<String>? name;
  /// The type of SSIS object metadata.
  /// Expected value is 'Environment'.
  final pulumi.Input<String> type;
  /// Variable in environment
  final pulumi.Input<List<SsisVariableResponse>>? variables;

  /// Creates a new [SsisEnvironmentResponse].
  /// [description] Metadata description.
  /// [folderId] Folder id which contains environment.
  /// [id] Metadata id.
  /// [name] Metadata name.
  /// [type] The type of SSIS object metadata.
  /// [variables] Variable in environment
  SsisEnvironmentResponse({
    this.description,
    this.folderId,
    this.id,
    this.name,
    required this.type,
    this.variables,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'folderId': ?folderId,
      'id': ?id,
      'name': ?name,
      'type': type,
      'variables': ?pulumi.Input.mapOptionalInputValue<List<SsisVariableResponse>, List<Map<String, dynamic>>>(variables, (value) => pulumi.Input.encodeList<SsisVariableResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory SsisEnvironmentResponse.fromMap(Map<String, dynamic> map) {
    return SsisEnvironmentResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folderId: (() { final guardedValue = map['folderId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      variables: (() { final guardedValue = map['variables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<SsisVariableResponse>(guardedValue, (value) => SsisVariableResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


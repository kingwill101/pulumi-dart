// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_version_snapshot_tool_client_function_parameter.dart';
import 'app_version_snapshot_tool_client_function_response.dart';

class AppVersionSnapshotToolClientFunction {
  /// The description of the app version.
  final pulumi.Input<String>? description;
  /// (Output)
  /// Identifier. The unique identifier of the toolset.
  /// Format:
  /// `projects/{project}/locations/{location}/apps/{app}/toolsets/{toolset}`
  final pulumi.Input<String>? name;
  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolClientFunctionParameter>>? parameters;
  /// (Output)
  /// Represents a select subset of an OpenAPI 3.0 schema object.
  /// Structure is documented below.
  final pulumi.Input<List<AppVersionSnapshotToolClientFunctionResponse>>? responses;

  /// Creates a new [AppVersionSnapshotToolClientFunction].
  /// [description] The description of the app version.
  /// [name] (Output)
  /// [parameters] (Output)
  /// [responses] (Output)
  AppVersionSnapshotToolClientFunction({
    this.description,
    this.name,
    this.parameters,
    this.responses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolClientFunctionParameter>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolClientFunctionParameter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'responses': ?pulumi.Input.mapOptionalInputValue<List<AppVersionSnapshotToolClientFunctionResponse>, List<Map<String, dynamic>>>(responses, (value) => pulumi.Input.encodeList<AppVersionSnapshotToolClientFunctionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AppVersionSnapshotToolClientFunction.fromMap(Map<String, dynamic> map) {
    return AppVersionSnapshotToolClientFunction(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolClientFunctionParameter>(map['parameters'], (value) => AppVersionSnapshotToolClientFunctionParameter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      responses: map['responses'] == null ? null : (pulumi.Input.decodeList<AppVersionSnapshotToolClientFunctionResponse>(map['responses'], (value) => AppVersionSnapshotToolClientFunctionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


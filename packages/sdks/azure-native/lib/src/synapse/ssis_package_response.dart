// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ssis_parameter_response.dart';

/// Ssis Package.
class SsisPackageResponse {
  /// Metadata description.
  final pulumi.Input<String>? description;

  /// Folder id which contains package.
  final pulumi.Input<double>? folderId;

  /// Metadata id.
  final pulumi.Input<double>? id;

  /// Metadata name.
  final pulumi.Input<String>? name;

  /// Parameters in package
  final pulumi.Input<List<SsisParameterResponse>>? parameters;

  /// Project id which contains package.
  final pulumi.Input<double>? projectId;

  /// Project version which contains package.
  final pulumi.Input<double>? projectVersion;

  /// The type of SSIS object metadata.
  /// Expected value is 'Package'.
  final pulumi.Input<String> type;

  /// Creates a new [SsisPackageResponse].
  /// [description] Metadata description.
  /// [folderId] Folder id which contains package.
  /// [id] Metadata id.
  /// [name] Metadata name.
  /// [parameters] Parameters in package
  /// [projectId] Project id which contains package.
  /// [projectVersion] Project version which contains package.
  /// [type] The type of SSIS object metadata.
  SsisPackageResponse({
    this.description,
    this.folderId,
    this.id,
    this.name,
    this.parameters,
    this.projectId,
    this.projectVersion,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'folderId': ?folderId,
      'id': ?id,
      'name': ?name,
      'parameters':
          ?pulumi.Input.mapOptionalInputValue<
            List<SsisParameterResponse>,
            List<Map<String, dynamic>>
          >(
            parameters,
            (value) =>
                pulumi.Input.encodeList<
                  SsisParameterResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'projectId': ?projectId,
      'projectVersion': ?projectVersion,
      'type': type,
    };
  }

  factory SsisPackageResponse.fromMap(Map<String, dynamic> map) {
    return SsisPackageResponse(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      folderId: (() {
        final guardedValue = map['folderId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      id: (() {
        final guardedValue = map['id'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: (() {
        final guardedValue = map['parameters'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SsisParameterResponse>(
            guardedValue,
            (value) => SsisParameterResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      projectId: (() {
        final guardedValue = map['projectId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      projectVersion: (() {
        final guardedValue = map['projectVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

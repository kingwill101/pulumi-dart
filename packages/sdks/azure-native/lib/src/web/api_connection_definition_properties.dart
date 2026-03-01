// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_connection_test_link.dart';
import 'api_reference.dart';
import 'connection_status_definition.dart';

class ApiConnectionDefinitionProperties {
  final ApiReference? api;
  /// Timestamp of last connection change
  final String? changedTime;
  /// Timestamp of the connection creation
  final String? createdTime;
  /// Dictionary of custom parameter values
  final Map<String, String>? customParameterValues;
  /// Display name
  final String? displayName;
  /// Dictionary of nonsecret parameter values
  final Map<String, String>? nonSecretParameterValues;
  /// Dictionary of parameter values
  final Map<String, String>? parameterValues;
  /// Status of the connection
  final List<ConnectionStatusDefinition>? statuses;
  /// Links to test the API connection
  final List<ApiConnectionTestLink>? testLinks;

  /// Creates a new [ApiConnectionDefinitionProperties].
  /// [api] Optional.
  /// [changedTime] Timestamp of last connection change
  /// [createdTime] Timestamp of the connection creation
  /// [customParameterValues] Dictionary of custom parameter values
  /// [displayName] Display name
  /// [nonSecretParameterValues] Dictionary of nonsecret parameter values
  /// [parameterValues] Dictionary of parameter values
  /// [statuses] Status of the connection
  /// [testLinks] Links to test the API connection
  ApiConnectionDefinitionProperties({
    this.api,
    this.changedTime,
    this.createdTime,
    this.customParameterValues,
    this.displayName,
    this.nonSecretParameterValues,
    this.parameterValues,
    this.statuses,
    this.testLinks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'api': ?api == null ? null : api!.toMap(),
      'changedTime': ?changedTime,
      'createdTime': ?createdTime,
      'customParameterValues': ?customParameterValues,
      'displayName': ?displayName,
      'nonSecretParameterValues': ?nonSecretParameterValues,
      'parameterValues': ?parameterValues,
      'statuses': ?statuses == null ? null : pulumi.Input.encodeList<ConnectionStatusDefinition, Map<String, dynamic>>(statuses!, (value) => value.toMap()),
      'testLinks': ?testLinks == null ? null : pulumi.Input.encodeList<ApiConnectionTestLink, Map<String, dynamic>>(testLinks!, (value) => value.toMap()),
    };
  }

  factory ApiConnectionDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return ApiConnectionDefinitionProperties(
      api: map['api'] == null ? null : ApiReference.fromMap((map['api'] as Map).cast<String, dynamic>()),
      changedTime: map['changedTime'] == null ? null : map['changedTime'] as String,
      createdTime: map['createdTime'] == null ? null : map['createdTime'] as String,
      customParameterValues: map['customParameterValues'] == null ? null : (map['customParameterValues'] as Map).cast<String, String>(),
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      nonSecretParameterValues: map['nonSecretParameterValues'] == null ? null : (map['nonSecretParameterValues'] as Map).cast<String, String>(),
      parameterValues: map['parameterValues'] == null ? null : (map['parameterValues'] as Map).cast<String, String>(),
      statuses: map['statuses'] == null ? null : pulumi.Input.decodeList<ConnectionStatusDefinition>(map['statuses'], (value) => ConnectionStatusDefinition.fromMap((value as Map).cast<String, dynamic>())),
      testLinks: map['testLinks'] == null ? null : pulumi.Input.decodeList<ApiConnectionTestLink>(map['testLinks'], (value) => ApiConnectionTestLink.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}


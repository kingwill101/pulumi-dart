// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_connection_test_link.dart';
import 'api_reference.dart';
import 'connection_status_definition.dart';

class ApiConnectionDefinitionProperties {
  final pulumi.Input<ApiReference>? api;
  /// Timestamp of last connection change
  final pulumi.Input<String>? changedTime;
  /// Timestamp of the connection creation
  final pulumi.Input<String>? createdTime;
  /// Dictionary of custom parameter values
  final pulumi.Input<Map<String, String>>? customParameterValues;
  /// Display name
  final pulumi.Input<String>? displayName;
  /// Dictionary of nonsecret parameter values
  final pulumi.Input<Map<String, String>>? nonSecretParameterValues;
  /// Dictionary of parameter values
  final pulumi.Input<Map<String, String>>? parameterValues;
  /// Status of the connection
  final pulumi.Input<List<ConnectionStatusDefinition>>? statuses;
  /// Links to test the API connection
  final pulumi.Input<List<ApiConnectionTestLink>>? testLinks;

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
  const ApiConnectionDefinitionProperties({
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
      'api': ?pulumi.Input.mapOptionalInputValue<ApiReference, Map<String, dynamic>>(api, (value) => value.toMap()),
      'changedTime': ?changedTime,
      'createdTime': ?createdTime,
      'customParameterValues': ?customParameterValues,
      'displayName': ?displayName,
      'nonSecretParameterValues': ?nonSecretParameterValues,
      'parameterValues': ?parameterValues,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ConnectionStatusDefinition>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ConnectionStatusDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testLinks': ?pulumi.Input.mapOptionalInputValue<List<ApiConnectionTestLink>, List<Map<String, dynamic>>>(testLinks, (value) => pulumi.Input.encodeList<ApiConnectionTestLink, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiConnectionDefinitionProperties.fromMap(Map<String, dynamic> map) {
    return ApiConnectionDefinitionProperties(
      api: (() { final guardedValue = map['api']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      changedTime: (() { final guardedValue = map['changedTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createdTime: (() { final guardedValue = map['createdTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customParameterValues: (() { final guardedValue = map['customParameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonSecretParameterValues: (() { final guardedValue = map['nonSecretParameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      parameterValues: (() { final guardedValue = map['parameterValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      statuses: (() { final guardedValue = map['statuses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ConnectionStatusDefinition>(guardedValue, (value) => ConnectionStatusDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      testLinks: (() { final guardedValue = map['testLinks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ApiConnectionTestLink>(guardedValue, (value) => ApiConnectionTestLink.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

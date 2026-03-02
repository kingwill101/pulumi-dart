// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_connection_test_link_response.dart';
import 'api_reference_response.dart';
import 'connection_status_definition_response.dart';

class ApiConnectionDefinitionResponseProperties {
  final pulumi.Input<ApiReferenceResponse>? api;
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
  final pulumi.Input<List<ConnectionStatusDefinitionResponse>>? statuses;
  /// Links to test the API connection
  final pulumi.Input<List<ApiConnectionTestLinkResponse>>? testLinks;

  /// Creates a new [ApiConnectionDefinitionResponseProperties].
  /// [api] Optional.
  /// [changedTime] Timestamp of last connection change
  /// [createdTime] Timestamp of the connection creation
  /// [customParameterValues] Dictionary of custom parameter values
  /// [displayName] Display name
  /// [nonSecretParameterValues] Dictionary of nonsecret parameter values
  /// [parameterValues] Dictionary of parameter values
  /// [statuses] Status of the connection
  /// [testLinks] Links to test the API connection
  ApiConnectionDefinitionResponseProperties({
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
      'api': ?pulumi.Input.mapOptionalInputValue<ApiReferenceResponse, Map<String, dynamic>>(api, (value) => value.toMap()),
      'changedTime': ?changedTime,
      'createdTime': ?createdTime,
      'customParameterValues': ?customParameterValues,
      'displayName': ?displayName,
      'nonSecretParameterValues': ?nonSecretParameterValues,
      'parameterValues': ?parameterValues,
      'statuses': ?pulumi.Input.mapOptionalInputValue<List<ConnectionStatusDefinitionResponse>, List<Map<String, dynamic>>>(statuses, (value) => pulumi.Input.encodeList<ConnectionStatusDefinitionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'testLinks': ?pulumi.Input.mapOptionalInputValue<List<ApiConnectionTestLinkResponse>, List<Map<String, dynamic>>>(testLinks, (value) => pulumi.Input.encodeList<ApiConnectionTestLinkResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApiConnectionDefinitionResponseProperties.fromMap(Map<String, dynamic> map) {
    return ApiConnectionDefinitionResponseProperties(
      api: map['api'] == null ? null : (ApiReferenceResponse.fromMap((map['api']! as Map).cast<String, dynamic>())).input(),
      changedTime: map['changedTime'] == null ? null : (map['changedTime']! as String).input(),
      createdTime: map['createdTime'] == null ? null : (map['createdTime']! as String).input(),
      customParameterValues: map['customParameterValues'] == null ? null : ((map['customParameterValues']! as Map).cast<String, String>()).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      nonSecretParameterValues: map['nonSecretParameterValues'] == null ? null : ((map['nonSecretParameterValues']! as Map).cast<String, String>()).input(),
      parameterValues: map['parameterValues'] == null ? null : ((map['parameterValues']! as Map).cast<String, String>()).input(),
      statuses: map['statuses'] == null ? null : (pulumi.Input.decodeList<ConnectionStatusDefinitionResponse>(map['statuses']!, (value) => ConnectionStatusDefinitionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      testLinks: map['testLinks'] == null ? null : (pulumi.Input.decodeList<ApiConnectionTestLinkResponse>(map['testLinks']!, (value) => ApiConnectionTestLinkResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}


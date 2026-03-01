// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_guest_attributes_query_value.dart';

/// Result data returned by getInstanceGuestAttributes.
class GetInstanceGuestAttributesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String project;
  final String? queryPath;
  /// Structure is documented below.
  final List<GetInstanceGuestAttributesQueryValue> queryValues;
  final String region;
  final String? variableKey;
  /// Value of the queried guest_attribute.
  final String variableValue;
  final String zone;

  /// Creates a new [GetInstanceGuestAttributesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [project] Required.
  /// [queryPath] Optional.
  /// [queryValues] Structure is documented below.
  /// [region] Required.
  /// [variableKey] Optional.
  /// [variableValue] Value of the queried guest_attribute.
  /// [zone] Required.
  GetInstanceGuestAttributesResult({
    required this.id,
    required this.name,
    required this.project,
    this.queryPath,
    required this.queryValues,
    required this.region,
    this.variableKey,
    required this.variableValue,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'project': project,
      'queryPath': ?queryPath,
      'queryValues': pulumi.Input.encodeList<GetInstanceGuestAttributesQueryValue, Map<String, dynamic>>(queryValues, (value) => value.toMap()),
      'region': region,
      'variableKey': ?variableKey,
      'variableValue': variableValue,
      'zone': zone,
    };
  }

  factory GetInstanceGuestAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesResult(
      id: map['id'] as String,
      name: map['name'] as String,
      project: map['project'] as String,
      queryPath: map['queryPath'] == null ? null : map['queryPath'] as String,
      queryValues: pulumi.Input.decodeList<GetInstanceGuestAttributesQueryValue>(map['queryValues'], (value) => GetInstanceGuestAttributesQueryValue.fromMap((value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      variableKey: map['variableKey'] == null ? null : map['variableKey'] as String,
      variableValue: map['variableValue'] as String,
      zone: map['zone'] as String,
    );
  }
}


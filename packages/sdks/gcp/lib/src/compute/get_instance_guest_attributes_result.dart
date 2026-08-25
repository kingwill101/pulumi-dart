// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_guest_attributes_query_value.dart';

/// Result data returned by getInstanceGuestAttributes.
class GetInstanceGuestAttributesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? name;
  final String? project;
  final String? queryPath;
  /// Structure is documented below.
  final List<GetInstanceGuestAttributesQueryValue>? queryValues;
  final String? region;
  final String? variableKey;
  /// Value of the queried guest_attribute.
  final String? variableValue;
  final String? zone;

  /// Creates a new [GetInstanceGuestAttributesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Optional.
  /// [project] Optional.
  /// [queryPath] Optional.
  /// [queryValues] Structure is documented below.
  /// [region] Optional.
  /// [variableKey] Optional.
  /// [variableValue] Value of the queried guest_attribute.
  /// [zone] Optional.
  const GetInstanceGuestAttributesResult({
    this.id,
    this.name,
    this.project,
    this.queryPath,
    this.queryValues,
    this.region,
    this.variableKey,
    this.variableValue,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
      'project': ?project,
      'queryPath': ?queryPath,
      'queryValues': ?(() { final guardedValue = queryValues; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetInstanceGuestAttributesQueryValue, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'region': ?region,
      'variableKey': ?variableKey,
      'variableValue': ?variableValue,
      'zone': ?zone,
    };
  }

  factory GetInstanceGuestAttributesResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceGuestAttributesResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryPath: (() { final guardedValue = map['queryPath']; if (guardedValue == null) return null; return guardedValue as String; })(),
      queryValues: (() { final guardedValue = map['queryValues']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetInstanceGuestAttributesQueryValue>(guardedValue, (value) => GetInstanceGuestAttributesQueryValue.fromMap((value as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variableKey: (() { final guardedValue = map['variableKey']; if (guardedValue == null) return null; return guardedValue as String; })(),
      variableValue: (() { final guardedValue = map['variableValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      zone: (() { final guardedValue = map['zone']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

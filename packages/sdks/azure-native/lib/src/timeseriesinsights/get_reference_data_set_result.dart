// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_data_set_key_property_response.dart';

/// Result data returned by getReferenceDataSet.
class GetReferenceDataSetResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The time the resource was created.
  final String? creationTime;
  /// The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  final String? dataStringComparisonBehavior;
  /// Resource Id
  final String? id;
  /// The list of key properties for the reference data set.
  final List<ReferenceDataSetKeyPropertyResponse>? keyProperties;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// Provisioning state of the resource.
  final String? provisioningState;
  /// Resource tags
  final Map<String, String>? tags;
  /// Resource type
  final String? type;

  /// Creates a new [GetReferenceDataSetResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationTime] The time the resource was created.
  /// [dataStringComparisonBehavior] The reference data set key comparison behavior can be set using this property. By default, the value is 'Ordinal' - which means case sensitive key comparison will be performed while joining reference data with events or while adding new reference data. When 'OrdinalIgnoreCase' is set, case insensitive comparison will be used.
  /// [id] Resource Id
  /// [keyProperties] The list of key properties for the reference data set.
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] Provisioning state of the resource.
  /// [tags] Resource tags
  /// [type] Resource type
  const GetReferenceDataSetResult({
    this.azureApiVersion,
    this.creationTime,
    this.dataStringComparisonBehavior,
    this.id,
    this.keyProperties,
    this.location,
    this.name,
    this.provisioningState,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'creationTime': ?creationTime,
      'dataStringComparisonBehavior': ?dataStringComparisonBehavior,
      'id': ?id,
      'keyProperties': ?(() { final guardedValue = keyProperties; if (guardedValue == null) return null; return pulumi.Input.encodeList<ReferenceDataSetKeyPropertyResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetReferenceDataSetResult.fromMap(Map<String, dynamic> map) {
    return GetReferenceDataSetResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationTime: (() { final guardedValue = map['creationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataStringComparisonBehavior: (() { final guardedValue = map['dataStringComparisonBehavior']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyProperties: (() { final guardedValue = map['keyProperties']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ReferenceDataSetKeyPropertyResponse>(guardedValue, (value) => ReferenceDataSetKeyPropertyResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

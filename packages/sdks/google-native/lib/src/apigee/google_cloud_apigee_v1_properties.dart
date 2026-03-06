// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_property.dart';

/// Message for compatibility with legacy Edge specification for Java Properties object in JSON.
class GoogleCloudApigeeV1Properties {
  /// List of all properties in the object
  final pulumi.Input<List<GoogleCloudApigeeV1Property>>? property;

  /// Creates a new [GoogleCloudApigeeV1Properties].
  /// [property] List of all properties in the object
  const GoogleCloudApigeeV1Properties({
    this.property,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'property': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudApigeeV1Property>, List<Map<String, dynamic>>>(property, (value) => pulumi.Input.encodeList<GoogleCloudApigeeV1Property, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudApigeeV1Properties.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1Properties(
      property: (() { final guardedValue = map['property']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudApigeeV1Property>(guardedValue, (value) => GoogleCloudApigeeV1Property.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


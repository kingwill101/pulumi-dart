// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_contentwarehouse_v1_property.dart';

/// Property values.
class GoogleCloudContentwarehouseV1PropertyArray {
  /// List of property values.
  final pulumi.Input<List<GoogleCloudContentwarehouseV1Property>>? properties;

  /// Creates a new [GoogleCloudContentwarehouseV1PropertyArray].
  /// [properties] List of property values.
  GoogleCloudContentwarehouseV1PropertyArray({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<List<GoogleCloudContentwarehouseV1Property>, List<Map<String, dynamic>>>(properties, (value) => pulumi.Input.encodeList<GoogleCloudContentwarehouseV1Property, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GoogleCloudContentwarehouseV1PropertyArray.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1PropertyArray(
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GoogleCloudContentwarehouseV1Property>(guardedValue, (value) => GoogleCloudContentwarehouseV1Property.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}


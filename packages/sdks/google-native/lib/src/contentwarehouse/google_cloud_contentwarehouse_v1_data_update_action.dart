// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for properties update operations.
class GoogleCloudContentwarehouseV1DataUpdateAction {
  /// Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age", "60") entry triggers update of field age with a value of 60. If the field is not present then new entry is added. During update action execution, value strings will be casted to appropriate types.
  final pulumi.Input<Map<String, String>>? entries;

  /// Creates a new [GoogleCloudContentwarehouseV1DataUpdateAction].
  /// [entries] Map of (K, V) -> (valid name of the field, new value of the field) E.g., ("age", "60") entry triggers update of field age with a value of 60. If the field is not present then new entry is added. During update action execution, value strings will be casted to appropriate types.
  GoogleCloudContentwarehouseV1DataUpdateAction({
    this.entries,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'entries': ?entries,
    };
  }

  factory GoogleCloudContentwarehouseV1DataUpdateAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DataUpdateAction(
      entries: map['entries'] == null ? null : ((map['entries'] as Map).cast<String, String>()).input(),
    );
  }
}


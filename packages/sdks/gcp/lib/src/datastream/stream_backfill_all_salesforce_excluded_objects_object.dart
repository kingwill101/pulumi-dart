// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_backfill_all_salesforce_excluded_objects_object_field.dart';

class StreamBackfillAllSalesforceExcludedObjectsObject {
  /// Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// Structure is documented below.
  final pulumi.Input<List<StreamBackfillAllSalesforceExcludedObjectsObjectField>>? fields;
  /// Name of object in Salesforce Org.
  final pulumi.Input<String>? objectName;

  /// Creates a new [StreamBackfillAllSalesforceExcludedObjectsObject].
  /// [fields] Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// [objectName] Name of object in Salesforce Org.
  StreamBackfillAllSalesforceExcludedObjectsObject({
    this.fields,
    this.objectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<StreamBackfillAllSalesforceExcludedObjectsObjectField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<StreamBackfillAllSalesforceExcludedObjectsObjectField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objectName': ?objectName,
    };
  }

  factory StreamBackfillAllSalesforceExcludedObjectsObject.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllSalesforceExcludedObjectsObject(
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<StreamBackfillAllSalesforceExcludedObjectsObjectField>(map['fields'], (value) => StreamBackfillAllSalesforceExcludedObjectsObjectField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      objectName: map['objectName'] == null ? null : (map['objectName'] as String).input(),
    );
  }
}


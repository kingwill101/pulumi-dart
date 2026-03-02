// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_source_config_salesforce_source_config_exclude_objects_object_field.dart';

class StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject {
  /// Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// Structure is documented below.
  final pulumi.Input<List<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField>>? fields;
  /// Name of object in Salesforce Org.
  final pulumi.Input<String>? objectName;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject].
  /// [fields] Fields in the Salesforce object. When unspecified as part of include/exclude objects, includes/excludes everything/nothing.
  /// [objectName] Name of object in Salesforce Org.
  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject({
    this.fields,
    this.objectName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fields': ?pulumi.Input.mapOptionalInputValue<List<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField>, List<Map<String, dynamic>>>(fields, (value) => pulumi.Input.encodeList<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField, Map<String, dynamic>>(value, (value) => value.toMap())),
      'objectName': ?objectName,
    };
  }

  factory StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigExcludeObjectsObject(
      fields: map['fields'] == null ? null : (pulumi.Input.decodeList<StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField>(map['fields']!, (value) => StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField.fromMap((value as Map).cast<String, dynamic>()))).input(),
      objectName: map['objectName'] == null ? null : (map['objectName']! as String).input(),
    );
  }
}


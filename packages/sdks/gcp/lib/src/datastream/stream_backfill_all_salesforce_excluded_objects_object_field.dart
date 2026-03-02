// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamBackfillAllSalesforceExcludedObjectsObjectField {
  /// Field name.
  final pulumi.Input<String>? name;

  /// Creates a new [StreamBackfillAllSalesforceExcludedObjectsObjectField].
  /// [name] Field name.
  StreamBackfillAllSalesforceExcludedObjectsObjectField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory StreamBackfillAllSalesforceExcludedObjectsObjectField.fromMap(Map<String, dynamic> map) {
    return StreamBackfillAllSalesforceExcludedObjectsObjectField(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}


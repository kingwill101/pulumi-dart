// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField {
  /// Field name.
  final pulumi.Input<String>? name;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField].
  /// [name] Field name.
  const StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigIncludeObjectsObjectField(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


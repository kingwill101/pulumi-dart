// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField {
  /// Field name.
  final pulumi.Input<String>? name;

  /// Creates a new [StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField].
  /// [name] Field name.
  StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField.fromMap(Map<String, dynamic> map) {
    return StreamSourceConfigSalesforceSourceConfigExcludeObjectsObjectField(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


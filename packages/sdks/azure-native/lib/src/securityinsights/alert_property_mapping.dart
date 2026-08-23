// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single alert property mapping to override
class AlertPropertyMapping {
  /// The V3 alert property
  final pulumi.Input<String>? alertProperty;
  /// the column name to use to override this property
  final pulumi.Input<String>? value;

  /// Creates a new [AlertPropertyMapping].
  /// [alertProperty] The V3 alert property
  /// [value] the column name to use to override this property
  const AlertPropertyMapping({
    this.alertProperty,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alertProperty': ?alertProperty,
      'value': ?value,
    };
  }

  factory AlertPropertyMapping.fromMap(Map<String, dynamic> map) {
    return AlertPropertyMapping(
      alertProperty: (() { final guardedValue = map['alertProperty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

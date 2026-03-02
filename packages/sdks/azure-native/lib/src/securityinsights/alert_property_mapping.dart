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
  AlertPropertyMapping({
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
      alertProperty: map['alertProperty'] == null ? null : (map['alertProperty'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}


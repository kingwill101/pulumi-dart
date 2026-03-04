// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A single alert property mapping to override
class AlertPropertyMappingResponse {
  /// The V3 alert property
  final pulumi.Input<String>? alertProperty;

  /// the column name to use to override this property
  final pulumi.Input<String>? value;

  /// Creates a new [AlertPropertyMappingResponse].
  /// [alertProperty] The V3 alert property
  /// [value] the column name to use to override this property
  AlertPropertyMappingResponse({this.alertProperty, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alertProperty': ?alertProperty, 'value': ?value};
  }

  factory AlertPropertyMappingResponse.fromMap(Map<String, dynamic> map) {
    return AlertPropertyMappingResponse(
      alertProperty: (() {
        final guardedValue = map['alertProperty'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

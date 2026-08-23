// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data provided with a pipeline or transform to provide descriptive info.
class DisplayDataResponse {
  /// Contains value if the data is of a boolean type.
  final pulumi.Input<bool> boolValue;
  /// Contains value if the data is of duration type.
  final pulumi.Input<String> durationValue;
  /// Contains value if the data is of float type.
  final pulumi.Input<double> floatValue;
  /// Contains value if the data is of int64 type.
  final pulumi.Input<String> int64Value;
  /// Contains value if the data is of java class type.
  final pulumi.Input<String> javaClassValue;
  /// The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.
  final pulumi.Input<String> key;
  /// An optional label to display in a dax UI for the element.
  final pulumi.Input<String> label;
  /// The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.
  final pulumi.Input<String> namespace;
  /// A possible additional shorter value to display. For example a java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the java_class_name value. short_str_value can be displayed and java_class_name_value will be displayed as a tooltip.
  final pulumi.Input<String> shortStrValue;
  /// Contains value if the data is of string type.
  final pulumi.Input<String> strValue;
  /// Contains value if the data is of timestamp type.
  final pulumi.Input<String> timestampValue;
  /// An optional full URL.
  final pulumi.Input<String> url;

  /// Creates a new [DisplayDataResponse].
  /// [boolValue] Contains value if the data is of a boolean type.
  /// [durationValue] Contains value if the data is of duration type.
  /// [floatValue] Contains value if the data is of float type.
  /// [int64Value] Contains value if the data is of int64 type.
  /// [javaClassValue] Contains value if the data is of java class type.
  /// [key] The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.
  /// [label] An optional label to display in a dax UI for the element.
  /// [namespace] The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.
  /// [shortStrValue] A possible additional shorter value to display. For example a java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the java_class_name value. short_str_value can be displayed and java_class_name_value will be displayed as a tooltip.
  /// [strValue] Contains value if the data is of string type.
  /// [timestampValue] Contains value if the data is of timestamp type.
  /// [url] An optional full URL.
  const DisplayDataResponse({
    required this.boolValue,
    required this.durationValue,
    required this.floatValue,
    required this.int64Value,
    required this.javaClassValue,
    required this.key,
    required this.label,
    required this.namespace,
    required this.shortStrValue,
    required this.strValue,
    required this.timestampValue,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': boolValue,
      'durationValue': durationValue,
      'floatValue': floatValue,
      'int64Value': int64Value,
      'javaClassValue': javaClassValue,
      'key': key,
      'label': label,
      'namespace': namespace,
      'shortStrValue': shortStrValue,
      'strValue': strValue,
      'timestampValue': timestampValue,
      'url': url,
    };
  }

  factory DisplayDataResponse.fromMap(Map<String, dynamic> map) {
    return DisplayDataResponse(
      boolValue: pulumi.Input.fromValue(map['boolValue'] as bool),
      durationValue: pulumi.Input.fromValue(map['durationValue'] as String),
      floatValue: pulumi.Input.fromValue(map['floatValue'] as double),
      int64Value: pulumi.Input.fromValue(map['int64Value'] as String),
      javaClassValue: pulumi.Input.fromValue(map['javaClassValue'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      label: pulumi.Input.fromValue(map['label'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      shortStrValue: pulumi.Input.fromValue(map['shortStrValue'] as String),
      strValue: pulumi.Input.fromValue(map['strValue'] as String),
      timestampValue: pulumi.Input.fromValue(map['timestampValue'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

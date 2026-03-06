// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Data provided with a pipeline or transform to provide descriptive info.
class DisplayData {
  /// Contains value if the data is of a boolean type.
  final pulumi.Input<bool>? boolValue;
  /// Contains value if the data is of duration type.
  final pulumi.Input<String>? durationValue;
  /// Contains value if the data is of float type.
  final pulumi.Input<double>? floatValue;
  /// Contains value if the data is of int64 type.
  final pulumi.Input<String>? int64Value;
  /// Contains value if the data is of java class type.
  final pulumi.Input<String>? javaClassValue;
  /// The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.
  final pulumi.Input<String>? key;
  /// An optional label to display in a dax UI for the element.
  final pulumi.Input<String>? label;
  /// The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.
  final pulumi.Input<String>? namespace;
  /// A possible additional shorter value to display. For example a java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the java_class_name value. short_str_value can be displayed and java_class_name_value will be displayed as a tooltip.
  final pulumi.Input<String>? shortStrValue;
  /// Contains value if the data is of string type.
  final pulumi.Input<String>? strValue;
  /// Contains value if the data is of timestamp type.
  final pulumi.Input<String>? timestampValue;
  /// An optional full URL.
  final pulumi.Input<String>? url;

  /// Creates a new [DisplayData].
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
  const DisplayData({
    this.boolValue,
    this.durationValue,
    this.floatValue,
    this.int64Value,
    this.javaClassValue,
    this.key,
    this.label,
    this.namespace,
    this.shortStrValue,
    this.strValue,
    this.timestampValue,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'boolValue': ?boolValue,
      'durationValue': ?durationValue,
      'floatValue': ?floatValue,
      'int64Value': ?int64Value,
      'javaClassValue': ?javaClassValue,
      'key': ?key,
      'label': ?label,
      'namespace': ?namespace,
      'shortStrValue': ?shortStrValue,
      'strValue': ?strValue,
      'timestampValue': ?timestampValue,
      'url': ?url,
    };
  }

  factory DisplayData.fromMap(Map<String, dynamic> map) {
    return DisplayData(
      boolValue: (() { final guardedValue = map['boolValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      durationValue: (() { final guardedValue = map['durationValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      floatValue: (() { final guardedValue = map['floatValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      int64Value: (() { final guardedValue = map['int64Value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      javaClassValue: (() { final guardedValue = map['javaClassValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      namespace: (() { final guardedValue = map['namespace']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      shortStrValue: (() { final guardedValue = map['shortStrValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      strValue: (() { final guardedValue = map['strValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestampValue: (() { final guardedValue = map['timestampValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast


/// Data provided with a pipeline or transform to provide descriptive info.
class DisplayDataResponse {
  /// Contains value if the data is of a boolean type.
  final bool boolValue;
  /// Contains value if the data is of duration type.
  final String durationValue;
  /// Contains value if the data is of float type.
  final double floatValue;
  /// Contains value if the data is of int64 type.
  final String int64Value;
  /// Contains value if the data is of java class type.
  final String javaClassValue;
  /// The key identifying the display data. This is intended to be used as a label for the display data when viewed in a dax monitoring system.
  final String key;
  /// An optional label to display in a dax UI for the element.
  final String label;
  /// The namespace for the key. This is usually a class name or programming language namespace (i.e. python module) which defines the display data. This allows a dax monitoring system to specially handle the data and perform custom rendering.
  final String namespace;
  /// A possible additional shorter value to display. For example a java_class_name_value of com.mypackage.MyDoFn will be stored with MyDoFn as the short_str_value and com.mypackage.MyDoFn as the java_class_name value. short_str_value can be displayed and java_class_name_value will be displayed as a tooltip.
  final String shortStrValue;
  /// Contains value if the data is of string type.
  final String strValue;
  /// Contains value if the data is of timestamp type.
  final String timestampValue;
  /// An optional full URL.
  final String url;

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
  DisplayDataResponse({
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
      boolValue: map['boolValue'] as bool,
      durationValue: map['durationValue'] as String,
      floatValue: map['floatValue'] as double,
      int64Value: map['int64Value'] as String,
      javaClassValue: map['javaClassValue'] as String,
      key: map['key'] as String,
      label: map['label'] as String,
      namespace: map['namespace'] as String,
      shortStrValue: map['shortStrValue'] as String,
      strValue: map['strValue'] as String,
      timestampValue: map['timestampValue'] as String,
      url: map['url'] as String,
    );
  }
}


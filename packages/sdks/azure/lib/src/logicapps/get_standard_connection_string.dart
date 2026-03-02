// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStandardConnectionString {
  /// The name of the Logic App.
  final pulumi.Input<String> name;
  /// The Type of Managed Identity assigned to this Logic App Workflow.
  final pulumi.Input<String> type;
  final pulumi.Input<String> value;

  /// Creates a new [GetStandardConnectionString].
  /// [name] The name of the Logic App.
  /// [type] The Type of Managed Identity assigned to this Logic App Workflow.
  /// [value] Required.
  GetStandardConnectionString({
    required this.name,
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
      'value': value,
    };
  }

  factory GetStandardConnectionString.fromMap(Map<String, dynamic> map) {
    return GetStandardConnectionString(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


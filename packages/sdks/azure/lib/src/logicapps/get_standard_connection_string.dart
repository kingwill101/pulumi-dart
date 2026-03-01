// ignore_for_file: unused_element, unnecessary_cast


class GetStandardConnectionString {
  /// The name of the Logic App.
  final String name;
  /// The Type of Managed Identity assigned to this Logic App Workflow.
  final String type;
  final String value;

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
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}


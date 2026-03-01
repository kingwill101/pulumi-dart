// ignore_for_file: unused_element, unnecessary_cast


class GetAppServiceConnectionString {
  /// The name of the App Service.
  final String name;
  /// The type of the Connection String.
  final String type;
  /// The value for the Connection String.
  final String value;

  /// Creates a new [GetAppServiceConnectionString].
  /// [name] The name of the App Service.
  /// [type] The type of the Connection String.
  /// [value] The value for the Connection String.
  GetAppServiceConnectionString({
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

  factory GetAppServiceConnectionString.fromMap(Map<String, dynamic> map) {
    return GetAppServiceConnectionString(
      name: map['name'] as String,
      type: map['type'] as String,
      value: map['value'] as String,
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetAppServiceConnectionString {
  /// The name of the App Service.
  final pulumi.Input<String> name;
  /// The type of the Connection String.
  final pulumi.Input<String> type;
  /// The value for the Connection String.
  final pulumi.Input<String> value;

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
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


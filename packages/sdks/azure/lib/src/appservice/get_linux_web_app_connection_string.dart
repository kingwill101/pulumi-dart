// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLinuxWebAppConnectionString {
  /// The name of this Linux Web App.
  final pulumi.Input<String> name;
  /// The Azure Storage Type.
  final pulumi.Input<String> type;
  /// The Connection String value.
  final pulumi.Input<String> value;

  /// Creates a new [GetLinuxWebAppConnectionString].
  /// [name] The name of this Linux Web App.
  /// [type] The Azure Storage Type.
  /// [value] The Connection String value.
  GetLinuxWebAppConnectionString({
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

  factory GetLinuxWebAppConnectionString.fromMap(Map<String, dynamic> map) {
    return GetLinuxWebAppConnectionString(
      name: (map['name'] as String).input(),
      type: (map['type'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}


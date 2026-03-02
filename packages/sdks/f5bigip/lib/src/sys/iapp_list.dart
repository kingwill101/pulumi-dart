// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IAppList {
  /// Name of origin
  final pulumi.Input<String>? encrypted;
  /// Name of origin
  final pulumi.Input<String>? value;

  /// Creates a new [IAppList].
  /// [encrypted] Name of origin
  /// [value] Name of origin
  IAppList({
    this.encrypted,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encrypted': ?encrypted,
      'value': ?value,
    };
  }

  factory IAppList.fromMap(Map<String, dynamic> map) {
    return IAppList(
      encrypted: map['encrypted'] == null ? null : (map['encrypted'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}


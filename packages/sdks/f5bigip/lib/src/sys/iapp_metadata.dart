// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class IAppMetadata {
  /// Name of origin
  final pulumi.Input<String>? persists;
  /// Name of origin
  final pulumi.Input<String>? value;

  /// Creates a new [IAppMetadata].
  /// [persists] Name of origin
  /// [value] Name of origin
  const IAppMetadata({
    this.persists,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persists': ?persists,
      'value': ?value,
    };
  }

  factory IAppMetadata.fromMap(Map<String, dynamic> map) {
    return IAppMetadata(
      persists: (() { final guardedValue = map['persists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


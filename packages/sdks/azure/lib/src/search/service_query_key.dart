// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceQueryKey {
  /// The value of this Query Key.
  final pulumi.Input<String>? key;
  /// The Name which should be used for this Search Service. Changing this forces a new Search Service to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [ServiceQueryKey].
  /// [key] The value of this Query Key.
  /// [name] The Name which should be used for this Search Service. Changing this forces a new Search Service to be created.
  ServiceQueryKey({
    this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'name': ?name,
    };
  }

  factory ServiceQueryKey.fromMap(Map<String, dynamic> map) {
    return ServiceQueryKey(
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


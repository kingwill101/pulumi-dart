// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ThirdPartyExtension {
  /// Name of third party extension.
  final pulumi.Input<String?>? name;

  /// Creates a new [ThirdPartyExtension].
  /// [name] Name of third party extension.
  const ThirdPartyExtension({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory ThirdPartyExtension.fromMap(Map<String, dynamic> map) {
    return ThirdPartyExtension(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

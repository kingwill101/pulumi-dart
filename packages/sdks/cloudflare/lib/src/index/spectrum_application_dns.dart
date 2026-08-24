// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SpectrumApplicationDns {
  /// The name of the DNS record associated with the application.
  final pulumi.Input<String?>? name;
  /// The type of DNS record associated with the application.
  /// Available values: "CNAME", "ADDRESS".
  final pulumi.Input<String?>? type;

  /// Creates a new [SpectrumApplicationDns].
  /// [name] The name of the DNS record associated with the application.
  /// [type] The type of DNS record associated with the application.
  const SpectrumApplicationDns({
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'type': ?type,
    };
  }

  factory SpectrumApplicationDns.fromMap(Map<String, dynamic> map) {
    return SpectrumApplicationDns(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

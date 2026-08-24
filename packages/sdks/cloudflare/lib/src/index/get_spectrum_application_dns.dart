// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSpectrumApplicationDns {
  /// The name of the DNS record associated with the application.
  final pulumi.Input<String> name;
  /// The type of DNS record associated with the application.
  /// Available values: "CNAME", "ADDRESS".
  final pulumi.Input<String> type;

  /// Creates a new [GetSpectrumApplicationDns].
  /// [name] The name of the DNS record associated with the application.
  /// [type] The type of DNS record associated with the application.
  const GetSpectrumApplicationDns({
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'type': type,
    };
  }

  factory GetSpectrumApplicationDns.fromMap(Map<String, dynamic> map) {
    return GetSpectrumApplicationDns(
      name: pulumi.Input.fromValue(map['name'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

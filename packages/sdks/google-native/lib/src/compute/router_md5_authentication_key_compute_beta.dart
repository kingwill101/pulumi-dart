// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RouterMd5AuthenticationKeyComputeBeta {
  /// [Input only] Value of the key. For patch and update calls, it can be skipped to copy the value from the previous configuration. This is allowed if the key with the same name existed before the operation. Maximum length is 80 characters. Can only contain printable ASCII characters.
  final pulumi.Input<String>? key;
  /// Name used to identify the key. Must be unique within a router. Must be referenced by exactly one bgpPeer. Must comply with RFC1035.
  final pulumi.Input<String>? name;

  /// Creates a new [RouterMd5AuthenticationKeyComputeBeta].
  /// [key] [Input only] Value of the key. For patch and update calls, it can be skipped to copy the value from the previous configuration. This is allowed if the key with the same name existed before the operation. Maximum length is 80 characters. Can only contain printable ASCII characters.
  /// [name] Name used to identify the key. Must be unique within a router. Must be referenced by exactly one bgpPeer. Must comply with RFC1035.
  RouterMd5AuthenticationKeyComputeBeta({
    this.key,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'name': ?name,
    };
  }

  factory RouterMd5AuthenticationKeyComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterMd5AuthenticationKeyComputeBeta(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}


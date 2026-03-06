// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting over HTTP(s).
class Addressable {
  final pulumi.Input<String>? url;

  /// Creates a new [Addressable].
  /// [url] Optional.
  const Addressable({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory Addressable.fromMap(Map<String, dynamic> map) {
    return Addressable(
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


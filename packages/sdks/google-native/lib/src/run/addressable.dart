// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting over HTTP(s).
class Addressable {
  final pulumi.Input<String>? url;

  /// Creates a new [Addressable].
  /// [url] Optional.
  Addressable({
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'url': ?url,
    };
  }

  factory Addressable.fromMap(Map<String, dynamic> map) {
    return Addressable(
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetContainerConsumer {
  /// The Container name.
  final pulumi.Input<String>? name;
  /// The consumer URL.
  final pulumi.Input<String>? url;

  /// Creates a new [GetContainerConsumer].
  /// [name] The Container name.
  /// [url] The consumer URL.
  GetContainerConsumer({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory GetContainerConsumer.fromMap(Map<String, dynamic> map) {
    return GetContainerConsumer(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      url: map['url'] == null ? null : (map['url'] as String).input(),
    );
  }
}


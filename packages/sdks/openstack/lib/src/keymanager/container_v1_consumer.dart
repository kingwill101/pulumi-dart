// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ContainerV1Consumer {
  /// Human-readable name for the Container. Does not have
  /// to be unique.
  final pulumi.Input<String>? name;
  /// The consumer URL.
  final pulumi.Input<String>? url;

  /// Creates a new [ContainerV1Consumer].
  /// [name] Human-readable name for the Container. Does not have
  /// [url] The consumer URL.
  ContainerV1Consumer({
    this.name,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'url': ?url,
    };
  }

  factory ContainerV1Consumer.fromMap(Map<String, dynamic> map) {
    return ContainerV1Consumer(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}


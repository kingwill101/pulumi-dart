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
  const ContainerV1Consumer({
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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


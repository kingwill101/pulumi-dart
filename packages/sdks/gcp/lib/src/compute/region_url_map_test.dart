// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionUrlMapTest {
  /// Description of this test case.
  final pulumi.Input<String>? description;
  /// Host portion of the URL.
  final pulumi.Input<String> host;
  /// Path portion of the URL.
  final pulumi.Input<String> path;
  /// A reference to expected RegionBackendService resource the given URL should be mapped to.
  final pulumi.Input<String> service;

  /// Creates a new [RegionUrlMapTest].
  /// [description] Description of this test case.
  /// [host] Host portion of the URL.
  /// [path] Path portion of the URL.
  /// [service] A reference to expected RegionBackendService resource the given URL should be mapped to.
  const RegionUrlMapTest({
    this.description,
    required this.host,
    required this.path,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'host': host,
      'path': path,
      'service': service,
    };
  }

  factory RegionUrlMapTest.fromMap(Map<String, dynamic> map) {
    return RegionUrlMapTest(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      host: pulumi.Input.fromValue(map['host'] as String),
      path: pulumi.Input.fromValue(map['path'] as String),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}


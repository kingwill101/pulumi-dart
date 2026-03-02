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
  RegionUrlMapTest({
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
      description: map['description'] == null ? null : (map['description']! as String).input(),
      host: (map['host'] as String).input(),
      path: (map['path'] as String).input(),
      service: (map['service'] as String).input(),
    );
  }
}


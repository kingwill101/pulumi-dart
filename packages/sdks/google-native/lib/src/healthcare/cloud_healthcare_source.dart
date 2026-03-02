// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Healthcare API resource.
class CloudHealthcareSource {
  /// Full path of a Cloud Healthcare API resource.
  final pulumi.Input<String>? name;

  /// Creates a new [CloudHealthcareSource].
  /// [name] Full path of a Cloud Healthcare API resource.
  CloudHealthcareSource({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory CloudHealthcareSource.fromMap(Map<String, dynamic> map) {
    return CloudHealthcareSource(
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}


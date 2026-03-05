// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPTResponse {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceAPTResponse].
  /// [name] Package name.
  OSPolicyResourcePackageResourceAPTResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceAPTResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPTResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


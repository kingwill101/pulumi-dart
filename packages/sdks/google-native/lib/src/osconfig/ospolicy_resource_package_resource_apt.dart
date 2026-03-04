// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by APT. - install: `apt-get update && apt-get -y install [name]` - remove: `apt-get -y remove [name]`
class OSPolicyResourcePackageResourceAPT {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceAPT].
  /// [name] Package name.
  OSPolicyResourcePackageResourceAPT({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory OSPolicyResourcePackageResourceAPT.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceAPT(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

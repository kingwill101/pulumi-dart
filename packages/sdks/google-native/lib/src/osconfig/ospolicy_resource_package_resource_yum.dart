// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUM {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceYUM].
  /// [name] Package name.
  const OSPolicyResourcePackageResourceYUM({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceYUM.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUM(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


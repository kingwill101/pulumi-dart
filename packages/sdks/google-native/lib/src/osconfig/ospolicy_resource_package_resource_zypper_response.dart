// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by Zypper. - install: `zypper -y install package` - remove: `zypper -y rm package`
class OSPolicyResourcePackageResourceZypperResponse {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceZypperResponse].
  /// [name] Package name.
  const OSPolicyResourcePackageResourceZypperResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceZypperResponse.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceZypperResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


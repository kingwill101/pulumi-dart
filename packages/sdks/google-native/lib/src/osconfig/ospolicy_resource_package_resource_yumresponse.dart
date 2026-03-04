// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMResponse {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceYUMResponse].
  /// [name] Package name.
  OSPolicyResourcePackageResourceYUMResponse({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory OSPolicyResourcePackageResourceYUMResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceYUMResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

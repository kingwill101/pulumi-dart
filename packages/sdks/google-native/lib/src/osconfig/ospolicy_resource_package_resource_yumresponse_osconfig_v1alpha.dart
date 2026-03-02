// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by YUM. - install: `yum -y install package` - remove: `yum -y remove package`
class OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha].
  /// [name] Package name.
  OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceYUMResponseOsconfigV1alpha(
      name: (map['name'] as String).input(),
    );
  }
}


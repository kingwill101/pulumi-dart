// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A package managed by GooGet. - install: `googet -noconfirm install package` - remove: `googet -noconfirm remove package`
class OSPolicyResourcePackageResourceGooGetOsconfigV1alpha {
  /// Package name.
  final pulumi.Input<String> name;

  /// Creates a new [OSPolicyResourcePackageResourceGooGetOsconfigV1alpha].
  /// [name] Package name.
  OSPolicyResourcePackageResourceGooGetOsconfigV1alpha({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory OSPolicyResourcePackageResourceGooGetOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceGooGetOsconfigV1alpha(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

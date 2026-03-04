// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GuestPoliciesPackageRepositoryGoo {
  /// The name of the repository.
  final pulumi.Input<String> name;

  /// The url of the repository.
  final pulumi.Input<String> url;

  /// Creates a new [GuestPoliciesPackageRepositoryGoo].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  GuestPoliciesPackageRepositoryGoo({required this.name, required this.url});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'url': url};
  }

  factory GuestPoliciesPackageRepositoryGoo.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesPackageRepositoryGoo(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

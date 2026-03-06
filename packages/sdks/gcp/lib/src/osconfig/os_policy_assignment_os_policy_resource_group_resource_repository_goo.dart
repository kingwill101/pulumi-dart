// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo {
  /// The name of the repository.
  final pulumi.Input<String> name;
  /// The url of the repository.
  final pulumi.Input<String> url;

  /// Creates a new [OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  const OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentOsPolicyResourceGroupResourceRepositoryGoo(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}


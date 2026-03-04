// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha {
  /// The name of the repository.
  final pulumi.Input<String> name;

  /// The url of the repository.
  final pulumi.Input<String> url;

  /// Creates a new [OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'url': url};
  }

  factory OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourceRepositoryResourceGooRepositoryOsconfigV1alpha(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

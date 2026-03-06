// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a Goo package repository. These are added to a repo file that is managed at `C:/ProgramData/GooGet/repos/google_osconfig.repo`.
class OSPolicyResourceRepositoryResourceGooRepository {
  /// The name of the repository.
  final pulumi.Input<String> name;
  /// The url of the repository.
  final pulumi.Input<String> url;

  /// Creates a new [OSPolicyResourceRepositoryResourceGooRepository].
  /// [name] The name of the repository.
  /// [url] The url of the repository.
  const OSPolicyResourceRepositoryResourceGooRepository({
    required this.name,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'url': url,
    };
  }

  factory OSPolicyResourceRepositoryResourceGooRepository.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourceRepositoryResourceGooRepository(
      name: pulumi.Input.fromValue(map['name'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}


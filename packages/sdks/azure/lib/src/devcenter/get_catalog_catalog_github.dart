// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCatalogCatalogGithub {
  /// The Git branch of the Dev Center Catalog.
  final pulumi.Input<String> branch;
  /// A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  final pulumi.Input<String> keyVaultKeyUrl;
  /// The folder where the catalog items can be found inside the repository.
  final pulumi.Input<String> path;
  /// The Git URI of the Dev Center Catalog.
  final pulumi.Input<String> uri;

  /// Creates a new [GetCatalogCatalogGithub].
  /// [branch] The Git branch of the Dev Center Catalog.
  /// [keyVaultKeyUrl] A reference to the Key Vault secret containing a security token to authenticate to a Git repository.
  /// [path] The folder where the catalog items can be found inside the repository.
  /// [uri] The Git URI of the Dev Center Catalog.
  GetCatalogCatalogGithub({
    required this.branch,
    required this.keyVaultKeyUrl,
    required this.path,
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'branch': branch,
      'keyVaultKeyUrl': keyVaultKeyUrl,
      'path': path,
      'uri': uri,
    };
  }

  factory GetCatalogCatalogGithub.fromMap(Map<String, dynamic> map) {
    return GetCatalogCatalogGithub(
      branch: (map['branch'] as String).input(),
      keyVaultKeyUrl: (map['keyVaultKeyUrl'] as String).input(),
      path: (map['path'] as String).input(),
      uri: (map['uri'] as String).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Template Options for the static site.
class StaticSiteTemplateOptionsResponse {
  /// Description of the newly generated repository.
  final pulumi.Input<String>? description;
  /// Whether or not the newly generated repository is a private repository. Defaults to false (i.e. public).
  final pulumi.Input<bool>? isPrivate;
  /// Owner of the newly generated repository.
  final pulumi.Input<String>? owner;
  /// Name of the newly generated repository.
  final pulumi.Input<String>? repositoryName;
  /// URL of the template repository. The newly generated repository will be based on this one.
  final pulumi.Input<String>? templateRepositoryUrl;

  /// Creates a new [StaticSiteTemplateOptionsResponse].
  /// [description] Description of the newly generated repository.
  /// [isPrivate] Whether or not the newly generated repository is a private repository. Defaults to false (i.e. public).
  /// [owner] Owner of the newly generated repository.
  /// [repositoryName] Name of the newly generated repository.
  /// [templateRepositoryUrl] URL of the template repository. The newly generated repository will be based on this one.
  StaticSiteTemplateOptionsResponse({
    this.description,
    this.isPrivate,
    this.owner,
    this.repositoryName,
    this.templateRepositoryUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'isPrivate': ?isPrivate,
      'owner': ?owner,
      'repositoryName': ?repositoryName,
      'templateRepositoryUrl': ?templateRepositoryUrl,
    };
  }

  factory StaticSiteTemplateOptionsResponse.fromMap(Map<String, dynamic> map) {
    return StaticSiteTemplateOptionsResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      isPrivate: map['isPrivate'] == null ? null : (map['isPrivate'] as bool).input(),
      owner: map['owner'] == null ? null : (map['owner'] as String).input(),
      repositoryName: map['repositoryName'] == null ? null : (map['repositoryName'] as String).input(),
      templateRepositoryUrl: map['templateRepositoryUrl'] == null ? null : (map['templateRepositoryUrl'] as String).input(),
    );
  }
}


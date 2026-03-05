// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Template Options for the static site.
class StaticSiteTemplateOptions {
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

  /// Creates a new [StaticSiteTemplateOptions].
  /// [description] Description of the newly generated repository.
  /// [isPrivate] Whether or not the newly generated repository is a private repository. Defaults to false (i.e. public).
  /// [owner] Owner of the newly generated repository.
  /// [repositoryName] Name of the newly generated repository.
  /// [templateRepositoryUrl] URL of the template repository. The newly generated repository will be based on this one.
  StaticSiteTemplateOptions({
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

  factory StaticSiteTemplateOptions.fromMap(Map<String, dynamic> map) {
    return StaticSiteTemplateOptions(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isPrivate: (() { final guardedValue = map['isPrivate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      owner: (() { final guardedValue = map['owner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repositoryName: (() { final guardedValue = map['repositoryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      templateRepositoryUrl: (() { final guardedValue = map['templateRepositoryUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author.dart';
import 'metadata_categories.dart';
import 'metadata_dependencies.dart';
import 'metadata_source.dart';
import 'metadata_support.dart';

/// {@template pulumi_securityinsights_content_package_args_doc}
/// The set of arguments for ContentPackage.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_content_package_args_doc}
class ContentPackageArgs {
  /// The author of the package
  final pulumi.Input<MetadataAuthor>? author;

  /// The categories of the package
  final pulumi.Input<MetadataCategories>? categories;

  /// The content id of the package
  final pulumi.Input<String> contentId;

  /// The package kind
  final pulumi.Input<String> contentKind;

  /// Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  final pulumi.Input<String> contentProductId;

  /// The version of the content schema.
  final pulumi.Input<String>? contentSchemaVersion;

  /// The support tier of the package
  final pulumi.Input<MetadataDependencies>? dependencies;

  /// The description of the package
  final pulumi.Input<String>? description;

  /// The display name of the package
  final pulumi.Input<String> displayName;

  /// first publish date package item
  final pulumi.Input<String>? firstPublishDate;

  /// the icon identifier. this id can later be fetched from the content metadata
  final pulumi.Input<String>? icon;

  /// Flag indicates if this template is deprecated
  final pulumi.Input<String>? isDeprecated;

  /// Flag indicates if this package is among the featured list.
  final pulumi.Input<String>? isFeatured;

  /// Flag indicates if this is a newly published package.
  final pulumi.Input<String>? isNew;

  /// Flag indicates if this package is in preview.
  final pulumi.Input<String>? isPreview;

  /// last publish date for the package item
  final pulumi.Input<String>? lastPublishDate;

  /// package Id
  final pulumi.Input<String>? packageId;

  /// Providers for the package item
  final pulumi.Input<List<String>>? providers;

  /// The publisher display name of the package
  final pulumi.Input<String>? publisherDisplayName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The source of the package
  final pulumi.Input<MetadataSource>? source;

  /// The support tier of the package
  final pulumi.Input<MetadataSupport>? support;

  /// the tactics the resource covers
  final pulumi.Input<List<String>>? threatAnalysisTactics;

  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final pulumi.Input<List<String>>? threatAnalysisTechniques;

  /// the latest version number of the package
  final pulumi.Input<String> version;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ContentPackageArgs].
  /// [author] The author of the package
  /// [categories] The categories of the package
  /// [contentId] The content id of the package
  /// [contentKind] The package kind
  /// [contentProductId] Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  /// [contentSchemaVersion] The version of the content schema.
  /// [dependencies] The support tier of the package
  /// [description] The description of the package
  /// [displayName] The display name of the package
  /// [firstPublishDate] first publish date package item
  /// [icon] the icon identifier. this id can later be fetched from the content metadata
  /// [isDeprecated] Flag indicates if this template is deprecated
  /// [isFeatured] Flag indicates if this package is among the featured list.
  /// [isNew] Flag indicates if this is a newly published package.
  /// [isPreview] Flag indicates if this package is in preview.
  /// [lastPublishDate] last publish date for the package item
  /// [packageId] package Id
  /// [providers] Providers for the package item
  /// [publisherDisplayName] The publisher display name of the package
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] The source of the package
  /// [support] The support tier of the package
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [version] the latest version number of the package
  /// [workspaceName] The name of the workspace.
  ContentPackageArgs({
    this.author,
    this.categories,
    required this.contentId,
    required this.contentKind,
    required this.contentProductId,
    this.contentSchemaVersion,
    this.dependencies,
    this.description,
    required this.displayName,
    this.firstPublishDate,
    this.icon,
    this.isDeprecated,
    this.isFeatured,
    this.isNew,
    this.isPreview,
    this.lastPublishDate,
    this.packageId,
    this.providers,
    this.publisherDisplayName,
    required this.resourceGroupName,
    this.source,
    this.support,
    this.threatAnalysisTactics,
    this.threatAnalysisTechniques,
    required this.version,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataAuthor,
            Map<String, dynamic>
          >(author, (value) => value.toMap()),
      'categories':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataCategories,
            Map<String, dynamic>
          >(categories, (value) => value.toMap()),
      'contentId': contentId,
      'contentKind': contentKind,
      'contentProductId': contentProductId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'dependencies':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataDependencies,
            Map<String, dynamic>
          >(dependencies, (value) => value.toMap()),
      'description': ?description,
      'displayName': displayName,
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'isDeprecated': ?isDeprecated,
      'isFeatured': ?isFeatured,
      'isNew': ?isNew,
      'isPreview': ?isPreview,
      'lastPublishDate': ?lastPublishDate,
      'packageId': ?packageId,
      'providers': ?providers,
      'publisherDisplayName': ?publisherDisplayName,
      'resourceGroupName': resourceGroupName,
      'source':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataSource,
            Map<String, dynamic>
          >(source, (value) => value.toMap()),
      'support':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataSupport,
            Map<String, dynamic>
          >(support, (value) => value.toMap()),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory ContentPackageArgs.fromMap(Map<String, dynamic> map) {
    return ContentPackageArgs(
      author: (() {
        final guardedValue = map['author'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataAuthor.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      categories: (() {
        final guardedValue = map['categories'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataCategories.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      contentId: pulumi.Input.fromValue(map['contentId'] as String),
      contentKind: pulumi.Input.fromValue(map['contentKind'] as String),
      contentProductId: pulumi.Input.fromValue(
        map['contentProductId'] as String,
      ),
      contentSchemaVersion: (() {
        final guardedValue = map['contentSchemaVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dependencies: (() {
        final guardedValue = map['dependencies'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataDependencies.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      firstPublishDate: (() {
        final guardedValue = map['firstPublishDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      icon: (() {
        final guardedValue = map['icon'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isDeprecated: (() {
        final guardedValue = map['isDeprecated'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isFeatured: (() {
        final guardedValue = map['isFeatured'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isNew: (() {
        final guardedValue = map['isNew'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      isPreview: (() {
        final guardedValue = map['isPreview'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastPublishDate: (() {
        final guardedValue = map['lastPublishDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageId: (() {
        final guardedValue = map['packageId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      providers: (() {
        final guardedValue = map['providers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      publisherDisplayName: (() {
        final guardedValue = map['publisherDisplayName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataSource.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      support: (() {
        final guardedValue = map['support'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataSupport.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      threatAnalysisTactics: (() {
        final guardedValue = map['threatAnalysisTactics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      threatAnalysisTechniques: (() {
        final guardedValue = map['threatAnalysisTechniques'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      version: pulumi.Input.fromValue(map['version'] as String),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}

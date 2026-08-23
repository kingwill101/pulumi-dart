// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';

/// Result data returned by getContentPackage.
class GetContentPackageResult {
  /// The author of the package
  final MetadataAuthorResponse? author;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The categories of the package
  final MetadataCategoriesResponse? categories;
  /// The content id of the package
  final String contentId;
  /// The package kind
  final String contentKind;
  /// Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  final String contentProductId;
  /// The version of the content schema.
  final String? contentSchemaVersion;
  /// The support tier of the package
  final MetadataDependenciesResponse? dependencies;
  /// The description of the package
  final String? description;
  /// The display name of the package
  final String displayName;
  /// Etag of the azure resource
  final String? etag;
  /// first publish date package item
  final String? firstPublishDate;
  /// the icon identifier. this id can later be fetched from the content metadata
  final String? icon;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Flag indicates if this template is deprecated
  final String? isDeprecated;
  /// Flag indicates if this package is among the featured list.
  final String? isFeatured;
  /// Flag indicates if this is a newly published package.
  final String? isNew;
  /// Flag indicates if this package is in preview.
  final String? isPreview;
  /// last publish date for the package item
  final String? lastPublishDate;
  /// The name of the resource
  final String name;
  /// Providers for the package item
  final List<String>? providers;
  /// The publisher display name of the package
  final String? publisherDisplayName;
  /// The source of the package
  final MetadataSourceResponse? source;
  /// The support tier of the package
  final MetadataSupportResponse? support;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// the tactics the resource covers
  final List<String>? threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final List<String>? threatAnalysisTechniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// the latest version number of the package
  final String version;

  /// Creates a new [GetContentPackageResult].
  /// [author] The author of the package
  /// [azureApiVersion] The Azure API version of the resource.
  /// [categories] The categories of the package
  /// [contentId] The content id of the package
  /// [contentKind] The package kind
  /// [contentProductId] Unique ID for the content. It should be generated based on the contentId, contentKind and the contentVersion of the package
  /// [contentSchemaVersion] The version of the content schema.
  /// [dependencies] The support tier of the package
  /// [description] The description of the package
  /// [displayName] The display name of the package
  /// [etag] Etag of the azure resource
  /// [firstPublishDate] first publish date package item
  /// [icon] the icon identifier. this id can later be fetched from the content metadata
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDeprecated] Flag indicates if this template is deprecated
  /// [isFeatured] Flag indicates if this package is among the featured list.
  /// [isNew] Flag indicates if this is a newly published package.
  /// [isPreview] Flag indicates if this package is in preview.
  /// [lastPublishDate] last publish date for the package item
  /// [name] The name of the resource
  /// [providers] Providers for the package item
  /// [publisherDisplayName] The publisher display name of the package
  /// [source] The source of the package
  /// [support] The support tier of the package
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] the latest version number of the package
  const GetContentPackageResult({
    this.author,
    required this.azureApiVersion,
    this.categories,
    required this.contentId,
    required this.contentKind,
    required this.contentProductId,
    this.contentSchemaVersion,
    this.dependencies,
    this.description,
    required this.displayName,
    this.etag,
    this.firstPublishDate,
    this.icon,
    required this.id,
    this.isDeprecated,
    this.isFeatured,
    this.isNew,
    this.isPreview,
    this.lastPublishDate,
    required this.name,
    this.providers,
    this.publisherDisplayName,
    this.source,
    this.support,
    required this.systemData,
    this.threatAnalysisTactics,
    this.threatAnalysisTechniques,
    required this.type,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author?.toMap(),
      'azureApiVersion': azureApiVersion,
      'categories': ?categories?.toMap(),
      'contentId': contentId,
      'contentKind': contentKind,
      'contentProductId': contentProductId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'dependencies': ?dependencies?.toMap(),
      'description': ?description,
      'displayName': displayName,
      'etag': ?etag,
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'id': id,
      'isDeprecated': ?isDeprecated,
      'isFeatured': ?isFeatured,
      'isNew': ?isNew,
      'isPreview': ?isPreview,
      'lastPublishDate': ?lastPublishDate,
      'name': name,
      'providers': ?providers,
      'publisherDisplayName': ?publisherDisplayName,
      'source': ?source?.toMap(),
      'support': ?support?.toMap(),
      'systemData': systemData.toMap(),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'type': type,
      'version': version,
    };
  }

  factory GetContentPackageResult.fromMap(Map<String, dynamic> map) {
    return GetContentPackageResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return MetadataAuthorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return MetadataCategoriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      contentId: map['contentId'] as String,
      contentKind: map['contentKind'] as String,
      contentProductId: map['contentProductId'] as String,
      contentSchemaVersion: (() { final guardedValue = map['contentSchemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return MetadataDependenciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: map['displayName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstPublishDate: (() { final guardedValue = map['firstPublishDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      isDeprecated: (() { final guardedValue = map['isDeprecated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isFeatured: (() { final guardedValue = map['isFeatured']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isNew: (() { final guardedValue = map['isNew']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isPreview: (() { final guardedValue = map['isPreview']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastPublishDate: (() { final guardedValue = map['lastPublishDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      publisherDisplayName: (() { final guardedValue = map['publisherDisplayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return MetadataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      support: (() { final guardedValue = map['support']; if (guardedValue == null) return null; return MetadataSupportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      threatAnalysisTactics: (() { final guardedValue = map['threatAnalysisTactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      threatAnalysisTechniques: (() { final guardedValue = map['threatAnalysisTechniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}

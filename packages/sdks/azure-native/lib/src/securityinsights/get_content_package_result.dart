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
  GetContentPackageResult({
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
      'author': ?author == null ? null : author!.toMap(),
      'azureApiVersion': azureApiVersion,
      'categories': ?categories == null ? null : categories!.toMap(),
      'contentId': contentId,
      'contentKind': contentKind,
      'contentProductId': contentProductId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'dependencies': ?dependencies == null ? null : dependencies!.toMap(),
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
      'source': ?source == null ? null : source!.toMap(),
      'support': ?support == null ? null : support!.toMap(),
      'systemData': systemData.toMap(),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'type': type,
      'version': version,
    };
  }

  factory GetContentPackageResult.fromMap(Map<String, dynamic> map) {
    return GetContentPackageResult(
      author: map['author'] == null ? null : MetadataAuthorResponse.fromMap((map['author']! as Map).cast<String, dynamic>()),
      azureApiVersion: map['azureApiVersion'] as String,
      categories: map['categories'] == null ? null : MetadataCategoriesResponse.fromMap((map['categories']! as Map).cast<String, dynamic>()),
      contentId: map['contentId'] as String,
      contentKind: map['contentKind'] as String,
      contentProductId: map['contentProductId'] as String,
      contentSchemaVersion: map['contentSchemaVersion'] == null ? null : map['contentSchemaVersion']! as String,
      dependencies: map['dependencies'] == null ? null : MetadataDependenciesResponse.fromMap((map['dependencies']! as Map).cast<String, dynamic>()),
      description: map['description'] == null ? null : map['description']! as String,
      displayName: map['displayName'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      firstPublishDate: map['firstPublishDate'] == null ? null : map['firstPublishDate']! as String,
      icon: map['icon'] == null ? null : map['icon']! as String,
      id: map['id'] as String,
      isDeprecated: map['isDeprecated'] == null ? null : map['isDeprecated']! as String,
      isFeatured: map['isFeatured'] == null ? null : map['isFeatured']! as String,
      isNew: map['isNew'] == null ? null : map['isNew']! as String,
      isPreview: map['isPreview'] == null ? null : map['isPreview']! as String,
      lastPublishDate: map['lastPublishDate'] == null ? null : map['lastPublishDate']! as String,
      name: map['name'] as String,
      providers: map['providers'] == null ? null : (map['providers']! as List).cast<String>(),
      publisherDisplayName: map['publisherDisplayName'] == null ? null : map['publisherDisplayName']! as String,
      source: map['source'] == null ? null : MetadataSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>()),
      support: map['support'] == null ? null : MetadataSupportResponse.fromMap((map['support']! as Map).cast<String, dynamic>()),
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      threatAnalysisTactics: map['threatAnalysisTactics'] == null ? null : (map['threatAnalysisTactics']! as List).cast<String>(),
      threatAnalysisTechniques: map['threatAnalysisTechniques'] == null ? null : (map['threatAnalysisTechniques']! as List).cast<String>(),
      type: map['type'] as String,
      version: map['version'] as String,
    );
  }
}


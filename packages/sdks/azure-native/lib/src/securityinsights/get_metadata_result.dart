// ignore_for_file: unused_element, unnecessary_cast

import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';

/// Result data returned by getMetadata.
class GetMetadataResult {
  /// The creator of the content item.
  final MetadataAuthorResponse? author;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Categories for the solution content item
  final MetadataCategoriesResponse? categories;
  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  final String? contentId;
  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  final String? contentSchemaVersion;
  /// The custom version of the content. A optional free text
  final String? customVersion;
  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  final MetadataDependenciesResponse? dependencies;
  /// Etag of the azure resource
  final String? etag;
  /// first publish date solution content item
  final String? firstPublishDate;
  /// the icon identifier. this id can later be fetched from the solution template
  final String? icon;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The kind of content the metadata is for.
  final String kind;
  /// last publish date for the solution content item
  final String? lastPublishDate;
  /// The name of the resource
  final String name;
  /// Full parent resource ID of the content item the metadata is for.  This is the full resource ID including the scope (subscription and resource group)
  final String parentId;
  /// preview image file names. These will be taken from the solution artifacts
  final List<String>? previewImages;
  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  final List<String>? previewImagesDark;
  /// Providers for the solution content item
  final List<String>? providers;
  /// Source of the content.  This is where/how it was created.
  final MetadataSourceResponse? source;
  /// Support information for the metadata - type, name, contact information
  final MetadataSupportResponse? support;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// the tactics the resource covers
  final List<String>? threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final List<String>? threatAnalysisTechniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices.  Can also be any string, but then we cannot guarantee any version checks
  final String? version;

  /// Creates a new [GetMetadataResult].
  /// [author] The creator of the content item.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [categories] Categories for the solution content item
  /// [contentId] Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  /// [contentSchemaVersion] Schema version of the content. Can be used to distinguish between different flow based on the schema version
  /// [customVersion] The custom version of the content. A optional free text
  /// [dependencies] Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  /// [etag] Etag of the azure resource
  /// [firstPublishDate] first publish date solution content item
  /// [icon] the icon identifier. this id can later be fetched from the solution template
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [kind] The kind of content the metadata is for.
  /// [lastPublishDate] last publish date for the solution content item
  /// [name] The name of the resource
  /// [parentId] Full parent resource ID of the content item the metadata is for.  This is the full resource ID including the scope (subscription and resource group)
  /// [previewImages] preview image file names. These will be taken from the solution artifacts
  /// [previewImagesDark] preview image file names. These will be taken from the solution artifacts. used for dark theme support
  /// [providers] Providers for the solution content item
  /// [source] Source of the content.  This is where/how it was created.
  /// [support] Support information for the metadata - type, name, contact information
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM template best practices.  Can also be any string, but then we cannot guarantee any version checks
  const GetMetadataResult({
    this.author,
    required this.azureApiVersion,
    this.categories,
    this.contentId,
    this.contentSchemaVersion,
    this.customVersion,
    this.dependencies,
    this.etag,
    this.firstPublishDate,
    this.icon,
    required this.id,
    required this.kind,
    this.lastPublishDate,
    required this.name,
    required this.parentId,
    this.previewImages,
    this.previewImagesDark,
    this.providers,
    this.source,
    this.support,
    required this.systemData,
    this.threatAnalysisTactics,
    this.threatAnalysisTechniques,
    required this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author?.toMap(),
      'azureApiVersion': azureApiVersion,
      'categories': ?categories?.toMap(),
      'contentId': ?contentId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'customVersion': ?customVersion,
      'dependencies': ?dependencies?.toMap(),
      'etag': ?etag,
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'id': id,
      'kind': kind,
      'lastPublishDate': ?lastPublishDate,
      'name': name,
      'parentId': parentId,
      'previewImages': ?previewImages,
      'previewImagesDark': ?previewImagesDark,
      'providers': ?providers,
      'source': ?source?.toMap(),
      'support': ?support?.toMap(),
      'systemData': systemData.toMap(),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'type': type,
      'version': ?version,
    };
  }

  factory GetMetadataResult.fromMap(Map<String, dynamic> map) {
    return GetMetadataResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return MetadataAuthorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: map['azureApiVersion'] as String,
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return MetadataCategoriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      contentId: (() { final guardedValue = map['contentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentSchemaVersion: (() { final guardedValue = map['contentSchemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customVersion: (() { final guardedValue = map['customVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return MetadataDependenciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstPublishDate: (() { final guardedValue = map['firstPublishDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      lastPublishDate: (() { final guardedValue = map['lastPublishDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      parentId: map['parentId'] as String,
      previewImages: (() { final guardedValue = map['previewImages']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      previewImagesDark: (() { final guardedValue = map['previewImagesDark']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return MetadataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      support: (() { final guardedValue = map['support']; if (guardedValue == null) return null; return MetadataSupportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      threatAnalysisTactics: (() { final guardedValue = map['threatAnalysisTactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      threatAnalysisTechniques: (() { final guardedValue = map['threatAnalysisTechniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: map['type'] as String,
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}


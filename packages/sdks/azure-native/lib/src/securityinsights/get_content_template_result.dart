// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author_response.dart';
import 'metadata_categories_response.dart';
import 'metadata_dependencies_response.dart';
import 'metadata_source_response.dart';
import 'metadata_support_response.dart';
import 'system_data_response.dart';
import 'template_properties_response.dart';

/// Result data returned by getContentTemplate.
class GetContentTemplateResult {
  /// The creator of the content item.
  final MetadataAuthorResponse? author;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Categories for the item
  final MetadataCategoriesResponse? categories;
  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  final String? contentId;
  /// The kind of content the template is for.
  final String? contentKind;
  /// Unique ID for the content. It should be generated based on the contentId of the package, contentId of the template, contentKind of the template and the contentVersion of the template
  final String? contentProductId;
  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  final String? contentSchemaVersion;
  /// The custom version of the content. A optional free text
  final String? customVersion;
  /// Dependant templates. Expandable.
  final List<TemplatePropertiesResponse>? dependantTemplates;
  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  final MetadataDependenciesResponse? dependencies;
  /// The display name of the template
  final String? displayName;
  /// Etag of the azure resource
  final String? etag;
  /// first publish date content item
  final String? firstPublishDate;
  /// the icon identifier. this id can later be fetched from the content metadata
  final String? icon;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// Flag indicates if this template is deprecated
  final String? isDeprecated;
  /// last publish date for the content item
  final String? lastPublishDate;
  /// The JSON of the ARM template to deploy active content. Expandable.
  final dynamic mainTemplate;
  /// The name of the resource
  final String? name;
  /// the package Id contains this template
  final String? packageId;
  /// the packageKind of the package contains this template
  final String? packageKind;
  /// the name of the package contains this template
  final String? packageName;
  /// Version of the package.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  final String? packageVersion;
  /// preview image file names. These will be taken from the solution artifacts
  final List<String>? previewImages;
  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  final List<String>? previewImagesDark;
  /// Providers for the content item
  final List<String>? providers;
  /// Source of the content.  This is where/how it was created.
  final MetadataSourceResponse? source;
  /// Support information for the template - type, name, contact information
  final MetadataSupportResponse? support;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// the tactics the resource covers
  final List<String>? threatAnalysisTactics;
  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final List<String>? threatAnalysisTechniques;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  final String? version;

  /// Creates a new [GetContentTemplateResult].
  /// [author] The creator of the content item.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [categories] Categories for the item
  /// [contentId] Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  /// [contentKind] The kind of content the template is for.
  /// [contentProductId] Unique ID for the content. It should be generated based on the contentId of the package, contentId of the template, contentKind of the template and the contentVersion of the template
  /// [contentSchemaVersion] Schema version of the content. Can be used to distinguish between different flow based on the schema version
  /// [customVersion] The custom version of the content. A optional free text
  /// [dependantTemplates] Dependant templates. Expandable.
  /// [dependencies] Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  /// [displayName] The display name of the template
  /// [etag] Etag of the azure resource
  /// [firstPublishDate] first publish date content item
  /// [icon] the icon identifier. this id can later be fetched from the content metadata
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [isDeprecated] Flag indicates if this template is deprecated
  /// [lastPublishDate] last publish date for the content item
  /// [mainTemplate] The JSON of the ARM template to deploy active content. Expandable.
  /// [name] The name of the resource
  /// [packageId] the package Id contains this template
  /// [packageKind] the packageKind of the package contains this template
  /// [packageName] the name of the package contains this template
  /// [packageVersion] Version of the package.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  /// [previewImages] preview image file names. These will be taken from the solution artifacts
  /// [previewImagesDark] preview image file names. These will be taken from the solution artifacts. used for dark theme support
  /// [providers] Providers for the content item
  /// [source] Source of the content.  This is where/how it was created.
  /// [support] Support information for the template - type, name, contact information
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [version] Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  const GetContentTemplateResult({
    this.author,
    this.azureApiVersion,
    this.categories,
    this.contentId,
    this.contentKind,
    this.contentProductId,
    this.contentSchemaVersion,
    this.customVersion,
    this.dependantTemplates,
    this.dependencies,
    this.displayName,
    this.etag,
    this.firstPublishDate,
    this.icon,
    this.id,
    this.isDeprecated,
    this.lastPublishDate,
    this.mainTemplate,
    this.name,
    this.packageId,
    this.packageKind,
    this.packageName,
    this.packageVersion,
    this.previewImages,
    this.previewImagesDark,
    this.providers,
    this.source,
    this.support,
    this.systemData,
    this.threatAnalysisTactics,
    this.threatAnalysisTechniques,
    this.type,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author?.toMap(),
      'azureApiVersion': ?azureApiVersion,
      'categories': ?categories?.toMap(),
      'contentId': ?contentId,
      'contentKind': ?contentKind,
      'contentProductId': ?contentProductId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'customVersion': ?customVersion,
      'dependantTemplates': ?(() { final guardedValue = dependantTemplates; if (guardedValue == null) return null; return pulumi.Input.encodeList<TemplatePropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dependencies': ?dependencies?.toMap(),
      'displayName': ?displayName,
      'etag': ?etag,
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'id': ?id,
      'isDeprecated': ?isDeprecated,
      'lastPublishDate': ?lastPublishDate,
      'mainTemplate': ?mainTemplate,
      'name': ?name,
      'packageId': ?packageId,
      'packageKind': ?packageKind,
      'packageName': ?packageName,
      'packageVersion': ?packageVersion,
      'previewImages': ?previewImages,
      'previewImagesDark': ?previewImagesDark,
      'providers': ?providers,
      'source': ?source?.toMap(),
      'support': ?support?.toMap(),
      'systemData': ?systemData?.toMap(),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'type': ?type,
      'version': ?version,
    };
  }

  factory GetContentTemplateResult.fromMap(Map<String, dynamic> map) {
    return GetContentTemplateResult(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return MetadataAuthorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      categories: (() { final guardedValue = map['categories']; if (guardedValue == null) return null; return MetadataCategoriesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      contentId: (() { final guardedValue = map['contentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentKind: (() { final guardedValue = map['contentKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentProductId: (() { final guardedValue = map['contentProductId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      contentSchemaVersion: (() { final guardedValue = map['contentSchemaVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      customVersion: (() { final guardedValue = map['customVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dependantTemplates: (() { final guardedValue = map['dependantTemplates']; if (guardedValue == null) return null; return pulumi.Input.decodeList<TemplatePropertiesResponse>(guardedValue, (value) => TemplatePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      dependencies: (() { final guardedValue = map['dependencies']; if (guardedValue == null) return null; return MetadataDependenciesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firstPublishDate: (() { final guardedValue = map['firstPublishDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      icon: (() { final guardedValue = map['icon']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isDeprecated: (() { final guardedValue = map['isDeprecated']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastPublishDate: (() { final guardedValue = map['lastPublishDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      mainTemplate: (() { final guardedValue = map['mainTemplate']; if (guardedValue == null) return null; return guardedValue; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageId: (() { final guardedValue = map['packageId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageKind: (() { final guardedValue = map['packageKind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageName: (() { final guardedValue = map['packageName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      packageVersion: (() { final guardedValue = map['packageVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      previewImages: (() { final guardedValue = map['previewImages']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      previewImagesDark: (() { final guardedValue = map['previewImagesDark']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return MetadataSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      support: (() { final guardedValue = map['support']; if (guardedValue == null) return null; return MetadataSupportResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      threatAnalysisTactics: (() { final guardedValue = map['threatAnalysisTactics']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      threatAnalysisTechniques: (() { final guardedValue = map['threatAnalysisTechniques']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

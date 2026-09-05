// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author.dart';
import 'metadata_category.dart';
import 'metadata_source.dart';
import 'metadata_support.dart';

/// {@template pulumi_sentinel_metadata_metadata_args_doc}
/// The set of arguments for Metadata.
/// {@endtemplate}
/// {@macro pulumi_sentinel_metadata_metadata_args_doc}
class MetadataArgs {
  /// An `author` blocks as defined below.
  final pulumi.Input<MetadataAuthor?>? author;
  /// A `category` block as defined below.
  final pulumi.Input<MetadataCategory?>? category;
  /// The ID of the content. Used to identify dependencies and content from solutions or community.
  final pulumi.Input<String> contentId;
  /// Schema version of the content. Can be used to distinguish between flow based on the schema version.
  final pulumi.Input<String?>? contentSchemaVersion;
  /// The Custom version of the content.
  final pulumi.Input<String?>? customVersion;
  /// A JSON formatted `dependency` block as defined below. Dependency for the content item, what other content items it requires to work.
  final pulumi.Input<String?>? dependency;
  /// The first publish date of solution content item.
  final pulumi.Input<String?>? firstPublishDate;
  /// The ID of the icon, this id can be fetched from the solution template.
  final pulumi.Input<String?>? iconId;
  /// The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`.
  final pulumi.Input<String> kind;
  /// The last publish date of solution content item.
  final pulumi.Input<String?>? lastPublishDate;
  /// The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created.
  final pulumi.Input<String?>? name;
  /// The ID of the parent resource ID of the content item, which the metadata belongs to.
  final pulumi.Input<String> parentId;
  /// Specifies a list of preview image file names. These will be taken from solution artifacts.
  final pulumi.Input<List<String>?>? previewImages;
  /// Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts.
  final pulumi.Input<List<String>?>? previewImagesDarks;
  /// Specifies a list of providers for the solution content item.
  final pulumi.Input<List<String>?>? providers;
  /// A `source` block as defined below.
  final pulumi.Input<MetadataSource?>? source;
  /// A `support` block as defined below.
  final pulumi.Input<MetadataSupport?>? support;
  /// Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`.
  final pulumi.Input<List<String>?>? threatAnalysisTactics;
  /// Specifies a list of techniques the resource covers.
  final pulumi.Input<List<String>?>? threatAnalysisTechniques;
  /// Version of the content.
  final pulumi.Input<String?>? version;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [MetadataArgs].
  /// [author] An `author` blocks as defined below.
  /// [category] A `category` block as defined below.
  /// [contentId] The ID of the content. Used to identify dependencies and content from solutions or community.
  /// [contentSchemaVersion] Schema version of the content. Can be used to distinguish between flow based on the schema version.
  /// [customVersion] The Custom version of the content.
  /// [dependency] A JSON formatted `dependency` block as defined below. Dependency for the content item, what other content items it requires to work.
  /// [firstPublishDate] The first publish date of solution content item.
  /// [iconId] The ID of the icon, this id can be fetched from the solution template.
  /// [kind] The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`.
  /// [lastPublishDate] The last publish date of solution content item.
  /// [name] The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created.
  /// [parentId] The ID of the parent resource ID of the content item, which the metadata belongs to.
  /// [previewImages] Specifies a list of preview image file names. These will be taken from solution artifacts.
  /// [previewImagesDarks] Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts.
  /// [providers] Specifies a list of providers for the solution content item.
  /// [source] A `source` block as defined below.
  /// [support] A `support` block as defined below.
  /// [threatAnalysisTactics] Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`.
  /// [threatAnalysisTechniques] Specifies a list of techniques the resource covers.
  /// [version] Version of the content.
  /// [workspaceId] The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created.
  const MetadataArgs({
    this.author,
    this.category,
    required this.contentId,
    this.contentSchemaVersion,
    this.customVersion,
    this.dependency,
    this.firstPublishDate,
    this.iconId,
    required this.kind,
    this.lastPublishDate,
    this.name,
    required this.parentId,
    this.previewImages,
    this.previewImagesDarks,
    this.providers,
    this.source,
    this.support,
    this.threatAnalysisTactics,
    this.threatAnalysisTechniques,
    this.version,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?pulumi.Input.mapOptionalInputValue<MetadataAuthor, Map<String, dynamic>>(author, (value) => value.toMap()),
      'category': ?pulumi.Input.mapOptionalInputValue<MetadataCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
      'contentId': contentId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'customVersion': ?customVersion,
      'dependency': ?dependency,
      'firstPublishDate': ?firstPublishDate,
      'iconId': ?iconId,
      'kind': kind,
      'lastPublishDate': ?lastPublishDate,
      'name': ?name,
      'parentId': parentId,
      'previewImages': ?previewImages,
      'previewImagesDarks': ?previewImagesDarks,
      'providers': ?providers,
      'source': ?pulumi.Input.mapOptionalInputValue<MetadataSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'support': ?pulumi.Input.mapOptionalInputValue<MetadataSupport, Map<String, dynamic>>(support, (value) => value.toMap()),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': ?version,
      'workspaceId': workspaceId,
    };
  }

  factory MetadataArgs.fromMap(Map<String, dynamic> map) {
    return MetadataArgs(
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataAuthor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      category: (() { final guardedValue = map['category']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataCategory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      contentId: pulumi.Input.fromValue(map['contentId'] as String),
      contentSchemaVersion: (() { final guardedValue = map['contentSchemaVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customVersion: (() { final guardedValue = map['customVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dependency: (() { final guardedValue = map['dependency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstPublishDate: (() { final guardedValue = map['firstPublishDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconId: (() { final guardedValue = map['iconId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      lastPublishDate: (() { final guardedValue = map['lastPublishDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parentId: pulumi.Input.fromValue(map['parentId'] as String),
      previewImages: (() { final guardedValue = map['previewImages']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      previewImagesDarks: (() { final guardedValue = map['previewImagesDarks']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      providers: (() { final guardedValue = map['providers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      support: (() { final guardedValue = map['support']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MetadataSupport.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      threatAnalysisTactics: (() { final guardedValue = map['threatAnalysisTactics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      threatAnalysisTechniques: (() { final guardedValue = map['threatAnalysisTechniques']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}

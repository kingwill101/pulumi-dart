// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author.dart';
import 'metadata_category.dart';
import 'metadata_source.dart';
import 'metadata_support.dart';

/// Input properties used for looking up and filtering Metadata resources.
class MetadataState {
  /// An `author` blocks as defined below.
  final pulumi.Input<MetadataAuthor>? author;
  /// A `category` block as defined below.
  final pulumi.Input<MetadataCategory>? category;
  /// The ID of the content. Used to identify dependencies and content from solutions or community.
  final pulumi.Input<String>? contentId;
  /// Schema version of the content. Can be used to distinguish between flow based on the schema version.
  final pulumi.Input<String>? contentSchemaVersion;
  /// The Custom version of the content.
  final pulumi.Input<String>? customVersion;
  /// A JSON formatted `dependency` block as defined below. Dependency for the content item, what other content items it requires to work.
  final pulumi.Input<String>? dependency;
  /// The first publish date of solution content item.
  final pulumi.Input<String>? firstPublishDate;
  /// The ID of the icon, this id can be fetched from the solution template.
  final pulumi.Input<String>? iconId;
  /// The kind of content the metadata is for. Possible values are `AnalyticsRule`, `AnalyticsRuleTemplate`, `AutomationRule`, `AzureFunction`, `DataConnector`, `DataType`, `HuntingQuery`, `InvestigationQuery`, `LogicAppsCustomConnector`, `Parser`, `Playbook`, `PlaybookTemplate`, `Solution`, `Watchlist`, `WatchlistTemplate`, `Workbook` and `WorkbookTemplate`.
  final pulumi.Input<String>? kind;
  /// The last publish date of solution content item.
  final pulumi.Input<String>? lastPublishDate;
  /// The name which should be used for this Sentinel Metadata. Changing this forces a new Sentinel Metadata to be created.
  final pulumi.Input<String>? name;
  /// The ID of the parent resource ID of the content item, which the metadata belongs to.
  final pulumi.Input<String>? parentId;
  /// Specifies a list of preview image file names. These will be taken from solution artifacts.
  final pulumi.Input<List<String>>? previewImages;
  /// Specifies a list of preview image file names used for dark theme. These will be taken from solution artifacts.
  final pulumi.Input<List<String>>? previewImagesDarks;
  /// Specifies a list of providers for the solution content item.
  final pulumi.Input<List<String>>? providers;
  /// A `source` block as defined below.
  final pulumi.Input<MetadataSource>? source;
  /// A `support` block as defined below.
  final pulumi.Input<MetadataSupport>? support;
  /// Specifies a list of tactics the resource covers. Possible values are `Reconnaissance`, `ResourceDevelopment`, `InitialAccess`, `Execution`, `Persistence`, `PrivilegeEscalation`, `DefenseEvasion`, `CredentialAccess`, `Discovery`, `LateralMovement`, `Collection`, `CommandAndControl`, `Exfiltration`, `Impact`, `ImpairProcessControl` and `InhibitResponseFunction`.
  final pulumi.Input<List<String>>? threatAnalysisTactics;
  /// Specifies a list of techniques the resource covers.
  final pulumi.Input<List<String>>? threatAnalysisTechniques;
  /// Version of the content.
  final pulumi.Input<String>? version;
  /// The ID of the Log Analytics Workspace. Changing this forces a new Sentinel Metadata to be created.
  final pulumi.Input<String>? workspaceId;

  /// Creates a new [MetadataState].
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
  MetadataState({
    this.author,
    this.category,
    this.contentId,
    this.contentSchemaVersion,
    this.customVersion,
    this.dependency,
    this.firstPublishDate,
    this.iconId,
    this.kind,
    this.lastPublishDate,
    this.name,
    this.parentId,
    this.previewImages,
    this.previewImagesDarks,
    this.providers,
    this.source,
    this.support,
    this.threatAnalysisTactics,
    this.threatAnalysisTechniques,
    this.version,
    this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?pulumi.Input.mapOptionalInputValue<MetadataAuthor, Map<String, dynamic>>(author, (value) => value.toMap()),
      'category': ?pulumi.Input.mapOptionalInputValue<MetadataCategory, Map<String, dynamic>>(category, (value) => value.toMap()),
      'contentId': ?contentId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'customVersion': ?customVersion,
      'dependency': ?dependency,
      'firstPublishDate': ?firstPublishDate,
      'iconId': ?iconId,
      'kind': ?kind,
      'lastPublishDate': ?lastPublishDate,
      'name': ?name,
      'parentId': ?parentId,
      'previewImages': ?previewImages,
      'previewImagesDarks': ?previewImagesDarks,
      'providers': ?providers,
      'source': ?pulumi.Input.mapOptionalInputValue<MetadataSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'support': ?pulumi.Input.mapOptionalInputValue<MetadataSupport, Map<String, dynamic>>(support, (value) => value.toMap()),
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': ?version,
      'workspaceId': ?workspaceId,
    };
  }

  factory MetadataState.fromMap(Map<String, dynamic> map) {
    return MetadataState(
      author: map['author'] == null ? null : (MetadataAuthor.fromMap((map['author'] as Map).cast<String, dynamic>())).input(),
      category: map['category'] == null ? null : (MetadataCategory.fromMap((map['category'] as Map).cast<String, dynamic>())).input(),
      contentId: map['contentId'] == null ? null : (map['contentId'] as String).input(),
      contentSchemaVersion: map['contentSchemaVersion'] == null ? null : (map['contentSchemaVersion'] as String).input(),
      customVersion: map['customVersion'] == null ? null : (map['customVersion'] as String).input(),
      dependency: map['dependency'] == null ? null : (map['dependency'] as String).input(),
      firstPublishDate: map['firstPublishDate'] == null ? null : (map['firstPublishDate'] as String).input(),
      iconId: map['iconId'] == null ? null : (map['iconId'] as String).input(),
      kind: map['kind'] == null ? null : (map['kind'] as String).input(),
      lastPublishDate: map['lastPublishDate'] == null ? null : (map['lastPublishDate'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      parentId: map['parentId'] == null ? null : (map['parentId'] as String).input(),
      previewImages: map['previewImages'] == null ? null : ((map['previewImages'] as List).cast<String>()).input(),
      previewImagesDarks: map['previewImagesDarks'] == null ? null : ((map['previewImagesDarks'] as List).cast<String>()).input(),
      providers: map['providers'] == null ? null : ((map['providers'] as List).cast<String>()).input(),
      source: map['source'] == null ? null : (MetadataSource.fromMap((map['source'] as Map).cast<String, dynamic>())).input(),
      support: map['support'] == null ? null : (MetadataSupport.fromMap((map['support'] as Map).cast<String, dynamic>())).input(),
      threatAnalysisTactics: map['threatAnalysisTactics'] == null ? null : ((map['threatAnalysisTactics'] as List).cast<String>()).input(),
      threatAnalysisTechniques: map['threatAnalysisTechniques'] == null ? null : ((map['threatAnalysisTechniques'] as List).cast<String>()).input(),
      version: map['version'] == null ? null : (map['version'] as String).input(),
      workspaceId: map['workspaceId'] == null ? null : (map['workspaceId'] as String).input(),
    );
  }
}


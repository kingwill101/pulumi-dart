// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metadata_author.dart';
import 'metadata_categories.dart';
import 'metadata_dependencies.dart';
import 'metadata_source.dart';
import 'metadata_support.dart';

/// {@template pulumi_securityinsights_content_template_args_doc}
/// The set of arguments for ContentTemplate.
/// {@endtemplate}
/// {@macro pulumi_securityinsights_content_template_args_doc}
class ContentTemplateArgs {
  /// The creator of the content item.
  final pulumi.Input<MetadataAuthor>? author;

  /// Categories for the item
  final pulumi.Input<MetadataCategories>? categories;

  /// Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  final pulumi.Input<String> contentId;

  /// The kind of content the template is for.
  final pulumi.Input<String> contentKind;

  /// Unique ID for the content. It should be generated based on the contentId of the package, contentId of the template, contentKind of the template and the contentVersion of the template
  final pulumi.Input<String> contentProductId;

  /// Schema version of the content. Can be used to distinguish between different flow based on the schema version
  final pulumi.Input<String>? contentSchemaVersion;

  /// The custom version of the content. A optional free text
  final pulumi.Input<String>? customVersion;

  /// Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  final pulumi.Input<MetadataDependencies>? dependencies;

  /// The display name of the template
  final pulumi.Input<String> displayName;

  /// first publish date content item
  final pulumi.Input<String>? firstPublishDate;

  /// the icon identifier. this id can later be fetched from the content metadata
  final pulumi.Input<String>? icon;

  /// last publish date for the content item
  final pulumi.Input<String>? lastPublishDate;

  /// The JSON of the ARM template to deploy active content. Expandable.
  final pulumi.Input<dynamic>? mainTemplate;

  /// the package Id contains this template
  final pulumi.Input<String> packageId;

  /// the packageKind of the package contains this template
  final pulumi.Input<String>? packageKind;

  /// the name of the package contains this template
  final pulumi.Input<String>? packageName;

  /// Version of the package.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  final pulumi.Input<String> packageVersion;

  /// preview image file names. These will be taken from the solution artifacts
  final pulumi.Input<List<String>>? previewImages;

  /// preview image file names. These will be taken from the solution artifacts. used for dark theme support
  final pulumi.Input<List<String>>? previewImagesDark;

  /// Providers for the content item
  final pulumi.Input<List<String>>? providers;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Source of the content.  This is where/how it was created.
  final pulumi.Input<MetadataSource> source;

  /// Support information for the template - type, name, contact information
  final pulumi.Input<MetadataSupport>? support;

  /// template Id
  final pulumi.Input<String>? templateId;

  /// the tactics the resource covers
  final pulumi.Input<List<String>>? threatAnalysisTactics;

  /// the techniques the resource covers, these have to be aligned with the tactics being used
  final pulumi.Input<List<String>>? threatAnalysisTechniques;

  /// Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  final pulumi.Input<String> version;

  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ContentTemplateArgs].
  /// [author] The creator of the content item.
  /// [categories] Categories for the item
  /// [contentId] Static ID for the content.  Used to identify dependencies and content from solutions or community.  Hard-coded/static for out of the box content and solutions. Dynamic for user-created.  This is the resource name
  /// [contentKind] The kind of content the template is for.
  /// [contentProductId] Unique ID for the content. It should be generated based on the contentId of the package, contentId of the template, contentKind of the template and the contentVersion of the template
  /// [contentSchemaVersion] Schema version of the content. Can be used to distinguish between different flow based on the schema version
  /// [customVersion] The custom version of the content. A optional free text
  /// [dependencies] Dependencies for the content item, what other content items it requires to work.  Can describe more complex dependencies using a recursive/nested structure. For a single dependency an id/kind/version can be supplied or operator/criteria for complex formats.
  /// [displayName] The display name of the template
  /// [firstPublishDate] first publish date content item
  /// [icon] the icon identifier. this id can later be fetched from the content metadata
  /// [lastPublishDate] last publish date for the content item
  /// [mainTemplate] The JSON of the ARM template to deploy active content. Expandable.
  /// [packageId] the package Id contains this template
  /// [packageKind] the packageKind of the package contains this template
  /// [packageName] the name of the package contains this template
  /// [packageVersion] Version of the package.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  /// [previewImages] preview image file names. These will be taken from the solution artifacts
  /// [previewImagesDark] preview image file names. These will be taken from the solution artifacts. used for dark theme support
  /// [providers] Providers for the content item
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [source] Source of the content.  This is where/how it was created.
  /// [support] Support information for the template - type, name, contact information
  /// [templateId] template Id
  /// [threatAnalysisTactics] the tactics the resource covers
  /// [threatAnalysisTechniques] the techniques the resource covers, these have to be aligned with the tactics being used
  /// [version] Version of the content.  Default and recommended format is numeric (e.g. 1, 1.0, 1.0.0, 1.0.0.0), following ARM metadata best practices.  Can also be any string, but then we cannot guarantee any version checks
  /// [workspaceName] The name of the workspace.
  ContentTemplateArgs({
    this.author,
    this.categories,
    required this.contentId,
    required this.contentKind,
    required this.contentProductId,
    this.contentSchemaVersion,
    this.customVersion,
    this.dependencies,
    required this.displayName,
    this.firstPublishDate,
    this.icon,
    this.lastPublishDate,
    this.mainTemplate,
    required this.packageId,
    this.packageKind,
    this.packageName,
    required this.packageVersion,
    this.previewImages,
    this.previewImagesDark,
    this.providers,
    required this.resourceGroupName,
    required this.source,
    this.support,
    this.templateId,
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
      'customVersion': ?customVersion,
      'dependencies':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataDependencies,
            Map<String, dynamic>
          >(dependencies, (value) => value.toMap()),
      'displayName': displayName,
      'firstPublishDate': ?firstPublishDate,
      'icon': ?icon,
      'lastPublishDate': ?lastPublishDate,
      'mainTemplate': ?mainTemplate,
      'packageId': packageId,
      'packageKind': ?packageKind,
      'packageName': ?packageName,
      'packageVersion': packageVersion,
      'previewImages': ?previewImages,
      'previewImagesDark': ?previewImagesDark,
      'providers': ?providers,
      'resourceGroupName': resourceGroupName,
      'source':
          pulumi.Input.mapInputValue<MetadataSource, Map<String, dynamic>>(
            source,
            (value) => value.toMap(),
          ),
      'support':
          ?pulumi.Input.mapOptionalInputValue<
            MetadataSupport,
            Map<String, dynamic>
          >(support, (value) => value.toMap()),
      'templateId': ?templateId,
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory ContentTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ContentTemplateArgs(
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
      customVersion: (() {
        final guardedValue = map['customVersion'];
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
      lastPublishDate: (() {
        final guardedValue = map['lastPublishDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mainTemplate: (() {
        final guardedValue = map['mainTemplate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue);
      })(),
      packageId: pulumi.Input.fromValue(map['packageId'] as String),
      packageKind: (() {
        final guardedValue = map['packageKind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageName: (() {
        final guardedValue = map['packageName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      packageVersion: pulumi.Input.fromValue(map['packageVersion'] as String),
      previewImages: (() {
        final guardedValue = map['previewImages'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      previewImagesDark: (() {
        final guardedValue = map['previewImagesDark'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      providers: (() {
        final guardedValue = map['providers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      source: pulumi.Input.fromValue(
        MetadataSource.fromMap((map['source']! as Map).cast<String, dynamic>()),
      ),
      support: (() {
        final guardedValue = map['support'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetadataSupport.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      templateId: (() {
        final guardedValue = map['templateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
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

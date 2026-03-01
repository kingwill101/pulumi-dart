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
    pulumi.Output<MetadataAuthor>? author,
    pulumi.Output<MetadataCategories>? categories,
    required pulumi.Output<String> contentId,
    required pulumi.Output<String> contentKind,
    required pulumi.Output<String> contentProductId,
    pulumi.Output<String>? contentSchemaVersion,
    pulumi.Output<String>? customVersion,
    pulumi.Output<MetadataDependencies>? dependencies,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? firstPublishDate,
    pulumi.Output<String>? icon,
    pulumi.Output<String>? lastPublishDate,
    pulumi.Output<dynamic>? mainTemplate,
    required pulumi.Output<String> packageId,
    pulumi.Output<String>? packageKind,
    pulumi.Output<String>? packageName,
    required pulumi.Output<String> packageVersion,
    pulumi.Output<List<String>>? previewImages,
    pulumi.Output<List<String>>? previewImagesDark,
    pulumi.Output<List<String>>? providers,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<MetadataSource> source,
    pulumi.Output<MetadataSupport>? support,
    pulumi.Output<String>? templateId,
    pulumi.Output<List<String>>? threatAnalysisTactics,
    pulumi.Output<List<String>>? threatAnalysisTechniques,
    required pulumi.Output<String> version,
    required pulumi.Output<String> workspaceName,
  }) :
      author = pulumi.Input.asOptionalInput<MetadataAuthor>(author),
      categories = pulumi.Input.asOptionalInput<MetadataCategories>(categories),
      contentId = pulumi.Input.asInput<String>(contentId),
      contentKind = pulumi.Input.asInput<String>(contentKind),
      contentProductId = pulumi.Input.asInput<String>(contentProductId),
      contentSchemaVersion = pulumi.Input.asOptionalInput<String>(contentSchemaVersion),
      customVersion = pulumi.Input.asOptionalInput<String>(customVersion),
      dependencies = pulumi.Input.asOptionalInput<MetadataDependencies>(dependencies),
      displayName = pulumi.Input.asInput<String>(displayName),
      firstPublishDate = pulumi.Input.asOptionalInput<String>(firstPublishDate),
      icon = pulumi.Input.asOptionalInput<String>(icon),
      lastPublishDate = pulumi.Input.asOptionalInput<String>(lastPublishDate),
      mainTemplate = pulumi.Input.asOptionalInput<dynamic>(mainTemplate),
      packageId = pulumi.Input.asInput<String>(packageId),
      packageKind = pulumi.Input.asOptionalInput<String>(packageKind),
      packageName = pulumi.Input.asOptionalInput<String>(packageName),
      packageVersion = pulumi.Input.asInput<String>(packageVersion),
      previewImages = pulumi.Input.asOptionalInput<List<String>>(previewImages),
      previewImagesDark = pulumi.Input.asOptionalInput<List<String>>(previewImagesDark),
      providers = pulumi.Input.asOptionalInput<List<String>>(providers),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      source = pulumi.Input.asInput<MetadataSource>(source),
      support = pulumi.Input.asOptionalInput<MetadataSupport>(support),
      templateId = pulumi.Input.asOptionalInput<String>(templateId),
      threatAnalysisTactics = pulumi.Input.asOptionalInput<List<String>>(threatAnalysisTactics),
      threatAnalysisTechniques = pulumi.Input.asOptionalInput<List<String>>(threatAnalysisTechniques),
      version = pulumi.Input.asInput<String>(version),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?pulumi.Input.mapOptionalInputValue<MetadataAuthor, Map<String, dynamic>>(author, (value) => value.toMap()),
      'categories': ?pulumi.Input.mapOptionalInputValue<MetadataCategories, Map<String, dynamic>>(categories, (value) => value.toMap()),
      'contentId': contentId,
      'contentKind': contentKind,
      'contentProductId': contentProductId,
      'contentSchemaVersion': ?contentSchemaVersion,
      'customVersion': ?customVersion,
      'dependencies': ?pulumi.Input.mapOptionalInputValue<MetadataDependencies, Map<String, dynamic>>(dependencies, (value) => value.toMap()),
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
      'source': pulumi.Input.mapInputValue<MetadataSource, Map<String, dynamic>>(source, (value) => value.toMap()),
      'support': ?pulumi.Input.mapOptionalInputValue<MetadataSupport, Map<String, dynamic>>(support, (value) => value.toMap()),
      'templateId': ?templateId,
      'threatAnalysisTactics': ?threatAnalysisTactics,
      'threatAnalysisTechniques': ?threatAnalysisTechniques,
      'version': version,
      'workspaceName': workspaceName,
    };
  }

  factory ContentTemplateArgs.fromMap(Map<String, dynamic> map) {
    return ContentTemplateArgs(
      author: map['author'] == null ? null : pulumi.Output.create<MetadataAuthor>(MetadataAuthor.fromMap((map['author'] as Map).cast<String, dynamic>())),
      categories: map['categories'] == null ? null : pulumi.Output.create<MetadataCategories>(MetadataCategories.fromMap((map['categories'] as Map).cast<String, dynamic>())),
      contentId: pulumi.Output.create<String>(map['contentId'] as String),
      contentKind: pulumi.Output.create<String>(map['contentKind'] as String),
      contentProductId: pulumi.Output.create<String>(map['contentProductId'] as String),
      contentSchemaVersion: map['contentSchemaVersion'] == null ? null : pulumi.Output.create<String>(map['contentSchemaVersion'] as String),
      customVersion: map['customVersion'] == null ? null : pulumi.Output.create<String>(map['customVersion'] as String),
      dependencies: map['dependencies'] == null ? null : pulumi.Output.create<MetadataDependencies>(MetadataDependencies.fromMap((map['dependencies'] as Map).cast<String, dynamic>())),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      firstPublishDate: map['firstPublishDate'] == null ? null : pulumi.Output.create<String>(map['firstPublishDate'] as String),
      icon: map['icon'] == null ? null : pulumi.Output.create<String>(map['icon'] as String),
      lastPublishDate: map['lastPublishDate'] == null ? null : pulumi.Output.create<String>(map['lastPublishDate'] as String),
      mainTemplate: map['mainTemplate'] == null ? null : pulumi.Output.create<dynamic>(map['mainTemplate']),
      packageId: pulumi.Output.create<String>(map['packageId'] as String),
      packageKind: map['packageKind'] == null ? null : pulumi.Output.create<String>(map['packageKind'] as String),
      packageName: map['packageName'] == null ? null : pulumi.Output.create<String>(map['packageName'] as String),
      packageVersion: pulumi.Output.create<String>(map['packageVersion'] as String),
      previewImages: map['previewImages'] == null ? null : pulumi.Output.create<List<String>>((map['previewImages'] as List).cast<String>()),
      previewImagesDark: map['previewImagesDark'] == null ? null : pulumi.Output.create<List<String>>((map['previewImagesDark'] as List).cast<String>()),
      providers: map['providers'] == null ? null : pulumi.Output.create<List<String>>((map['providers'] as List).cast<String>()),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      source: pulumi.Output.create<MetadataSource>(MetadataSource.fromMap((map['source'] as Map).cast<String, dynamic>())),
      support: map['support'] == null ? null : pulumi.Output.create<MetadataSupport>(MetadataSupport.fromMap((map['support'] as Map).cast<String, dynamic>())),
      templateId: map['templateId'] == null ? null : pulumi.Output.create<String>(map['templateId'] as String),
      threatAnalysisTactics: map['threatAnalysisTactics'] == null ? null : pulumi.Output.create<List<String>>((map['threatAnalysisTactics'] as List).cast<String>()),
      threatAnalysisTechniques: map['threatAnalysisTechniques'] == null ? null : pulumi.Output.create<List<String>>((map['threatAnalysisTechniques'] as List).cast<String>()),
      version: pulumi.Output.create<String>(map['version'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workbook_template_gallery.dart';

/// Input properties used for looking up and filtering WorkbookTemplate resources.
class WorkbookTemplateState {
  /// Information about the author of the workbook template.
  final pulumi.Input<String>? author;
  /// A `galleries` block as defined below.
  final pulumi.Input<List<WorkbookTemplateGallery>>? galleries;
  /// Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  final pulumi.Input<String>? localized;
  /// Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created.
  final pulumi.Input<String>? location;
  /// Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created.
  final pulumi.Input<String>? name;
  /// Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to `0`.
  final pulumi.Input<int>? priority;
  /// Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A mapping of tags which should be assigned to the Application Insights Workbook Template.
  final pulumi.Input<Map<String, String>>? tags;
  /// Valid JSON object containing workbook template payload.
  final pulumi.Input<String>? templateData;

  /// Creates a new [WorkbookTemplateState].
  /// [author] Information about the author of the workbook template.
  /// [galleries] A `galleries` block as defined below.
  /// [localized] Key value pairs of localized gallery. Each key is the locale code of languages supported by the Azure portal.
  /// [location] Specifies the Azure Region where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created.
  /// [name] Specifies the name which should be used for this Application Insights Workbook Template. Changing this forces a new Application Insights Workbook Template to be created.
  /// [priority] Priority of the template. Determines which template to open when a workbook gallery is opened in viewer mode. Defaults to `0`.
  /// [resourceGroupName] Specifies the name of the Resource Group where the Application Insights Workbook Template should exist. Changing this forces a new Application Insights Workbook Template to be created.
  /// [tags] A mapping of tags which should be assigned to the Application Insights Workbook Template.
  /// [templateData] Valid JSON object containing workbook template payload.
  WorkbookTemplateState({
    pulumi.Output<String>? author,
    pulumi.Output<List<WorkbookTemplateGallery>>? galleries,
    pulumi.Output<String>? localized,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<int>? priority,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? templateData,
  }) :
      author = pulumi.Input.asOptionalInput<String>(author),
      galleries = pulumi.Input.asOptionalInput<List<WorkbookTemplateGallery>>(galleries),
      localized = pulumi.Input.asOptionalInput<String>(localized),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      priority = pulumi.Input.asOptionalInput<int>(priority),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      templateData = pulumi.Input.asOptionalInput<String>(templateData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': ?author,
      'galleries': ?pulumi.Input.mapOptionalInputValue<List<WorkbookTemplateGallery>, List<Map<String, dynamic>>>(galleries, (value) => pulumi.Input.encodeList<WorkbookTemplateGallery, Map<String, dynamic>>(value, (value) => value.toMap())),
      'localized': ?localized,
      'location': ?location,
      'name': ?name,
      'priority': ?priority,
      'resourceGroupName': ?resourceGroupName,
      'tags': ?tags,
      'templateData': ?templateData,
    };
  }

  factory WorkbookTemplateState.fromMap(Map<String, dynamic> map) {
    return WorkbookTemplateState(
      author: map['author'] == null ? null : pulumi.Output.create<String>(map['author'] as String),
      galleries: map['galleries'] == null ? null : pulumi.Output.create<List<WorkbookTemplateGallery>>(pulumi.Input.decodeList<WorkbookTemplateGallery>(map['galleries'], (value) => WorkbookTemplateGallery.fromMap((value as Map).cast<String, dynamic>()))),
      localized: map['localized'] == null ? null : pulumi.Output.create<String>(map['localized'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      priority: map['priority'] == null ? null : pulumi.Output.create<int>(map['priority'] as int),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      templateData: map['templateData'] == null ? null : pulumi.Output.create<String>(map['templateData'] as String),
    );
  }
}


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
    this.author,
    this.galleries,
    this.localized,
    this.location,
    this.name,
    this.priority,
    this.resourceGroupName,
    this.tags,
    this.templateData,
  });

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
      author: (() { final guardedValue = map['author']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      galleries: (() { final guardedValue = map['galleries']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<WorkbookTemplateGallery>(guardedValue, (value) => WorkbookTemplateGallery.fromMap((value as Map).cast<String, dynamic>()))); })(),
      localized: (() { final guardedValue = map['localized']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      priority: (() { final guardedValue = map['priority']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateData: (() { final guardedValue = map['templateData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_export_export_data_options.dart';
import 'resource_group_cost_management_export_export_data_storage_location.dart';

/// Input properties used for looking up and filtering ResourceGroupCostManagementExport resources.
class ResourceGroupCostManagementExportState {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool>? active;
  /// A `export_data_options` block as defined below.
  final pulumi.Input<ResourceGroupCostManagementExportExportDataOptions>? exportDataOptions;
  /// A `export_data_storage_location` block as defined below.
  final pulumi.Input<ResourceGroupCostManagementExportExportDataStorageLocation>? exportDataStorageLocation;
  /// Format for export. Valid values are `Csv` only. Default is `Csv`.
  final pulumi.Input<String>? fileFormat;
  /// Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The date the export will stop capturing information.
  final pulumi.Input<String>? recurrencePeriodEndDate;
  /// The date the export will start capturing information.
  final pulumi.Input<String>? recurrencePeriodStartDate;
  /// How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  final pulumi.Input<String>? recurrenceType;
  /// The id of the resource group on which to create an export. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupId;

  /// Creates a new [ResourceGroupCostManagementExportState].
  /// [active] Is the cost management export active? Default is `true`.
  /// [exportDataOptions] A `export_data_options` block as defined below.
  /// [exportDataStorageLocation] A `export_data_storage_location` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  /// [resourceGroupId] The id of the resource group on which to create an export. Changing this forces a new resource to be created.
  const ResourceGroupCostManagementExportState({
    this.active,
    this.exportDataOptions,
    this.exportDataStorageLocation,
    this.fileFormat,
    this.name,
    this.recurrencePeriodEndDate,
    this.recurrencePeriodStartDate,
    this.recurrenceType,
    this.resourceGroupId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'exportDataOptions': ?pulumi.Input.mapOptionalInputValue<ResourceGroupCostManagementExportExportDataOptions, Map<String, dynamic>>(exportDataOptions, (value) => value.toMap()),
      'exportDataStorageLocation': ?pulumi.Input.mapOptionalInputValue<ResourceGroupCostManagementExportExportDataStorageLocation, Map<String, dynamic>>(exportDataStorageLocation, (value) => value.toMap()),
      'fileFormat': ?fileFormat,
      'name': ?name,
      'recurrencePeriodEndDate': ?recurrencePeriodEndDate,
      'recurrencePeriodStartDate': ?recurrencePeriodStartDate,
      'recurrenceType': ?recurrenceType,
      'resourceGroupId': ?resourceGroupId,
    };
  }

  factory ResourceGroupCostManagementExportState.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementExportState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportDataOptions: (() { final guardedValue = map['exportDataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceGroupCostManagementExportExportDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportDataStorageLocation: (() { final guardedValue = map['exportDataStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ResourceGroupCostManagementExportExportDataStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodEndDate: (() { final guardedValue = map['recurrencePeriodEndDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodStartDate: (() { final guardedValue = map['recurrencePeriodStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceType: (() { final guardedValue = map['recurrenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


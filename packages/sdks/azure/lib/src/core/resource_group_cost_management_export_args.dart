// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_group_cost_management_export_export_data_options.dart';
import 'resource_group_cost_management_export_export_data_storage_location.dart';

/// {@template pulumi_core_resource_group_cost_management_export_resource_group_cost_management_export_args_doc}
/// The set of arguments for ResourceGroupCostManagementExport.
/// {@endtemplate}
/// {@macro pulumi_core_resource_group_cost_management_export_resource_group_cost_management_export_args_doc}
class ResourceGroupCostManagementExportArgs {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool>? active;
  /// A `export_data_options` block as defined below.
  final pulumi.Input<ResourceGroupCostManagementExportExportDataOptions> exportDataOptions;
  /// A `export_data_storage_location` block as defined below.
  final pulumi.Input<ResourceGroupCostManagementExportExportDataStorageLocation> exportDataStorageLocation;
  /// Format for export. Valid values are `Csv` only. Default is `Csv`.
  final pulumi.Input<String>? fileFormat;
  /// Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The date the export will stop capturing information.
  final pulumi.Input<String> recurrencePeriodEndDate;
  /// The date the export will start capturing information.
  final pulumi.Input<String> recurrencePeriodStartDate;
  /// How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  final pulumi.Input<String> recurrenceType;
  /// The id of the resource group on which to create an export. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupId;

  /// Creates a new [ResourceGroupCostManagementExportArgs].
  /// [active] Is the cost management export active? Default is `true`.
  /// [exportDataOptions] A `export_data_options` block as defined below.
  /// [exportDataStorageLocation] A `export_data_storage_location` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  /// [resourceGroupId] The id of the resource group on which to create an export. Changing this forces a new resource to be created.
  ResourceGroupCostManagementExportArgs({
    pulumi.Output<bool>? active,
    required pulumi.Output<ResourceGroupCostManagementExportExportDataOptions> exportDataOptions,
    required pulumi.Output<ResourceGroupCostManagementExportExportDataStorageLocation> exportDataStorageLocation,
    pulumi.Output<String>? fileFormat,
    pulumi.Output<String>? name,
    required pulumi.Output<String> recurrencePeriodEndDate,
    required pulumi.Output<String> recurrencePeriodStartDate,
    required pulumi.Output<String> recurrenceType,
    required pulumi.Output<String> resourceGroupId,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      exportDataOptions = pulumi.Input.asInput<ResourceGroupCostManagementExportExportDataOptions>(exportDataOptions),
      exportDataStorageLocation = pulumi.Input.asInput<ResourceGroupCostManagementExportExportDataStorageLocation>(exportDataStorageLocation),
      fileFormat = pulumi.Input.asOptionalInput<String>(fileFormat),
      name = pulumi.Input.asOptionalInput<String>(name),
      recurrencePeriodEndDate = pulumi.Input.asInput<String>(recurrencePeriodEndDate),
      recurrencePeriodStartDate = pulumi.Input.asInput<String>(recurrencePeriodStartDate),
      recurrenceType = pulumi.Input.asInput<String>(recurrenceType),
      resourceGroupId = pulumi.Input.asInput<String>(resourceGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'exportDataOptions': pulumi.Input.mapInputValue<ResourceGroupCostManagementExportExportDataOptions, Map<String, dynamic>>(exportDataOptions, (value) => value.toMap()),
      'exportDataStorageLocation': pulumi.Input.mapInputValue<ResourceGroupCostManagementExportExportDataStorageLocation, Map<String, dynamic>>(exportDataStorageLocation, (value) => value.toMap()),
      'fileFormat': ?fileFormat,
      'name': ?name,
      'recurrencePeriodEndDate': recurrencePeriodEndDate,
      'recurrencePeriodStartDate': recurrencePeriodStartDate,
      'recurrenceType': recurrenceType,
      'resourceGroupId': resourceGroupId,
    };
  }

  factory ResourceGroupCostManagementExportArgs.fromMap(Map<String, dynamic> map) {
    return ResourceGroupCostManagementExportArgs(
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      exportDataOptions: pulumi.Output.create<ResourceGroupCostManagementExportExportDataOptions>(ResourceGroupCostManagementExportExportDataOptions.fromMap((map['exportDataOptions'] as Map).cast<String, dynamic>())),
      exportDataStorageLocation: pulumi.Output.create<ResourceGroupCostManagementExportExportDataStorageLocation>(ResourceGroupCostManagementExportExportDataStorageLocation.fromMap((map['exportDataStorageLocation'] as Map).cast<String, dynamic>())),
      fileFormat: map['fileFormat'] == null ? null : pulumi.Output.create<String>(map['fileFormat'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recurrencePeriodEndDate: pulumi.Output.create<String>(map['recurrencePeriodEndDate'] as String),
      recurrencePeriodStartDate: pulumi.Output.create<String>(map['recurrencePeriodStartDate'] as String),
      recurrenceType: pulumi.Output.create<String>(map['recurrenceType'] as String),
      resourceGroupId: pulumi.Output.create<String>(map['resourceGroupId'] as String),
    );
  }
}


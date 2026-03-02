// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_cost_management_export_export_data_options.dart';
import 'account_cost_management_export_export_data_storage_location.dart';

/// {@template pulumi_billing_account_cost_management_export_account_cost_management_export_args_doc}
/// The set of arguments for AccountCostManagementExport.
/// {@endtemplate}
/// {@macro pulumi_billing_account_cost_management_export_account_cost_management_export_args_doc}
class AccountCostManagementExportArgs {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool>? active;
  /// The id of the billing account on which to create an export. Changing this forces a new resource to be created.
  final pulumi.Input<String> billingAccountId;
  /// A `export_data_options` block as defined below.
  final pulumi.Input<AccountCostManagementExportExportDataOptions> exportDataOptions;
  /// A `export_data_storage_location` block as defined below.
  final pulumi.Input<AccountCostManagementExportExportDataStorageLocation> exportDataStorageLocation;
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

  /// Creates a new [AccountCostManagementExportArgs].
  /// [active] Is the cost management export active? Default is `true`.
  /// [billingAccountId] The id of the billing account on which to create an export. Changing this forces a new resource to be created.
  /// [exportDataOptions] A `export_data_options` block as defined below.
  /// [exportDataStorageLocation] A `export_data_storage_location` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  AccountCostManagementExportArgs({
    this.active,
    required this.billingAccountId,
    required this.exportDataOptions,
    required this.exportDataStorageLocation,
    this.fileFormat,
    this.name,
    required this.recurrencePeriodEndDate,
    required this.recurrencePeriodStartDate,
    required this.recurrenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'billingAccountId': billingAccountId,
      'exportDataOptions': pulumi.Input.mapInputValue<AccountCostManagementExportExportDataOptions, Map<String, dynamic>>(exportDataOptions, (value) => value.toMap()),
      'exportDataStorageLocation': pulumi.Input.mapInputValue<AccountCostManagementExportExportDataStorageLocation, Map<String, dynamic>>(exportDataStorageLocation, (value) => value.toMap()),
      'fileFormat': ?fileFormat,
      'name': ?name,
      'recurrencePeriodEndDate': recurrencePeriodEndDate,
      'recurrencePeriodStartDate': recurrencePeriodStartDate,
      'recurrenceType': recurrenceType,
    };
  }

  factory AccountCostManagementExportArgs.fromMap(Map<String, dynamic> map) {
    return AccountCostManagementExportArgs(
      active: map['active'] == null ? null : (map['active'] as bool).input(),
      billingAccountId: (map['billingAccountId'] as String).input(),
      exportDataOptions: (AccountCostManagementExportExportDataOptions.fromMap((map['exportDataOptions'] as Map).cast<String, dynamic>())).input(),
      exportDataStorageLocation: (AccountCostManagementExportExportDataStorageLocation.fromMap((map['exportDataStorageLocation'] as Map).cast<String, dynamic>())).input(),
      fileFormat: map['fileFormat'] == null ? null : (map['fileFormat'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      recurrencePeriodEndDate: (map['recurrencePeriodEndDate'] as String).input(),
      recurrencePeriodStartDate: (map['recurrencePeriodStartDate'] as String).input(),
      recurrenceType: (map['recurrenceType'] as String).input(),
    );
  }
}


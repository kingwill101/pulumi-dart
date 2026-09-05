// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_cost_management_export_export_data_options.dart';
import 'account_cost_management_export_export_data_storage_location.dart';

/// Input properties used for looking up and filtering AccountCostManagementExport resources.
class AccountCostManagementExportState {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool?>? active;
  /// The id of the billing account on which to create an export. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? billingAccountId;
  /// A `exportDataOptions` block as defined below.
  final pulumi.Input<AccountCostManagementExportExportDataOptions?>? exportDataOptions;
  /// A `exportDataStorageLocation` block as defined below.
  final pulumi.Input<AccountCostManagementExportExportDataStorageLocation?>? exportDataStorageLocation;
  /// Format for export. Valid values are `Csv` only. Default is `Csv`.
  final pulumi.Input<String?>? fileFormat;
  /// Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  final pulumi.Input<String?>? name;
  /// The date the export will stop capturing information.
  final pulumi.Input<String?>? recurrencePeriodEndDate;
  /// The date the export will start capturing information.
  final pulumi.Input<String?>? recurrencePeriodStartDate;
  /// How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  final pulumi.Input<String?>? recurrenceType;

  /// Creates a new [AccountCostManagementExportState].
  /// [active] Is the cost management export active? Default is `true`.
  /// [billingAccountId] The id of the billing account on which to create an export. Changing this forces a new resource to be created.
  /// [exportDataOptions] A `exportDataOptions` block as defined below.
  /// [exportDataStorageLocation] A `exportDataStorageLocation` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  const AccountCostManagementExportState({
    this.active,
    this.billingAccountId,
    this.exportDataOptions,
    this.exportDataStorageLocation,
    this.fileFormat,
    this.name,
    this.recurrencePeriodEndDate,
    this.recurrencePeriodStartDate,
    this.recurrenceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'billingAccountId': ?billingAccountId,
      'exportDataOptions': ?pulumi.Input.mapOptionalInputValue<AccountCostManagementExportExportDataOptions, Map<String, dynamic>>(exportDataOptions, (value) => value.toMap()),
      'exportDataStorageLocation': ?pulumi.Input.mapOptionalInputValue<AccountCostManagementExportExportDataStorageLocation, Map<String, dynamic>>(exportDataStorageLocation, (value) => value.toMap()),
      'fileFormat': ?fileFormat,
      'name': ?name,
      'recurrencePeriodEndDate': ?recurrencePeriodEndDate,
      'recurrencePeriodStartDate': ?recurrencePeriodStartDate,
      'recurrenceType': ?recurrenceType,
    };
  }

  factory AccountCostManagementExportState.fromMap(Map<String, dynamic> map) {
    return AccountCostManagementExportState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      billingAccountId: (() { final guardedValue = map['billingAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportDataOptions: (() { final guardedValue = map['exportDataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCostManagementExportExportDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportDataStorageLocation: (() { final guardedValue = map['exportDataStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AccountCostManagementExportExportDataStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodEndDate: (() { final guardedValue = map['recurrencePeriodEndDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodStartDate: (() { final guardedValue = map['recurrencePeriodStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceType: (() { final guardedValue = map['recurrenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

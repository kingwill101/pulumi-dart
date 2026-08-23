// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_export_export_data_options.dart';
import 'subscription_cost_management_export_export_data_storage_location.dart';

/// Input properties used for looking up and filtering SubscriptionCostManagementExport resources.
class SubscriptionCostManagementExportState {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool>? active;
  /// A `exportDataOptions` block as defined below.
  final pulumi.Input<SubscriptionCostManagementExportExportDataOptions>? exportDataOptions;
  /// A `exportDataStorageLocation` block as defined below.
  final pulumi.Input<SubscriptionCostManagementExportExportDataStorageLocation>? exportDataStorageLocation;
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
  /// The id of the subscription on which to create an export. Changing this forces a new resource to be created.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [SubscriptionCostManagementExportState].
  /// [active] Is the cost management export active? Default is `true`.
  /// [exportDataOptions] A `exportDataOptions` block as defined below.
  /// [exportDataStorageLocation] A `exportDataStorageLocation` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  /// [subscriptionId] The id of the subscription on which to create an export. Changing this forces a new resource to be created.
  const SubscriptionCostManagementExportState({
    this.active,
    this.exportDataOptions,
    this.exportDataStorageLocation,
    this.fileFormat,
    this.name,
    this.recurrencePeriodEndDate,
    this.recurrencePeriodStartDate,
    this.recurrenceType,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'exportDataOptions': ?pulumi.Input.mapOptionalInputValue<SubscriptionCostManagementExportExportDataOptions, Map<String, dynamic>>(exportDataOptions, (value) => value.toMap()),
      'exportDataStorageLocation': ?pulumi.Input.mapOptionalInputValue<SubscriptionCostManagementExportExportDataStorageLocation, Map<String, dynamic>>(exportDataStorageLocation, (value) => value.toMap()),
      'fileFormat': ?fileFormat,
      'name': ?name,
      'recurrencePeriodEndDate': ?recurrencePeriodEndDate,
      'recurrencePeriodStartDate': ?recurrencePeriodStartDate,
      'recurrenceType': ?recurrenceType,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory SubscriptionCostManagementExportState.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementExportState(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportDataOptions: (() { final guardedValue = map['exportDataOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionCostManagementExportExportDataOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      exportDataStorageLocation: (() { final guardedValue = map['exportDataStorageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriptionCostManagementExportExportDataStorageLocation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodEndDate: (() { final guardedValue = map['recurrencePeriodEndDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodStartDate: (() { final guardedValue = map['recurrencePeriodStartDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrenceType: (() { final guardedValue = map['recurrenceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: (() { final guardedValue = map['subscriptionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

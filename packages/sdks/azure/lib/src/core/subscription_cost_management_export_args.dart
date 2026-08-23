// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_export_export_data_options.dart';
import 'subscription_cost_management_export_export_data_storage_location.dart';

/// {@template pulumi_core_subscription_cost_management_export_subscription_cost_management_export_args_doc}
/// The set of arguments for SubscriptionCostManagementExport.
/// {@endtemplate}
/// {@macro pulumi_core_subscription_cost_management_export_subscription_cost_management_export_args_doc}
class SubscriptionCostManagementExportArgs {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool>? active;
  /// A `exportDataOptions` block as defined below.
  final pulumi.Input<SubscriptionCostManagementExportExportDataOptions> exportDataOptions;
  /// A `exportDataStorageLocation` block as defined below.
  final pulumi.Input<SubscriptionCostManagementExportExportDataStorageLocation> exportDataStorageLocation;
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
  /// The id of the subscription on which to create an export. Changing this forces a new resource to be created.
  final pulumi.Input<String> subscriptionId;

  /// Creates a new [SubscriptionCostManagementExportArgs].
  /// [active] Is the cost management export active? Default is `true`.
  /// [exportDataOptions] A `exportDataOptions` block as defined below.
  /// [exportDataStorageLocation] A `exportDataStorageLocation` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  /// [subscriptionId] The id of the subscription on which to create an export. Changing this forces a new resource to be created.
  const SubscriptionCostManagementExportArgs({
    this.active,
    required this.exportDataOptions,
    required this.exportDataStorageLocation,
    this.fileFormat,
    this.name,
    required this.recurrencePeriodEndDate,
    required this.recurrencePeriodStartDate,
    required this.recurrenceType,
    required this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'active': ?active,
      'exportDataOptions': pulumi.Input.mapInputValue<SubscriptionCostManagementExportExportDataOptions, Map<String, dynamic>>(exportDataOptions, (value) => value.toMap()),
      'exportDataStorageLocation': pulumi.Input.mapInputValue<SubscriptionCostManagementExportExportDataStorageLocation, Map<String, dynamic>>(exportDataStorageLocation, (value) => value.toMap()),
      'fileFormat': ?fileFormat,
      'name': ?name,
      'recurrencePeriodEndDate': recurrencePeriodEndDate,
      'recurrencePeriodStartDate': recurrencePeriodStartDate,
      'recurrenceType': recurrenceType,
      'subscriptionId': subscriptionId,
    };
  }

  factory SubscriptionCostManagementExportArgs.fromMap(Map<String, dynamic> map) {
    return SubscriptionCostManagementExportArgs(
      active: (() { final guardedValue = map['active']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exportDataOptions: pulumi.Input.fromValue(SubscriptionCostManagementExportExportDataOptions.fromMap((map['exportDataOptions']! as Map).cast<String, dynamic>())),
      exportDataStorageLocation: pulumi.Input.fromValue(SubscriptionCostManagementExportExportDataStorageLocation.fromMap((map['exportDataStorageLocation']! as Map).cast<String, dynamic>())),
      fileFormat: (() { final guardedValue = map['fileFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recurrencePeriodEndDate: pulumi.Input.fromValue(map['recurrencePeriodEndDate'] as String),
      recurrencePeriodStartDate: pulumi.Input.fromValue(map['recurrencePeriodStartDate'] as String),
      recurrenceType: pulumi.Input.fromValue(map['recurrenceType'] as String),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
    );
  }
}

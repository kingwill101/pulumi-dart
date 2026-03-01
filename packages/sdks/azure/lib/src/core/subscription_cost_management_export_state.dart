// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscription_cost_management_export_export_data_options.dart';
import 'subscription_cost_management_export_export_data_storage_location.dart';

/// Input properties used for looking up and filtering SubscriptionCostManagementExport resources.
class SubscriptionCostManagementExportState {
  /// Is the cost management export active? Default is `true`.
  final pulumi.Input<bool>? active;
  /// A `export_data_options` block as defined below.
  final pulumi.Input<SubscriptionCostManagementExportExportDataOptions>? exportDataOptions;
  /// A `export_data_storage_location` block as defined below.
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
  /// [exportDataOptions] A `export_data_options` block as defined below.
  /// [exportDataStorageLocation] A `export_data_storage_location` block as defined below.
  /// [fileFormat] Format for export. Valid values are `Csv` only. Default is `Csv`.
  /// [name] Specifies the name of the Cost Management Export. Changing this forces a new resource to be created.
  /// [recurrencePeriodEndDate] The date the export will stop capturing information.
  /// [recurrencePeriodStartDate] The date the export will start capturing information.
  /// [recurrenceType] How often the requested information will be exported. Valid values include `Annually`, `Daily`, `Monthly`, `Weekly`.
  /// [subscriptionId] The id of the subscription on which to create an export. Changing this forces a new resource to be created.
  SubscriptionCostManagementExportState({
    pulumi.Output<bool>? active,
    pulumi.Output<SubscriptionCostManagementExportExportDataOptions>? exportDataOptions,
    pulumi.Output<SubscriptionCostManagementExportExportDataStorageLocation>? exportDataStorageLocation,
    pulumi.Output<String>? fileFormat,
    pulumi.Output<String>? name,
    pulumi.Output<String>? recurrencePeriodEndDate,
    pulumi.Output<String>? recurrencePeriodStartDate,
    pulumi.Output<String>? recurrenceType,
    pulumi.Output<String>? subscriptionId,
  }) :
      active = pulumi.Input.asOptionalInput<bool>(active),
      exportDataOptions = pulumi.Input.asOptionalInput<SubscriptionCostManagementExportExportDataOptions>(exportDataOptions),
      exportDataStorageLocation = pulumi.Input.asOptionalInput<SubscriptionCostManagementExportExportDataStorageLocation>(exportDataStorageLocation),
      fileFormat = pulumi.Input.asOptionalInput<String>(fileFormat),
      name = pulumi.Input.asOptionalInput<String>(name),
      recurrencePeriodEndDate = pulumi.Input.asOptionalInput<String>(recurrencePeriodEndDate),
      recurrencePeriodStartDate = pulumi.Input.asOptionalInput<String>(recurrencePeriodStartDate),
      recurrenceType = pulumi.Input.asOptionalInput<String>(recurrenceType),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId);

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
      active: map['active'] == null ? null : pulumi.Output.create<bool>(map['active'] as bool),
      exportDataOptions: map['exportDataOptions'] == null ? null : pulumi.Output.create<SubscriptionCostManagementExportExportDataOptions>(SubscriptionCostManagementExportExportDataOptions.fromMap((map['exportDataOptions'] as Map).cast<String, dynamic>())),
      exportDataStorageLocation: map['exportDataStorageLocation'] == null ? null : pulumi.Output.create<SubscriptionCostManagementExportExportDataStorageLocation>(SubscriptionCostManagementExportExportDataStorageLocation.fromMap((map['exportDataStorageLocation'] as Map).cast<String, dynamic>())),
      fileFormat: map['fileFormat'] == null ? null : pulumi.Output.create<String>(map['fileFormat'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      recurrencePeriodEndDate: map['recurrencePeriodEndDate'] == null ? null : pulumi.Output.create<String>(map['recurrencePeriodEndDate'] as String),
      recurrencePeriodStartDate: map['recurrencePeriodStartDate'] == null ? null : pulumi.Output.create<String>(map['recurrencePeriodStartDate'] as String),
      recurrenceType: map['recurrenceType'] == null ? null : pulumi.Output.create<String>(map['recurrenceType'] as String),
      subscriptionId: map['subscriptionId'] == null ? null : pulumi.Output.create<String>(map['subscriptionId'] as String),
    );
  }
}


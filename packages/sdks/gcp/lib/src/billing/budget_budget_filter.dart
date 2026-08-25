// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'budget_budget_filter_custom_period.dart';

class BudgetBudgetFilter {
  /// A CalendarPeriod represents the abstract concept of a recurring time period that has a
  /// canonical start. Grammatically, "the start of the current CalendarPeriod".
  /// All calendar times begin at 12 AM US and Canadian Pacific Time (UTC-8).
  /// Exactly one of `calendarPeriod`, `customPeriod` must be provided.
  /// Possible values are: `MONTH`, `QUARTER`, `YEAR`, `CALENDAR_PERIOD_UNSPECIFIED`.
  final pulumi.Input<String?>? calendarPeriod;
  /// Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,
  /// this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See a list of acceptable credit type values.
  /// If creditTypesTreatment is not INCLUDE_SPECIFIED_CREDITS, this field must be empty.
  final pulumi.Input<List<String>?>? creditTypes;
  /// Specifies how credits should be treated when determining spend
  /// for threshold calculations.
  /// Default value is `INCLUDE_ALL_CREDITS`.
  /// Possible values are: `INCLUDE_ALL_CREDITS`, `EXCLUDE_ALL_CREDITS`, `INCLUDE_SPECIFIED_CREDITS`.
  final pulumi.Input<String?>? creditTypesTreatment;
  /// Specifies to track usage from any start date (required) to any end date (optional).
  /// This time period is static, it does not recur.
  /// Exactly one of `calendarPeriod`, `customPeriod` must be provided.
  /// Structure is documented below.
  final pulumi.Input<BudgetBudgetFilterCustomPeriod?>? customPeriod;
  /// A single label and value pair specifying that usage from only
  /// this set of labeled resources should be included in the budget.
  final pulumi.Input<Map<String, String>?>? labels;
  /// A set of projects of the form projects/{project_number},
  /// specifying that usage from only this set of projects should be
  /// included in the budget. If omitted, the report will include
  /// all usage for the billing account, regardless of which project
  /// the usage occurred on.
  final pulumi.Input<List<String>?>? projects;
  /// A set of folder and organization names of the form folders/{folderId} or organizations/{organizationId},
  /// specifying that usage from only this set of folders and organizations should be included in the budget.
  /// If omitted, the budget includes all usage that the billing account pays for. If the folder or organization
  /// contains projects that are paid for by a different Cloud Billing account, the budget doesn't apply to those projects.
  final pulumi.Input<List<String>?>? resourceAncestors;
  /// A set of services of the form services/{service_id},
  /// specifying that usage from only this set of services should be
  /// included in the budget. If omitted, the report will include
  /// usage for all the services. The service names are available
  /// through the Catalog API:
  /// https://cloud.google.com/billing/v1/how-tos/catalog-api.
  final pulumi.Input<List<String>?>? services;
  /// A set of subaccounts of the form billingAccounts/{account_id},
  /// specifying that usage from only this set of subaccounts should
  /// be included in the budget. If a subaccount is set to the name of
  /// the parent account, usage from the parent account will be included.
  /// If the field is omitted, the report will include usage from the parent
  /// account and all subaccounts, if they exist.
  final pulumi.Input<List<String>?>? subaccounts;

  /// Creates a new [BudgetBudgetFilter].
  /// [calendarPeriod] A CalendarPeriod represents the abstract concept of a recurring time period that has a
  /// [creditTypes] Optional. If creditTypesTreatment is INCLUDE_SPECIFIED_CREDITS,
  /// [creditTypesTreatment] Specifies how credits should be treated when determining spend
  /// [customPeriod] Specifies to track usage from any start date (required) to any end date (optional).
  /// [labels] A single label and value pair specifying that usage from only
  /// [projects] A set of projects of the form projects/{project_number},
  /// [resourceAncestors] A set of folder and organization names of the form folders/{folderId} or organizations/{organizationId},
  /// [services] A set of services of the form services/{service_id},
  /// [subaccounts] A set of subaccounts of the form billingAccounts/{account_id},
  const BudgetBudgetFilter({
    this.calendarPeriod,
    this.creditTypes,
    this.creditTypesTreatment,
    this.customPeriod,
    this.labels,
    this.projects,
    this.resourceAncestors,
    this.services,
    this.subaccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calendarPeriod': ?calendarPeriod,
      'creditTypes': ?creditTypes,
      'creditTypesTreatment': ?creditTypesTreatment,
      'customPeriod': ?pulumi.Input.mapOptionalInputValue<BudgetBudgetFilterCustomPeriod, Map<String, dynamic>>(customPeriod, (value) => value.toMap()),
      'labels': ?labels,
      'projects': ?projects,
      'resourceAncestors': ?resourceAncestors,
      'services': ?services,
      'subaccounts': ?subaccounts,
    };
  }

  factory BudgetBudgetFilter.fromMap(Map<String, dynamic> map) {
    return BudgetBudgetFilter(
      calendarPeriod: (() { final guardedValue = map['calendarPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creditTypes: (() { final guardedValue = map['creditTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      creditTypesTreatment: (() { final guardedValue = map['creditTypesTreatment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customPeriod: (() { final guardedValue = map['customPeriod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BudgetBudgetFilterCustomPeriod.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      projects: (() { final guardedValue = map['projects']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      resourceAncestors: (() { final guardedValue = map['resourceAncestors']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      services: (() { final guardedValue = map['services']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      subaccounts: (() { final guardedValue = map['subaccounts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

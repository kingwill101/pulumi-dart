// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_billing_budgets_v1beta1_custom_period_response.dart';

/// A filter for a budget, limiting the scope of the cost to calculate.
class GoogleCloudBillingBudgetsV1beta1FilterResponse {
  /// Optional. Specifies to track usage for recurring calendar period. For example, assume that CalendarPeriod.QUARTER is set. The budget will track usage from April 1 to June 30, when the current calendar month is April, May, June. After that, it will track usage from July 1 to September 30 when the current calendar month is July, August, September, so on.
  final pulumi.Input<String> calendarPeriod;
  /// Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See [a list of acceptable credit type values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type). If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS, this field must be empty.
  final pulumi.Input<List<String>> creditTypes;
  /// Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  final pulumi.Input<String> creditTypesTreatment;
  /// Optional. Specifies to track usage from any start date (required) to any end date (optional). This time period is static, it does not recur.
  final pulumi.Input<GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse> customPeriod;
  /// Optional. A single label and value pair specifying that usage from only this set of labeled resources should be included in the budget. If omitted, the report will include all labeled and unlabeled usage. An object containing a single `"key": value` pair. Example: `{ "name": "wrench" }`. _Currently, multiple entries or multiple values per entry are not allowed._
  final pulumi.Input<Map<String, String>> labels;
  /// Optional. A set of projects of the form `projects/{project}`, specifying that usage from only this set of projects should be included in the budget. If omitted, the report will include all usage for the billing account, regardless of which project the usage occurred on.
  final pulumi.Input<List<String>> projects;
  /// Optional. A set of folder and organization names of the form `folders/{folderId}` or `organizations/{organizationId}`, specifying that usage from only this set of folders and organizations should be included in the budget. If omitted, the budget includes all usage that the billing account pays for. If the folder or organization contains projects that are paid for by a different Cloud Billing account, the budget *doesn't* apply to those projects.
  final pulumi.Input<List<String>> resourceAncestors;
  /// Optional. A set of services of the form `services/{service_id}`, specifying that usage from only this set of services should be included in the budget. If omitted, the report will include usage for all the services. The service names are available through the Catalog API: https://cloud.google.com/billing/v1/how-tos/catalog-api.
  final pulumi.Input<List<String>> services;
  /// Optional. A set of subaccounts of the form `billingAccounts/{account_id}`, specifying that usage from only this set of subaccounts should be included in the budget. If a subaccount is set to the name of the parent account, usage from the parent account will be included. If omitted, the report will include usage from the parent account and all subaccounts, if they exist.
  final pulumi.Input<List<String>> subaccounts;

  /// Creates a new [GoogleCloudBillingBudgetsV1beta1FilterResponse].
  /// [calendarPeriod] Optional. Specifies to track usage for recurring calendar period. For example, assume that CalendarPeriod.QUARTER is set. The budget will track usage from April 1 to June 30, when the current calendar month is April, May, June. After that, it will track usage from July 1 to September 30 when the current calendar month is July, August, September, so on.
  /// [creditTypes] Optional. If Filter.credit_types_treatment is INCLUDE_SPECIFIED_CREDITS, this is a list of credit types to be subtracted from gross cost to determine the spend for threshold calculations. See [a list of acceptable credit type values](https://cloud.google.com/billing/docs/how-to/export-data-bigquery-tables#credits-type). If Filter.credit_types_treatment is **not** INCLUDE_SPECIFIED_CREDITS, this field must be empty.
  /// [creditTypesTreatment] Optional. If not set, default behavior is `INCLUDE_ALL_CREDITS`.
  /// [customPeriod] Optional. Specifies to track usage from any start date (required) to any end date (optional). This time period is static, it does not recur.
  /// [labels] Optional. A single label and value pair specifying that usage from only this set of labeled resources should be included in the budget. If omitted, the report will include all labeled and unlabeled usage. An object containing a single `"key": value` pair. Example: `{ "name": "wrench" }`. _Currently, multiple entries or multiple values per entry are not allowed._
  /// [projects] Optional. A set of projects of the form `projects/{project}`, specifying that usage from only this set of projects should be included in the budget. If omitted, the report will include all usage for the billing account, regardless of which project the usage occurred on.
  /// [resourceAncestors] Optional. A set of folder and organization names of the form `folders/{folderId}` or `organizations/{organizationId}`, specifying that usage from only this set of folders and organizations should be included in the budget. If omitted, the budget includes all usage that the billing account pays for. If the folder or organization contains projects that are paid for by a different Cloud Billing account, the budget *doesn't* apply to those projects.
  /// [services] Optional. A set of services of the form `services/{service_id}`, specifying that usage from only this set of services should be included in the budget. If omitted, the report will include usage for all the services. The service names are available through the Catalog API: https://cloud.google.com/billing/v1/how-tos/catalog-api.
  /// [subaccounts] Optional. A set of subaccounts of the form `billingAccounts/{account_id}`, specifying that usage from only this set of subaccounts should be included in the budget. If a subaccount is set to the name of the parent account, usage from the parent account will be included. If omitted, the report will include usage from the parent account and all subaccounts, if they exist.
  GoogleCloudBillingBudgetsV1beta1FilterResponse({
    required this.calendarPeriod,
    required this.creditTypes,
    required this.creditTypesTreatment,
    required this.customPeriod,
    required this.labels,
    required this.projects,
    required this.resourceAncestors,
    required this.services,
    required this.subaccounts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'calendarPeriod': calendarPeriod,
      'creditTypes': creditTypes,
      'creditTypesTreatment': creditTypesTreatment,
      'customPeriod': pulumi.Input.mapInputValue<GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse, Map<String, dynamic>>(customPeriod, (value) => value.toMap()),
      'labels': labels,
      'projects': projects,
      'resourceAncestors': resourceAncestors,
      'services': services,
      'subaccounts': subaccounts,
    };
  }

  factory GoogleCloudBillingBudgetsV1beta1FilterResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudBillingBudgetsV1beta1FilterResponse(
      calendarPeriod: (map['calendarPeriod'] as String).input(),
      creditTypes: ((map['creditTypes'] as List).cast<String>()).input(),
      creditTypesTreatment: (map['creditTypesTreatment'] as String).input(),
      customPeriod: (GoogleCloudBillingBudgetsV1beta1CustomPeriodResponse.fromMap((map['customPeriod'] as Map).cast<String, dynamic>())).input(),
      labels: ((map['labels'] as Map).cast<String, String>()).input(),
      projects: ((map['projects'] as List).cast<String>()).input(),
      resourceAncestors: ((map['resourceAncestors'] as List).cast<String>()).input(),
      services: ((map['services'] as List).cast<String>()).input(),
      subaccounts: ((map['subaccounts'] as List).cast<String>()).input(),
    );
  }
}


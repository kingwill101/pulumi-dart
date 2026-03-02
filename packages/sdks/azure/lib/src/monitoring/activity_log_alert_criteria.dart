// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_log_alert_criteria_resource_health.dart';
import 'activity_log_alert_criteria_service_health.dart';

class ActivityLogAlertCriteria {
  /// The email address or Azure Active Directory identifier of the user who performed the operation.
  final pulumi.Input<String>? caller;
  /// The category of the operation. Possible values are `Administrative`, `Autoscale`, `Policy`, `Recommendation`, `ResourceHealth`, `Security` and `ServiceHealth`.
  final pulumi.Input<String> category;
  /// The severity level of the event. Possible values are `Verbose`, `Informational`, `Warning`, `Error`, and `Critical`.
  final pulumi.Input<String>? level;
  /// A list of severity level of the event. Possible values are `Verbose`, `Informational`, `Warning`, `Error`, and `Critical`.
  ///
  /// > **Note:** `level` and `levels` are mutually exclusive.
  final pulumi.Input<List<String>>? levels;
  /// The Resource Manager Role-Based Access Control operation name. Supported operation should be of the form: `<resourceProvider>/<resourceType>/<operation>`.
  final pulumi.Input<String>? operationName;
  /// The recommendation category of the event. Possible values are `Cost`, `Reliability`, `OperationalExcellence`, `HighAvailability`, `Performance` and `Security`.
  final pulumi.Input<String>? recommendationCategory;
  /// The recommendation impact of the event. Possible values are `High`, `Medium` and `Low`.
  ///
  /// > **Note:** The `recommendation_type`, `recommendation_category`, and `recommendation_impact` fields can only be defined if the `category` field has been set to `Recommendation`.
  final pulumi.Input<String>? recommendationImpact;
  /// The recommendation type of the event.
  final pulumi.Input<String>? recommendationType;
  /// The name of resource group monitored by the activity log alert.
  final pulumi.Input<String>? resourceGroup;
  /// A list of names of resource groups monitored by the activity log alert.
  ///
  /// > **Note:** `resource_group` and `resource_groups` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceGroups;
  /// A block to define fine grain resource health settings.
  final pulumi.Input<ActivityLogAlertCriteriaResourceHealth>? resourceHealth;
  /// The specific resource monitored by the activity log alert. It should be within one of the `scopes`.
  final pulumi.Input<String>? resourceId;
  /// A list of specific resources monitored by the activity log alert. It should be within one of the `scopes`.
  ///
  /// > **Note:** `resource_id` and `resource_ids` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceIds;
  /// The name of the resource provider monitored by the activity log alert.
  final pulumi.Input<String>? resourceProvider;
  /// A list of names of resource providers monitored by the activity log alert.
  ///
  /// > **Note:** `resource_provider` and `resource_providers` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceProviders;
  /// The resource type monitored by the activity log alert.
  final pulumi.Input<String>? resourceType;
  /// A list of resource types monitored by the activity log alert.
  ///
  /// > **Note:** `resource_type` and `resource_types` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceTypes;
  /// A block to define fine grain service health settings.
  final pulumi.Input<ActivityLogAlertCriteriaServiceHealth>? serviceHealth;
  /// The status of the event. For example, `Started`, `Failed`, or `Succeeded`.
  final pulumi.Input<String>? status;
  /// A list of status of the event. For example, `Started`, `Failed`, or `Succeeded`.
  ///
  /// > **Note:** `status` and `statuses` are mutually exclusive.
  final pulumi.Input<List<String>>? statuses;
  /// The sub status of the event.
  final pulumi.Input<String>? subStatus;
  /// A list of sub status of the event.
  ///
  /// > **Note:** `sub_status` and `sub_statuses` are mutually exclusive.
  final pulumi.Input<List<String>>? subStatuses;

  /// Creates a new [ActivityLogAlertCriteria].
  /// [caller] The email address or Azure Active Directory identifier of the user who performed the operation.
  /// [category] The category of the operation. Possible values are `Administrative`, `Autoscale`, `Policy`, `Recommendation`, `ResourceHealth`, `Security` and `ServiceHealth`.
  /// [level] The severity level of the event. Possible values are `Verbose`, `Informational`, `Warning`, `Error`, and `Critical`.
  /// [levels] A list of severity level of the event. Possible values are `Verbose`, `Informational`, `Warning`, `Error`, and `Critical`.
  /// [operationName] The Resource Manager Role-Based Access Control operation name. Supported operation should be of the form: `<resourceProvider>/<resourceType>/<operation>`.
  /// [recommendationCategory] The recommendation category of the event. Possible values are `Cost`, `Reliability`, `OperationalExcellence`, `HighAvailability`, `Performance` and `Security`.
  /// [recommendationImpact] The recommendation impact of the event. Possible values are `High`, `Medium` and `Low`.
  /// [recommendationType] The recommendation type of the event.
  /// [resourceGroup] The name of resource group monitored by the activity log alert.
  /// [resourceGroups] A list of names of resource groups monitored by the activity log alert.
  /// [resourceHealth] A block to define fine grain resource health settings.
  /// [resourceId] The specific resource monitored by the activity log alert. It should be within one of the `scopes`.
  /// [resourceIds] A list of specific resources monitored by the activity log alert. It should be within one of the `scopes`.
  /// [resourceProvider] The name of the resource provider monitored by the activity log alert.
  /// [resourceProviders] A list of names of resource providers monitored by the activity log alert.
  /// [resourceType] The resource type monitored by the activity log alert.
  /// [resourceTypes] A list of resource types monitored by the activity log alert.
  /// [serviceHealth] A block to define fine grain service health settings.
  /// [status] The status of the event. For example, `Started`, `Failed`, or `Succeeded`.
  /// [statuses] A list of status of the event. For example, `Started`, `Failed`, or `Succeeded`.
  /// [subStatus] The sub status of the event.
  /// [subStatuses] A list of sub status of the event.
  ActivityLogAlertCriteria({
    this.caller,
    required this.category,
    this.level,
    this.levels,
    this.operationName,
    this.recommendationCategory,
    this.recommendationImpact,
    this.recommendationType,
    this.resourceGroup,
    this.resourceGroups,
    this.resourceHealth,
    this.resourceId,
    this.resourceIds,
    this.resourceProvider,
    this.resourceProviders,
    this.resourceType,
    this.resourceTypes,
    this.serviceHealth,
    this.status,
    this.statuses,
    this.subStatus,
    this.subStatuses,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caller': ?caller,
      'category': category,
      'level': ?level,
      'levels': ?levels,
      'operationName': ?operationName,
      'recommendationCategory': ?recommendationCategory,
      'recommendationImpact': ?recommendationImpact,
      'recommendationType': ?recommendationType,
      'resourceGroup': ?resourceGroup,
      'resourceGroups': ?resourceGroups,
      'resourceHealth': ?pulumi.Input.mapOptionalInputValue<ActivityLogAlertCriteriaResourceHealth, Map<String, dynamic>>(resourceHealth, (value) => value.toMap()),
      'resourceId': ?resourceId,
      'resourceIds': ?resourceIds,
      'resourceProvider': ?resourceProvider,
      'resourceProviders': ?resourceProviders,
      'resourceType': ?resourceType,
      'resourceTypes': ?resourceTypes,
      'serviceHealth': ?pulumi.Input.mapOptionalInputValue<ActivityLogAlertCriteriaServiceHealth, Map<String, dynamic>>(serviceHealth, (value) => value.toMap()),
      'status': ?status,
      'statuses': ?statuses,
      'subStatus': ?subStatus,
      'subStatuses': ?subStatuses,
    };
  }

  factory ActivityLogAlertCriteria.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertCriteria(
      caller: map['caller'] == null ? null : (map['caller'] as String).input(),
      category: (map['category'] as String).input(),
      level: map['level'] == null ? null : (map['level'] as String).input(),
      levels: map['levels'] == null ? null : ((map['levels'] as List).cast<String>()).input(),
      operationName: map['operationName'] == null ? null : (map['operationName'] as String).input(),
      recommendationCategory: map['recommendationCategory'] == null ? null : (map['recommendationCategory'] as String).input(),
      recommendationImpact: map['recommendationImpact'] == null ? null : (map['recommendationImpact'] as String).input(),
      recommendationType: map['recommendationType'] == null ? null : (map['recommendationType'] as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup'] as String).input(),
      resourceGroups: map['resourceGroups'] == null ? null : ((map['resourceGroups'] as List).cast<String>()).input(),
      resourceHealth: map['resourceHealth'] == null ? null : (ActivityLogAlertCriteriaResourceHealth.fromMap((map['resourceHealth'] as Map).cast<String, dynamic>())).input(),
      resourceId: map['resourceId'] == null ? null : (map['resourceId'] as String).input(),
      resourceIds: map['resourceIds'] == null ? null : ((map['resourceIds'] as List).cast<String>()).input(),
      resourceProvider: map['resourceProvider'] == null ? null : (map['resourceProvider'] as String).input(),
      resourceProviders: map['resourceProviders'] == null ? null : ((map['resourceProviders'] as List).cast<String>()).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      resourceTypes: map['resourceTypes'] == null ? null : ((map['resourceTypes'] as List).cast<String>()).input(),
      serviceHealth: map['serviceHealth'] == null ? null : (ActivityLogAlertCriteriaServiceHealth.fromMap((map['serviceHealth'] as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      statuses: map['statuses'] == null ? null : ((map['statuses'] as List).cast<String>()).input(),
      subStatus: map['subStatus'] == null ? null : (map['subStatus'] as String).input(),
      subStatuses: map['subStatuses'] == null ? null : ((map['subStatuses'] as List).cast<String>()).input(),
    );
  }
}


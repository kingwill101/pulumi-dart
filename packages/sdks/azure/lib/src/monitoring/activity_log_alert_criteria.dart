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
  /// &gt; **Note:** `level` and `levels` are mutually exclusive.
  final pulumi.Input<List<String>>? levels;

  /// The Resource Manager Role-Based Access Control operation name. Supported operation should be of the form: `&lt;resourceProvider&gt;/&lt;resourceType&gt;/&lt;operation&gt;`.
  final pulumi.Input<String>? operationName;

  /// The recommendation category of the event. Possible values are `Cost`, `Reliability`, `OperationalExcellence`, `HighAvailability`, `Performance` and `Security`.
  final pulumi.Input<String>? recommendationCategory;

  /// The recommendation impact of the event. Possible values are `High`, `Medium` and `Low`.
  ///
  /// &gt; **Note:** The `recommendation_type`, `recommendation_category`, and `recommendation_impact` fields can only be defined if the `category` field has been set to `Recommendation`.
  final pulumi.Input<String>? recommendationImpact;

  /// The recommendation type of the event.
  final pulumi.Input<String>? recommendationType;

  /// The name of resource group monitored by the activity log alert.
  final pulumi.Input<String>? resourceGroup;

  /// A list of names of resource groups monitored by the activity log alert.
  ///
  /// &gt; **Note:** `resource_group` and `resource_groups` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceGroups;

  /// A block to define fine grain resource health settings.
  final pulumi.Input<ActivityLogAlertCriteriaResourceHealth>? resourceHealth;

  /// The specific resource monitored by the activity log alert. It should be within one of the `scopes`.
  final pulumi.Input<String>? resourceId;

  /// A list of specific resources monitored by the activity log alert. It should be within one of the `scopes`.
  ///
  /// &gt; **Note:** `resource_id` and `resource_ids` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceIds;

  /// The name of the resource provider monitored by the activity log alert.
  final pulumi.Input<String>? resourceProvider;

  /// A list of names of resource providers monitored by the activity log alert.
  ///
  /// &gt; **Note:** `resource_provider` and `resource_providers` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceProviders;

  /// The resource type monitored by the activity log alert.
  final pulumi.Input<String>? resourceType;

  /// A list of resource types monitored by the activity log alert.
  ///
  /// &gt; **Note:** `resource_type` and `resource_types` are mutually exclusive.
  final pulumi.Input<List<String>>? resourceTypes;

  /// A block to define fine grain service health settings.
  final pulumi.Input<ActivityLogAlertCriteriaServiceHealth>? serviceHealth;

  /// The status of the event. For example, `Started`, `Failed`, or `Succeeded`.
  final pulumi.Input<String>? status;

  /// A list of status of the event. For example, `Started`, `Failed`, or `Succeeded`.
  ///
  /// &gt; **Note:** `status` and `statuses` are mutually exclusive.
  final pulumi.Input<List<String>>? statuses;

  /// The sub status of the event.
  final pulumi.Input<String>? subStatus;

  /// A list of sub status of the event.
  ///
  /// &gt; **Note:** `sub_status` and `sub_statuses` are mutually exclusive.
  final pulumi.Input<List<String>>? subStatuses;

  /// Creates a new [ActivityLogAlertCriteria].
  /// [caller] The email address or Azure Active Directory identifier of the user who performed the operation.
  /// [category] The category of the operation. Possible values are `Administrative`, `Autoscale`, `Policy`, `Recommendation`, `ResourceHealth`, `Security` and `ServiceHealth`.
  /// [level] The severity level of the event. Possible values are `Verbose`, `Informational`, `Warning`, `Error`, and `Critical`.
  /// [levels] A list of severity level of the event. Possible values are `Verbose`, `Informational`, `Warning`, `Error`, and `Critical`.
  /// [operationName] The Resource Manager Role-Based Access Control operation name. Supported operation should be of the form: `&lt;resourceProvider&gt;/&lt;resourceType&gt;/&lt;operation&gt;`.
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
      'resourceHealth':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityLogAlertCriteriaResourceHealth,
            Map<String, dynamic>
          >(resourceHealth, (value) => value.toMap()),
      'resourceId': ?resourceId,
      'resourceIds': ?resourceIds,
      'resourceProvider': ?resourceProvider,
      'resourceProviders': ?resourceProviders,
      'resourceType': ?resourceType,
      'resourceTypes': ?resourceTypes,
      'serviceHealth':
          ?pulumi.Input.mapOptionalInputValue<
            ActivityLogAlertCriteriaServiceHealth,
            Map<String, dynamic>
          >(serviceHealth, (value) => value.toMap()),
      'status': ?status,
      'statuses': ?statuses,
      'subStatus': ?subStatus,
      'subStatuses': ?subStatuses,
    };
  }

  factory ActivityLogAlertCriteria.fromMap(Map<String, dynamic> map) {
    return ActivityLogAlertCriteria(
      caller: (() {
        final guardedValue = map['caller'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      category: pulumi.Input.fromValue(map['category'] as String),
      level: (() {
        final guardedValue = map['level'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      levels: (() {
        final guardedValue = map['levels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      operationName: (() {
        final guardedValue = map['operationName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recommendationCategory: (() {
        final guardedValue = map['recommendationCategory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recommendationImpact: (() {
        final guardedValue = map['recommendationImpact'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recommendationType: (() {
        final guardedValue = map['recommendationType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroup: (() {
        final guardedValue = map['resourceGroup'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroups: (() {
        final guardedValue = map['resourceGroups'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceHealth: (() {
        final guardedValue = map['resourceHealth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityLogAlertCriteriaResourceHealth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      resourceId: (() {
        final guardedValue = map['resourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceIds: (() {
        final guardedValue = map['resourceIds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceProvider: (() {
        final guardedValue = map['resourceProvider'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceProviders: (() {
        final guardedValue = map['resourceProviders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      resourceType: (() {
        final guardedValue = map['resourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceTypes: (() {
        final guardedValue = map['resourceTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      serviceHealth: (() {
        final guardedValue = map['serviceHealth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ActivityLogAlertCriteriaServiceHealth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      statuses: (() {
        final guardedValue = map['statuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      subStatus: (() {
        final guardedValue = map['subStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subStatuses: (() {
        final guardedValue = map['subStatuses'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}

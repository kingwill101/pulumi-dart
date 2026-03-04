// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'metric_alert_action.dart';
import 'metric_alert_application_insights_web_test_location_availability_criteria.dart';
import 'metric_alert_criteria.dart';
import 'metric_alert_dynamic_criteria.dart';

/// Input properties used for looking up and filtering MetricAlert resources.
class MetricAlertState {
  /// One or more `action` blocks as defined below.
  final pulumi.Input<List<MetricAlertAction>>? actions;

  /// A `application_insights_web_test_location_availability_criteria` block as defined below.
  ///
  /// &gt; **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  final pulumi.Input<
    MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria
  >?
  applicationInsightsWebTestLocationAvailabilityCriteria;

  /// Should the alerts in this Metric Alert be auto resolved? Defaults to `true`.
  final pulumi.Input<bool>? autoMitigate;

  /// One or more (static) `criteria` blocks as defined below.
  ///
  /// &gt; **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  final pulumi.Input<List<MetricAlertCriteria>>? criterias;

  /// The description of this Metric Alert.
  final pulumi.Input<String>? description;

  /// A `dynamic_criteria` block as defined below.
  ///
  /// &gt; **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  final pulumi.Input<MetricAlertDynamicCriteria>? dynamicCriteria;

  /// Should this Metric Alert be enabled? Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M` and `PT1H`. Defaults to `PT1M`.
  final pulumi.Input<String>? frequency;

  /// The name of the Metric Alert. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;

  /// A set of strings of resource IDs at which the metric criteria should be applied.
  final pulumi.Input<List<String>>? scopes;

  /// The severity of this Metric Alert. Possible values are `0`, `1`, `2`, `3` and `4`. Defaults to `3`.
  final pulumi.Input<int>? severity;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// The location of the target resource.
  ///
  /// &gt; **Note:** This is Required when using a Subscription as scope, a Resource Group as scope or Multiple Scopes.
  final pulumi.Input<String>? targetResourceLocation;

  /// The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource.
  ///
  /// &gt; **Note:** This is Required when using a Subscription as scope, a Resource Group as scope or Multiple Scopes.
  final pulumi.Input<String>? targetResourceType;

  /// The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than `frequency`. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H` and `P1D`. Defaults to `PT5M`.
  final pulumi.Input<String>? windowSize;

  /// Creates a new [MetricAlertState].
  /// [actions] One or more `action` blocks as defined below.
  /// [applicationInsightsWebTestLocationAvailabilityCriteria] A `application_insights_web_test_location_availability_criteria` block as defined below.
  /// [autoMitigate] Should the alerts in this Metric Alert be auto resolved? Defaults to `true`.
  /// [criterias] One or more (static) `criteria` blocks as defined below.
  /// [description] The description of this Metric Alert.
  /// [dynamicCriteria] A `dynamic_criteria` block as defined below.
  /// [enabled] Should this Metric Alert be enabled? Defaults to `true`.
  /// [frequency] The evaluation frequency of this Metric Alert, represented in ISO 8601 duration format. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M` and `PT1H`. Defaults to `PT1M`.
  /// [name] The name of the Metric Alert. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Metric Alert instance. Changing this forces a new resource to be created.
  /// [scopes] A set of strings of resource IDs at which the metric criteria should be applied.
  /// [severity] The severity of this Metric Alert. Possible values are `0`, `1`, `2`, `3` and `4`. Defaults to `3`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [targetResourceLocation] The location of the target resource.
  /// [targetResourceType] The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource.
  /// [windowSize] The period of time that is used to monitor alert activity, represented in ISO 8601 duration format. This value must be greater than `frequency`. Possible values are `PT1M`, `PT5M`, `PT15M`, `PT30M`, `PT1H`, `PT6H`, `PT12H` and `P1D`. Defaults to `PT5M`.
  MetricAlertState({
    this.actions,
    this.applicationInsightsWebTestLocationAvailabilityCriteria,
    this.autoMitigate,
    this.criterias,
    this.description,
    this.dynamicCriteria,
    this.enabled,
    this.frequency,
    this.name,
    this.resourceGroupName,
    this.scopes,
    this.severity,
    this.tags,
    this.targetResourceLocation,
    this.targetResourceType,
    this.windowSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricAlertAction>,
            List<Map<String, dynamic>>
          >(
            actions,
            (value) =>
                pulumi.Input.encodeList<
                  MetricAlertAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'applicationInsightsWebTestLocationAvailabilityCriteria':
          ?pulumi.Input.mapOptionalInputValue<
            MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria,
            Map<String, dynamic>
          >(
            applicationInsightsWebTestLocationAvailabilityCriteria,
            (value) => value.toMap(),
          ),
      'autoMitigate': ?autoMitigate,
      'criterias':
          ?pulumi.Input.mapOptionalInputValue<
            List<MetricAlertCriteria>,
            List<Map<String, dynamic>>
          >(
            criterias,
            (value) =>
                pulumi.Input.encodeList<
                  MetricAlertCriteria,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'dynamicCriteria':
          ?pulumi.Input.mapOptionalInputValue<
            MetricAlertDynamicCriteria,
            Map<String, dynamic>
          >(dynamicCriteria, (value) => value.toMap()),
      'enabled': ?enabled,
      'frequency': ?frequency,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'scopes': ?scopes,
      'severity': ?severity,
      'tags': ?tags,
      'targetResourceLocation': ?targetResourceLocation,
      'targetResourceType': ?targetResourceType,
      'windowSize': ?windowSize,
    };
  }

  factory MetricAlertState.fromMap(Map<String, dynamic> map) {
    return MetricAlertState(
      actions: (() {
        final guardedValue = map['actions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricAlertAction>(
            guardedValue,
            (value) => MetricAlertAction.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      applicationInsightsWebTestLocationAvailabilityCriteria: (() {
        final guardedValue =
            map['applicationInsightsWebTestLocationAvailabilityCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoMitigate: (() {
        final guardedValue = map['autoMitigate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      criterias: (() {
        final guardedValue = map['criterias'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MetricAlertCriteria>(
            guardedValue,
            (value) => MetricAlertCriteria.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dynamicCriteria: (() {
        final guardedValue = map['dynamicCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MetricAlertDynamicCriteria.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceGroupName: (() {
        final guardedValue = map['resourceGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      scopes: (() {
        final guardedValue = map['scopes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      severity: (() {
        final guardedValue = map['severity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      targetResourceLocation: (() {
        final guardedValue = map['targetResourceLocation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetResourceType: (() {
        final guardedValue = map['targetResourceType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      windowSize: (() {
        final guardedValue = map['windowSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

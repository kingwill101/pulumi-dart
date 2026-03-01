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
  /// > **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  final pulumi.Input<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria>? applicationInsightsWebTestLocationAvailabilityCriteria;
  /// Should the alerts in this Metric Alert be auto resolved? Defaults to `true`.
  final pulumi.Input<bool>? autoMitigate;
  /// One or more (static) `criteria` blocks as defined below.
  ///
  /// > **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
  final pulumi.Input<List<MetricAlertCriteria>>? criterias;
  /// The description of this Metric Alert.
  final pulumi.Input<String>? description;
  /// A `dynamic_criteria` block as defined below.
  ///
  /// > **Note:** One of either `criteria`, `dynamic_criteria` or `application_insights_web_test_location_availability_criteria` must be specified.
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
  /// > **Note:** This is Required when using a Subscription as scope, a Resource Group as scope or Multiple Scopes.
  final pulumi.Input<String>? targetResourceLocation;
  /// The resource type (e.g. `Microsoft.Compute/virtualMachines`) of the target resource.
  ///
  /// > **Note:** This is Required when using a Subscription as scope, a Resource Group as scope or Multiple Scopes.
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
    pulumi.Output<List<MetricAlertAction>>? actions,
    pulumi.Output<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria>? applicationInsightsWebTestLocationAvailabilityCriteria,
    pulumi.Output<bool>? autoMitigate,
    pulumi.Output<List<MetricAlertCriteria>>? criterias,
    pulumi.Output<String>? description,
    pulumi.Output<MetricAlertDynamicCriteria>? dynamicCriteria,
    pulumi.Output<bool>? enabled,
    pulumi.Output<String>? frequency,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<List<String>>? scopes,
    pulumi.Output<int>? severity,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? targetResourceLocation,
    pulumi.Output<String>? targetResourceType,
    pulumi.Output<String>? windowSize,
  }) :
      actions = pulumi.Input.asOptionalInput<List<MetricAlertAction>>(actions),
      applicationInsightsWebTestLocationAvailabilityCriteria = pulumi.Input.asOptionalInput<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria>(applicationInsightsWebTestLocationAvailabilityCriteria),
      autoMitigate = pulumi.Input.asOptionalInput<bool>(autoMitigate),
      criterias = pulumi.Input.asOptionalInput<List<MetricAlertCriteria>>(criterias),
      description = pulumi.Input.asOptionalInput<String>(description),
      dynamicCriteria = pulumi.Input.asOptionalInput<MetricAlertDynamicCriteria>(dynamicCriteria),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<String>(frequency),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      scopes = pulumi.Input.asOptionalInput<List<String>>(scopes),
      severity = pulumi.Input.asOptionalInput<int>(severity),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      targetResourceLocation = pulumi.Input.asOptionalInput<String>(targetResourceLocation),
      targetResourceType = pulumi.Input.asOptionalInput<String>(targetResourceType),
      windowSize = pulumi.Input.asOptionalInput<String>(windowSize);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?pulumi.Input.mapOptionalInputValue<List<MetricAlertAction>, List<Map<String, dynamic>>>(actions, (value) => pulumi.Input.encodeList<MetricAlertAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'applicationInsightsWebTestLocationAvailabilityCriteria': ?pulumi.Input.mapOptionalInputValue<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria, Map<String, dynamic>>(applicationInsightsWebTestLocationAvailabilityCriteria, (value) => value.toMap()),
      'autoMitigate': ?autoMitigate,
      'criterias': ?pulumi.Input.mapOptionalInputValue<List<MetricAlertCriteria>, List<Map<String, dynamic>>>(criterias, (value) => pulumi.Input.encodeList<MetricAlertCriteria, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'dynamicCriteria': ?pulumi.Input.mapOptionalInputValue<MetricAlertDynamicCriteria, Map<String, dynamic>>(dynamicCriteria, (value) => value.toMap()),
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
      actions: map['actions'] == null ? null : pulumi.Output.create<List<MetricAlertAction>>(pulumi.Input.decodeList<MetricAlertAction>(map['actions'], (value) => MetricAlertAction.fromMap((value as Map).cast<String, dynamic>()))),
      applicationInsightsWebTestLocationAvailabilityCriteria: map['applicationInsightsWebTestLocationAvailabilityCriteria'] == null ? null : pulumi.Output.create<MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria>(MetricAlertApplicationInsightsWebTestLocationAvailabilityCriteria.fromMap((map['applicationInsightsWebTestLocationAvailabilityCriteria'] as Map).cast<String, dynamic>())),
      autoMitigate: map['autoMitigate'] == null ? null : pulumi.Output.create<bool>(map['autoMitigate'] as bool),
      criterias: map['criterias'] == null ? null : pulumi.Output.create<List<MetricAlertCriteria>>(pulumi.Input.decodeList<MetricAlertCriteria>(map['criterias'], (value) => MetricAlertCriteria.fromMap((value as Map).cast<String, dynamic>()))),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      dynamicCriteria: map['dynamicCriteria'] == null ? null : pulumi.Output.create<MetricAlertDynamicCriteria>(MetricAlertDynamicCriteria.fromMap((map['dynamicCriteria'] as Map).cast<String, dynamic>())),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<String>(map['frequency'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      scopes: map['scopes'] == null ? null : pulumi.Output.create<List<String>>((map['scopes'] as List).cast<String>()),
      severity: map['severity'] == null ? null : pulumi.Output.create<int>(map['severity'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      targetResourceLocation: map['targetResourceLocation'] == null ? null : pulumi.Output.create<String>(map['targetResourceLocation'] as String),
      targetResourceType: map['targetResourceType'] == null ? null : pulumi.Output.create<String>(map['targetResourceType'] as String),
      windowSize: map['windowSize'] == null ? null : pulumi.Output.create<String>(map['windowSize'] as String),
    );
  }
}


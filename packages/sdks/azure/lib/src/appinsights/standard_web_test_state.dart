// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'standard_web_test_request.dart';
import 'standard_web_test_validation_rules.dart';

/// Input properties used for looking up and filtering StandardWebTest resources.
class StandardWebTestState {
  /// The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created.
  final pulumi.Input<String>? applicationInsightsId;
  /// Purpose/user defined descriptive test for this WebTest.
  final pulumi.Input<String>? description;
  /// Should the WebTest be enabled?
  final pulumi.Input<bool>? enabled;
  /// Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  final pulumi.Input<int>? frequency;
  /// Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application.
  ///
  /// > **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
  final pulumi.Input<List<String>>? geoLocations;
  /// The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)
  final pulumi.Input<String>? location;
  /// The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created.
  final pulumi.Input<String>? name;
  /// A `request` block as defined below.
  final pulumi.Input<StandardWebTestRequest>? request;
  /// The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Should the retry on WebTest failure be enabled?
  final pulumi.Input<bool>? retryEnabled;
  /// Unique ID of this WebTest. This is typically the same value as the Name field.
  final pulumi.Input<String>? syntheticMonitorId;
  /// A mapping of tags which should be assigned to the Application Insights Standard WebTest.
  final pulumi.Input<Map<String, String>>? tags;
  /// Seconds until this WebTest will timeout and fail. Default is `30`.
  final pulumi.Input<int>? timeout;
  /// A `validation_rules` block as defined below.
  final pulumi.Input<StandardWebTestValidationRules>? validationRules;

  /// Creates a new [StandardWebTestState].
  /// [applicationInsightsId] The ID of the Application Insights instance on which the WebTest operates. Changing this forces a new Application Insights Standard WebTest to be created.
  /// [description] Purpose/user defined descriptive test for this WebTest.
  /// [enabled] Should the WebTest be enabled?
  /// [frequency] Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  /// [geoLocations] Specifies a list of where to physically run the tests from to give global coverage for accessibility of your application.
  /// [location] The Azure Region where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created. It needs to correlate with location of the parent resource (azurerm_application_insights)
  /// [name] The name which should be used for this Application Insights Standard WebTest. Changing this forces a new Application Insights Standard WebTest to be created.
  /// [request] A `request` block as defined below.
  /// [resourceGroupName] The name of the Resource Group where the Application Insights Standard WebTest should exist. Changing this forces a new Application Insights Standard WebTest to be created.
  /// [retryEnabled] Should the retry on WebTest failure be enabled?
  /// [syntheticMonitorId] Unique ID of this WebTest. This is typically the same value as the Name field.
  /// [tags] A mapping of tags which should be assigned to the Application Insights Standard WebTest.
  /// [timeout] Seconds until this WebTest will timeout and fail. Default is `30`.
  /// [validationRules] A `validation_rules` block as defined below.
  StandardWebTestState({
    pulumi.Output<String>? applicationInsightsId,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? frequency,
    pulumi.Output<List<String>>? geoLocations,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<StandardWebTestRequest>? request,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? retryEnabled,
    pulumi.Output<String>? syntheticMonitorId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? timeout,
    pulumi.Output<StandardWebTestValidationRules>? validationRules,
  }) :
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<int>(frequency),
      geoLocations = pulumi.Input.asOptionalInput<List<String>>(geoLocations),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      request = pulumi.Input.asOptionalInput<StandardWebTestRequest>(request),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retryEnabled = pulumi.Input.asOptionalInput<bool>(retryEnabled),
      syntheticMonitorId = pulumi.Input.asOptionalInput<String>(syntheticMonitorId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      validationRules = pulumi.Input.asOptionalInput<StandardWebTestValidationRules>(validationRules);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': ?applicationInsightsId,
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'geoLocations': ?geoLocations,
      'location': ?location,
      'name': ?name,
      'request': ?pulumi.Input.mapOptionalInputValue<StandardWebTestRequest, Map<String, dynamic>>(request, (value) => value.toMap()),
      'resourceGroupName': ?resourceGroupName,
      'retryEnabled': ?retryEnabled,
      'syntheticMonitorId': ?syntheticMonitorId,
      'tags': ?tags,
      'timeout': ?timeout,
      'validationRules': ?pulumi.Input.mapOptionalInputValue<StandardWebTestValidationRules, Map<String, dynamic>>(validationRules, (value) => value.toMap()),
    };
  }

  factory StandardWebTestState.fromMap(Map<String, dynamic> map) {
    return StandardWebTestState(
      applicationInsightsId: map['applicationInsightsId'] == null ? null : pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<int>(map['frequency'] as int),
      geoLocations: map['geoLocations'] == null ? null : pulumi.Output.create<List<String>>((map['geoLocations'] as List).cast<String>()),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      request: map['request'] == null ? null : pulumi.Output.create<StandardWebTestRequest>(StandardWebTestRequest.fromMap((map['request'] as Map).cast<String, dynamic>())),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retryEnabled: map['retryEnabled'] == null ? null : pulumi.Output.create<bool>(map['retryEnabled'] as bool),
      syntheticMonitorId: map['syntheticMonitorId'] == null ? null : pulumi.Output.create<String>(map['syntheticMonitorId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      validationRules: map['validationRules'] == null ? null : pulumi.Output.create<StandardWebTestValidationRules>(StandardWebTestValidationRules.fromMap((map['validationRules'] as Map).cast<String, dynamic>())),
    );
  }
}


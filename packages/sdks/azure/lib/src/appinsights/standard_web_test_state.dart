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
  /// &gt; **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
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
  /// A `validationRules` block as defined below.
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
  /// [validationRules] A `validationRules` block as defined below.
  const StandardWebTestState({
    this.applicationInsightsId,
    this.description,
    this.enabled,
    this.frequency,
    this.geoLocations,
    this.location,
    this.name,
    this.request,
    this.resourceGroupName,
    this.retryEnabled,
    this.syntheticMonitorId,
    this.tags,
    this.timeout,
    this.validationRules,
  });

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
      applicationInsightsId: (() { final guardedValue = map['applicationInsightsId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      frequency: (() { final guardedValue = map['frequency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      geoLocations: (() { final guardedValue = map['geoLocations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardWebTestRequest.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: (() { final guardedValue = map['resourceGroupName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      retryEnabled: (() { final guardedValue = map['retryEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      syntheticMonitorId: (() { final guardedValue = map['syntheticMonitorId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      timeout: (() { final guardedValue = map['timeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      validationRules: (() { final guardedValue = map['validationRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StandardWebTestValidationRules.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

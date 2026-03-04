// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WebTest resources.
class WebTestState {
  /// The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created.
  final pulumi.Input<String>? applicationInsightsId;

  /// An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/)).
  final pulumi.Input<String>? configuration;

  /// Purpose/user defined descriptive test for this WebTest.
  final pulumi.Input<String>? description;

  /// Is the test actively being monitored.
  final pulumi.Input<bool>? enabled;

  /// Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  final pulumi.Input<int>? frequency;

  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  ///
  /// &gt; **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
  final pulumi.Input<List<String>>? geoLocations;

  /// The kind of web test that this web test watches. Choices are `ping` and `multistep`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? kind;

  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights).
  final pulumi.Input<String>? location;

  /// Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;

  /// The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource
  final pulumi.Input<String>? resourceGroupName;

  /// Allow for retries should this WebTest fail.
  final pulumi.Input<bool>? retryEnabled;
  final pulumi.Input<String>? syntheticMonitorId;

  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Seconds until this WebTest will timeout and fail. Default is `30`.
  final pulumi.Input<int>? timeout;

  /// Creates a new [WebTestState].
  /// [applicationInsightsId] The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created.
  /// [configuration] An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/)).
  /// [description] Purpose/user defined descriptive test for this WebTest.
  /// [enabled] Is the test actively being monitored.
  /// [frequency] Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  /// [geoLocations] A list of where to physically run the tests from to give global coverage for accessibility of your application.
  /// [kind] The kind of web test that this web test watches. Choices are `ping` and `multistep`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights).
  /// [name] Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource
  /// [retryEnabled] Allow for retries should this WebTest fail.
  /// [syntheticMonitorId] Optional.
  /// [tags] A mapping of tags to assign to the resource.
  /// [timeout] Seconds until this WebTest will timeout and fail. Default is `30`.
  WebTestState({
    this.applicationInsightsId,
    this.configuration,
    this.description,
    this.enabled,
    this.frequency,
    this.geoLocations,
    this.kind,
    this.location,
    this.name,
    this.resourceGroupName,
    this.retryEnabled,
    this.syntheticMonitorId,
    this.tags,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': ?applicationInsightsId,
      'configuration': ?configuration,
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'geoLocations': ?geoLocations,
      'kind': ?kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': ?resourceGroupName,
      'retryEnabled': ?retryEnabled,
      'syntheticMonitorId': ?syntheticMonitorId,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory WebTestState.fromMap(Map<String, dynamic> map) {
    return WebTestState(
      applicationInsightsId: (() {
        final guardedValue = map['applicationInsightsId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      configuration: (() {
        final guardedValue = map['configuration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      frequency: (() {
        final guardedValue = map['frequency'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      geoLocations: (() {
        final guardedValue = map['geoLocations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
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
      retryEnabled: (() {
        final guardedValue = map['retryEnabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      syntheticMonitorId: (() {
        final guardedValue = map['syntheticMonitorId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}

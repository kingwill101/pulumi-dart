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
  /// > **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
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
    pulumi.Output<String>? applicationInsightsId,
    pulumi.Output<String>? configuration,
    pulumi.Output<String>? description,
    pulumi.Output<bool>? enabled,
    pulumi.Output<int>? frequency,
    pulumi.Output<List<String>>? geoLocations,
    pulumi.Output<String>? kind,
    pulumi.Output<String>? location,
    pulumi.Output<String>? name,
    pulumi.Output<String>? resourceGroupName,
    pulumi.Output<bool>? retryEnabled,
    pulumi.Output<String>? syntheticMonitorId,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<int>? timeout,
  }) :
      applicationInsightsId = pulumi.Input.asOptionalInput<String>(applicationInsightsId),
      configuration = pulumi.Input.asOptionalInput<String>(configuration),
      description = pulumi.Input.asOptionalInput<String>(description),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      frequency = pulumi.Input.asOptionalInput<int>(frequency),
      geoLocations = pulumi.Input.asOptionalInput<List<String>>(geoLocations),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      resourceGroupName = pulumi.Input.asOptionalInput<String>(resourceGroupName),
      retryEnabled = pulumi.Input.asOptionalInput<bool>(retryEnabled),
      syntheticMonitorId = pulumi.Input.asOptionalInput<String>(syntheticMonitorId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      timeout = pulumi.Input.asOptionalInput<int>(timeout);

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
      applicationInsightsId: map['applicationInsightsId'] == null ? null : pulumi.Output.create<String>(map['applicationInsightsId'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<String>(map['configuration'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      frequency: map['frequency'] == null ? null : pulumi.Output.create<int>(map['frequency'] as int),
      geoLocations: map['geoLocations'] == null ? null : pulumi.Output.create<List<String>>((map['geoLocations'] as List).cast<String>()),
      kind: map['kind'] == null ? null : pulumi.Output.create<String>(map['kind'] as String),
      location: map['location'] == null ? null : pulumi.Output.create<String>(map['location'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      resourceGroupName: map['resourceGroupName'] == null ? null : pulumi.Output.create<String>(map['resourceGroupName'] as String),
      retryEnabled: map['retryEnabled'] == null ? null : pulumi.Output.create<bool>(map['retryEnabled'] as bool),
      syntheticMonitorId: map['syntheticMonitorId'] == null ? null : pulumi.Output.create<String>(map['syntheticMonitorId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
    );
  }
}


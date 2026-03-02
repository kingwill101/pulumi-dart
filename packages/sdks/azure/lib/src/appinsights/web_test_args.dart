// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appinsights_web_test_web_test_args_doc}
/// The set of arguments for WebTest.
/// {@endtemplate}
/// {@macro pulumi_appinsights_web_test_web_test_args_doc}
class WebTestArgs {
  /// The ID of the Application Insights component on which the WebTest operates. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationInsightsId;
  /// An XML configuration specification for a WebTest ([see here for more information](https://docs.microsoft.com/rest/api/application-insights/webtests/createorupdate/)).
  final pulumi.Input<String> configuration;
  /// Purpose/user defined descriptive test for this WebTest.
  final pulumi.Input<String>? description;
  /// Is the test actively being monitored.
  final pulumi.Input<bool>? enabled;
  /// Interval in seconds between test runs for this WebTest. Valid options are `300`, `600` and `900`. Defaults to `300`.
  final pulumi.Input<int>? frequency;
  /// A list of where to physically run the tests from to give global coverage for accessibility of your application.
  ///
  /// > **Note:** [Valid options for geo locations are described here](https://docs.microsoft.com/azure/azure-monitor/app/monitor-web-app-availability#location-population-tags)
  final pulumi.Input<List<String>> geoLocations;
  /// The kind of web test that this web test watches. Choices are `ping` and `multistep`. Changing this forces a new resource to be created.
  final pulumi.Input<String> kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created. It needs to correlate with location of parent resource (azurerm_application_insights).
  final pulumi.Input<String>? location;
  /// Specifies the name of the Application Insights WebTest. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The name of the resource group in which to create the Application Insights WebTest. Changing this forces a new resource
  final pulumi.Input<String> resourceGroupName;
  /// Allow for retries should this WebTest fail.
  final pulumi.Input<bool>? retryEnabled;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Seconds until this WebTest will timeout and fail. Default is `30`.
  final pulumi.Input<int>? timeout;

  /// Creates a new [WebTestArgs].
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
  /// [tags] A mapping of tags to assign to the resource.
  /// [timeout] Seconds until this WebTest will timeout and fail. Default is `30`.
  WebTestArgs({
    required this.applicationInsightsId,
    required this.configuration,
    this.description,
    this.enabled,
    this.frequency,
    required this.geoLocations,
    required this.kind,
    this.location,
    this.name,
    required this.resourceGroupName,
    this.retryEnabled,
    this.tags,
    this.timeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationInsightsId': applicationInsightsId,
      'configuration': configuration,
      'description': ?description,
      'enabled': ?enabled,
      'frequency': ?frequency,
      'geoLocations': geoLocations,
      'kind': kind,
      'location': ?location,
      'name': ?name,
      'resourceGroupName': resourceGroupName,
      'retryEnabled': ?retryEnabled,
      'tags': ?tags,
      'timeout': ?timeout,
    };
  }

  factory WebTestArgs.fromMap(Map<String, dynamic> map) {
    return WebTestArgs(
      applicationInsightsId: (map['applicationInsightsId'] as String).input(),
      configuration: (map['configuration'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      enabled: map['enabled'] == null ? null : (map['enabled'] as bool).input(),
      frequency: map['frequency'] == null ? null : (map['frequency'] as int).input(),
      geoLocations: ((map['geoLocations'] as List).cast<String>()).input(),
      kind: (map['kind'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      retryEnabled: map['retryEnabled'] == null ? null : (map['retryEnabled'] as bool).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as int).input(),
    );
  }
}


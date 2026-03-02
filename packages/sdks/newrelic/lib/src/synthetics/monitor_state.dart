// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'monitor_custom_header.dart';
import 'monitor_tag.dart';

/// Input properties used for looking up and filtering Monitor resources.
class MonitorState {
  /// The account in which the Synthetics monitor will be created.
  final pulumi.Input<String>? accountId;
  /// The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  final pulumi.Input<List<String>>? browsers;
  /// Monitor should skip default HEAD request and instead use GET verb in check.
  ///
  /// The `BROWSER` monitor type supports the following additional arguments:
  final pulumi.Input<bool>? bypassHeadRequest;
  /// Custom headers to use in monitor job. See Nested custom_header blocks below for details.
  final pulumi.Input<List<MonitorCustomHeader>>? customHeaders;
  /// Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`.
  /// * We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  final pulumi.Input<String>? deviceOrientation;
  /// Device emulation type field. Valid values are `MOBILE` and `TABLET`.
  /// * We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  final pulumi.Input<String>? deviceType;
  /// The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  final pulumi.Input<List<String>>? devices;
  /// Capture a screenshot during job execution.
  final pulumi.Input<bool>? enableScreenshotOnFailureAndScript;
  /// The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  final pulumi.Input<List<String>>? locationsPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  final pulumi.Input<List<String>>? locationsPublics;
  /// The monitor id of the Synthetics monitor (not to be confused with the GUID of the monitor).
  final pulumi.Input<String>? monitorId;
  /// The human-readable identifier for the monitor.
  final pulumi.Input<String>? name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  final pulumi.Input<String>? period;
  /// The interval in minutes at which Synthetic monitor should run.
  final pulumi.Input<int>? periodInMinutes;
  /// The runtime that the monitor will use to run jobs (`CHROME_BROWSER`).
  final pulumi.Input<String>? runtimeType_;
  /// The specific version of the runtime type selected (`100`).
  final pulumi.Input<String>? runtimeTypeVersion;
  /// The programing language that should execute the script.
  final pulumi.Input<String>? scriptLanguage;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  final pulumi.Input<String>? status;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  ///
  /// The `SIMPLE` monitor type supports the following additional arguments:
  final pulumi.Input<List<MonitorTag>>? tags;
  /// Categorize redirects during a monitor job as a failure.
  final pulumi.Input<bool>? treatRedirectAsFailure;
  /// The monitor type. Valid values are `SIMPLE` and `BROWSER`.
  final pulumi.Input<String>? type;
  /// The URI the monitor runs against.
  final pulumi.Input<String>? uri;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  final pulumi.Input<bool>? useUnsupportedLegacyRuntime;
  /// Validation text for monitor to search for at given URI.
  final pulumi.Input<String>? validationString;
  /// Monitor should validate SSL certificate chain.
  final pulumi.Input<bool>? verifySsl;

  /// Creates a new [MonitorState].
  /// [accountId] The account in which the Synthetics monitor will be created.
  /// [browsers] The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  /// [bypassHeadRequest] Monitor should skip default HEAD request and instead use GET verb in check.
  /// [customHeaders] Custom headers to use in monitor job. See Nested custom_header blocks below for details.
  /// [deviceOrientation] Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`.
  /// [deviceType] Device emulation type field. Valid values are `MOBILE` and `TABLET`.
  /// [devices] The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  /// [enableScreenshotOnFailureAndScript] Capture a screenshot during job execution.
  /// [locationsPrivates] The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  /// [locationsPublics] The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  /// [monitorId] The monitor id of the Synthetics monitor (not to be confused with the GUID of the monitor).
  /// [name] The human-readable identifier for the monitor.
  /// [period] The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  /// [periodInMinutes] The interval in minutes at which Synthetic monitor should run.
  /// [runtimeType_] The runtime that the monitor will use to run jobs (`CHROME_BROWSER`).
  /// [runtimeTypeVersion] The specific version of the runtime type selected (`100`).
  /// [scriptLanguage] The programing language that should execute the script.
  /// [status] The run state of the monitor. (`ENABLED` or `DISABLED`).
  /// [tags] The tags that will be associated with the monitor. See Nested tag blocks below for details.
  /// [treatRedirectAsFailure] Categorize redirects during a monitor job as a failure.
  /// [type] The monitor type. Valid values are `SIMPLE` and `BROWSER`.
  /// [uri] The URI the monitor runs against.
  /// [useUnsupportedLegacyRuntime] A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  /// [validationString] Validation text for monitor to search for at given URI.
  /// [verifySsl] Monitor should validate SSL certificate chain.
  MonitorState({
    this.accountId,
    this.browsers,
    this.bypassHeadRequest,
    this.customHeaders,
    this.deviceOrientation,
    this.deviceType,
    this.devices,
    this.enableScreenshotOnFailureAndScript,
    this.locationsPrivates,
    this.locationsPublics,
    this.monitorId,
    this.name,
    this.period,
    this.periodInMinutes,
    this.runtimeType_,
    this.runtimeTypeVersion,
    this.scriptLanguage,
    this.status,
    this.tags,
    this.treatRedirectAsFailure,
    this.type,
    this.uri,
    this.useUnsupportedLegacyRuntime,
    this.validationString,
    this.verifySsl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'browsers': ?browsers,
      'bypassHeadRequest': ?bypassHeadRequest,
      'customHeaders': ?pulumi.Input.mapOptionalInputValue<List<MonitorCustomHeader>, List<Map<String, dynamic>>>(customHeaders, (value) => pulumi.Input.encodeList<MonitorCustomHeader, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deviceOrientation': ?deviceOrientation,
      'deviceType': ?deviceType,
      'devices': ?devices,
      'enableScreenshotOnFailureAndScript': ?enableScreenshotOnFailureAndScript,
      'locationsPrivates': ?locationsPrivates,
      'locationsPublics': ?locationsPublics,
      'monitorId': ?monitorId,
      'name': ?name,
      'period': ?period,
      'periodInMinutes': ?periodInMinutes,
      'runtimeType': ?runtimeType_,
      'runtimeTypeVersion': ?runtimeTypeVersion,
      'scriptLanguage': ?scriptLanguage,
      'status': ?status,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<MonitorTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<MonitorTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'treatRedirectAsFailure': ?treatRedirectAsFailure,
      'type': ?type,
      'uri': ?uri,
      'useUnsupportedLegacyRuntime': ?useUnsupportedLegacyRuntime,
      'validationString': ?validationString,
      'verifySsl': ?verifySsl,
    };
  }

  factory MonitorState.fromMap(Map<String, dynamic> map) {
    return MonitorState(
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      browsers: map['browsers'] == null ? null : ((map['browsers'] as List).cast<String>()).input(),
      bypassHeadRequest: map['bypassHeadRequest'] == null ? null : (map['bypassHeadRequest'] as bool).input(),
      customHeaders: map['customHeaders'] == null ? null : (pulumi.Input.decodeList<MonitorCustomHeader>(map['customHeaders'], (value) => MonitorCustomHeader.fromMap((value as Map).cast<String, dynamic>()))).input(),
      deviceOrientation: map['deviceOrientation'] == null ? null : (map['deviceOrientation'] as String).input(),
      deviceType: map['deviceType'] == null ? null : (map['deviceType'] as String).input(),
      devices: map['devices'] == null ? null : ((map['devices'] as List).cast<String>()).input(),
      enableScreenshotOnFailureAndScript: map['enableScreenshotOnFailureAndScript'] == null ? null : (map['enableScreenshotOnFailureAndScript'] as bool).input(),
      locationsPrivates: map['locationsPrivates'] == null ? null : ((map['locationsPrivates'] as List).cast<String>()).input(),
      locationsPublics: map['locationsPublics'] == null ? null : ((map['locationsPublics'] as List).cast<String>()).input(),
      monitorId: map['monitorId'] == null ? null : (map['monitorId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      periodInMinutes: map['periodInMinutes'] == null ? null : (map['periodInMinutes'] as int).input(),
      runtimeType_: map['runtimeType'] == null ? null : (map['runtimeType'] as String).input(),
      runtimeTypeVersion: map['runtimeTypeVersion'] == null ? null : (map['runtimeTypeVersion'] as String).input(),
      scriptLanguage: map['scriptLanguage'] == null ? null : (map['scriptLanguage'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<MonitorTag>(map['tags'], (value) => MonitorTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      treatRedirectAsFailure: map['treatRedirectAsFailure'] == null ? null : (map['treatRedirectAsFailure'] as bool).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      uri: map['uri'] == null ? null : (map['uri'] as String).input(),
      useUnsupportedLegacyRuntime: map['useUnsupportedLegacyRuntime'] == null ? null : (map['useUnsupportedLegacyRuntime'] as bool).input(),
      validationString: map['validationString'] == null ? null : (map['validationString'] as String).input(),
      verifySsl: map['verifySsl'] == null ? null : (map['verifySsl'] as bool).input(),
    );
  }
}


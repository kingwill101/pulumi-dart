// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_monitor_location_private.dart';
import 'script_monitor_tag.dart';

/// Input properties used for looking up and filtering ScriptMonitor resources.
class ScriptMonitorState {
  /// The account in which the Synthetics monitor will be created.
  final pulumi.Input<String>? accountId;
  /// The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  final pulumi.Input<List<String>>? browsers;
  /// Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  final pulumi.Input<String>? deviceOrientation;
  /// Device emulation type field. Valid values are `MOBILE` and `TABLET`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  final pulumi.Input<String>? deviceType;
  /// The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  final pulumi.Input<List<String>>? devices;
  /// Capture a screenshot during job execution.
  final pulumi.Input<bool>? enableScreenshotOnFailureAndScript;
  /// The unique entity identifier of the monitor in New Relic.
  final pulumi.Input<String>? guid;
  /// The location the monitor will run from. See Nested location_private blocks below for details. **At least one of either** `locations_public` **or** `location_private` **is required**.
  final pulumi.Input<List<ScriptMonitorLocationPrivate>>? locationPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. The `AWS_` prefix is not needed, as the provider uses NerdGraph. **At least one of either** `locations_public` **or** `location_private` **is required**.
  final pulumi.Input<List<String>>? locationsPublics;
  /// The monitor id of the Synthetics script monitor (not to be confused with the GUID of the monitor).
  final pulumi.Input<String>? monitorId;
  /// The name for the monitor.
  final pulumi.Input<String>? name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  final pulumi.Input<String>? period;
  /// The interval in minutes at which Synthetic monitor should run.
  final pulumi.Input<int>? periodInMinutes;
  /// The runtime that the monitor will use to run jobs. For the `SCRIPT_API` monitor type, a valid value is `NODE_API`. For the `SCRIPT_BROWSER` monitor type, a valid value is `CHROME_BROWSER`.
  final pulumi.Input<String>? runtimeType_;
  /// The specific version of the runtime type selected. For the `SCRIPT_API` monitor type, a valid value is `16.10`, which corresponds to the version of Node.js. For the `SCRIPT_BROWSER` monitor type, a valid value is `100`, which corresponds to the version of the Chrome browser.
  final pulumi.Input<String>? runtimeTypeVersion;
  /// The script that the monitor runs.
  final pulumi.Input<String>? script;
  /// The programing language that should execute the script.
  final pulumi.Input<String>? scriptLanguage;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  final pulumi.Input<String>? status;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  ///
  /// The `SCRIPTED_BROWSER` monitor type supports the following additional arguments:
  final pulumi.Input<List<ScriptMonitorTag>>? tags;
  /// The plaintext representing the monitor script. Valid values are SCRIPT_BROWSER or SCRIPT_API
  final pulumi.Input<String>? type;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  final pulumi.Input<bool>? useUnsupportedLegacyRuntime;

  /// Creates a new [ScriptMonitorState].
  /// [accountId] The account in which the Synthetics monitor will be created.
  /// [browsers] The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  /// [deviceOrientation] Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  /// [deviceType] Device emulation type field. Valid values are `MOBILE` and `TABLET`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  /// [devices] The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  /// [enableScreenshotOnFailureAndScript] Capture a screenshot during job execution.
  /// [guid] The unique entity identifier of the monitor in New Relic.
  /// [locationPrivates] The location the monitor will run from. See Nested location_private blocks below for details. **At least one of either** `locations_public` **or** `location_private` **is required**.
  /// [locationsPublics] The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. The `AWS_` prefix is not needed, as the provider uses NerdGraph. **At least one of either** `locations_public` **or** `location_private` **is required**.
  /// [monitorId] The monitor id of the Synthetics script monitor (not to be confused with the GUID of the monitor).
  /// [name] The name for the monitor.
  /// [period] The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  /// [periodInMinutes] The interval in minutes at which Synthetic monitor should run.
  /// [runtimeType_] The runtime that the monitor will use to run jobs. For the `SCRIPT_API` monitor type, a valid value is `NODE_API`. For the `SCRIPT_BROWSER` monitor type, a valid value is `CHROME_BROWSER`.
  /// [runtimeTypeVersion] The specific version of the runtime type selected. For the `SCRIPT_API` monitor type, a valid value is `16.10`, which corresponds to the version of Node.js. For the `SCRIPT_BROWSER` monitor type, a valid value is `100`, which corresponds to the version of the Chrome browser.
  /// [script] The script that the monitor runs.
  /// [scriptLanguage] The programing language that should execute the script.
  /// [status] The run state of the monitor. (`ENABLED` or `DISABLED`).
  /// [tags] The tags that will be associated with the monitor. See Nested tag blocks below for details.
  /// [type] The plaintext representing the monitor script. Valid values are SCRIPT_BROWSER or SCRIPT_API
  /// [useUnsupportedLegacyRuntime] A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  ScriptMonitorState({
    this.accountId,
    this.browsers,
    this.deviceOrientation,
    this.deviceType,
    this.devices,
    this.enableScreenshotOnFailureAndScript,
    this.guid,
    this.locationPrivates,
    this.locationsPublics,
    this.monitorId,
    this.name,
    this.period,
    this.periodInMinutes,
    this.runtimeType_,
    this.runtimeTypeVersion,
    this.script,
    this.scriptLanguage,
    this.status,
    this.tags,
    this.type,
    this.useUnsupportedLegacyRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'browsers': ?browsers,
      'deviceOrientation': ?deviceOrientation,
      'deviceType': ?deviceType,
      'devices': ?devices,
      'enableScreenshotOnFailureAndScript': ?enableScreenshotOnFailureAndScript,
      'guid': ?guid,
      'locationPrivates': ?pulumi.Input.mapOptionalInputValue<List<ScriptMonitorLocationPrivate>, List<Map<String, dynamic>>>(locationPrivates, (value) => pulumi.Input.encodeList<ScriptMonitorLocationPrivate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationsPublics': ?locationsPublics,
      'monitorId': ?monitorId,
      'name': ?name,
      'period': ?period,
      'periodInMinutes': ?periodInMinutes,
      'runtimeType': ?runtimeType_,
      'runtimeTypeVersion': ?runtimeTypeVersion,
      'script': ?script,
      'scriptLanguage': ?scriptLanguage,
      'status': ?status,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<ScriptMonitorTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<ScriptMonitorTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
      'useUnsupportedLegacyRuntime': ?useUnsupportedLegacyRuntime,
    };
  }

  factory ScriptMonitorState.fromMap(Map<String, dynamic> map) {
    return ScriptMonitorState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      browsers: map['browsers'] == null ? null : ((map['browsers']! as List).cast<String>()).input(),
      deviceOrientation: map['deviceOrientation'] == null ? null : (map['deviceOrientation']! as String).input(),
      deviceType: map['deviceType'] == null ? null : (map['deviceType']! as String).input(),
      devices: map['devices'] == null ? null : ((map['devices']! as List).cast<String>()).input(),
      enableScreenshotOnFailureAndScript: map['enableScreenshotOnFailureAndScript'] == null ? null : (map['enableScreenshotOnFailureAndScript']! as bool).input(),
      guid: map['guid'] == null ? null : (map['guid']! as String).input(),
      locationPrivates: map['locationPrivates'] == null ? null : (pulumi.Input.decodeList<ScriptMonitorLocationPrivate>(map['locationPrivates']!, (value) => ScriptMonitorLocationPrivate.fromMap((value as Map).cast<String, dynamic>()))).input(),
      locationsPublics: map['locationsPublics'] == null ? null : ((map['locationsPublics']! as List).cast<String>()).input(),
      monitorId: map['monitorId'] == null ? null : (map['monitorId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as String).input(),
      periodInMinutes: map['periodInMinutes'] == null ? null : (map['periodInMinutes']! as int).input(),
      runtimeType_: map['runtimeType'] == null ? null : (map['runtimeType']! as String).input(),
      runtimeTypeVersion: map['runtimeTypeVersion'] == null ? null : (map['runtimeTypeVersion']! as String).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
      scriptLanguage: map['scriptLanguage'] == null ? null : (map['scriptLanguage']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<ScriptMonitorTag>(map['tags']!, (value) => ScriptMonitorTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
      useUnsupportedLegacyRuntime: map['useUnsupportedLegacyRuntime'] == null ? null : (map['useUnsupportedLegacyRuntime']! as bool).input(),
    );
  }
}


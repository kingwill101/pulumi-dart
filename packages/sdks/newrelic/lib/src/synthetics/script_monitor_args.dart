// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'script_monitor_location_private.dart';
import 'script_monitor_tag.dart';

/// {@template pulumi_synthetics_script_monitor_script_monitor_args_doc}
/// The set of arguments for ScriptMonitor.
/// {@endtemplate}
/// {@macro pulumi_synthetics_script_monitor_script_monitor_args_doc}
class ScriptMonitorArgs {
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
  /// The location the monitor will run from. See Nested location_private blocks below for details. **At least one of either** `locations_public` **or** `location_private` **is required**.
  final pulumi.Input<List<ScriptMonitorLocationPrivate>>? locationPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. The `AWS_` prefix is not needed, as the provider uses NerdGraph. **At least one of either** `locations_public` **or** `location_private` **is required**.
  final pulumi.Input<List<String>>? locationsPublics;
  /// The name for the monitor.
  final pulumi.Input<String>? name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  final pulumi.Input<String> period;
  /// The runtime that the monitor will use to run jobs. For the `SCRIPT_API` monitor type, a valid value is `NODE_API`. For the `SCRIPT_BROWSER` monitor type, a valid value is `CHROME_BROWSER`.
  final pulumi.Input<String>? runtimeType_;
  /// The specific version of the runtime type selected. For the `SCRIPT_API` monitor type, a valid value is `16.10`, which corresponds to the version of Node.js. For the `SCRIPT_BROWSER` monitor type, a valid value is `100`, which corresponds to the version of the Chrome browser.
  final pulumi.Input<String>? runtimeTypeVersion;
  /// The script that the monitor runs.
  final pulumi.Input<String>? script;
  /// The programing language that should execute the script.
  final pulumi.Input<String>? scriptLanguage;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  final pulumi.Input<String> status;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details.
  ///
  /// The `SCRIPTED_BROWSER` monitor type supports the following additional arguments:
  final pulumi.Input<List<ScriptMonitorTag>>? tags;
  /// The plaintext representing the monitor script. Valid values are SCRIPT_BROWSER or SCRIPT_API
  final pulumi.Input<String> type;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  final pulumi.Input<bool>? useUnsupportedLegacyRuntime;

  /// Creates a new [ScriptMonitorArgs].
  /// [accountId] The account in which the Synthetics monitor will be created.
  /// [browsers] The multiple browsers list on which synthetic monitors will run. Valid values are `CHROME` and `FIREFOX`.
  /// [deviceOrientation] Device emulation orientation field. Valid values are `LANDSCAPE` and `PORTRAIT`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  /// [deviceType] Device emulation type field. Valid values are `MOBILE` and `TABLET`. We recommend you to use `devices` field instead of `device_type`,`device_orientation` fields, as it allows you to select multiple combinations of device types and orientations.
  /// [devices] The multiple devices list on which synthetic monitors will run. Valid values are `DESKTOP`, `MOBILE_LANDSCAPE`, `MOBILE_PORTRAIT`, `TABLET_LANDSCAPE` and `TABLET_PORTRAIT`.
  /// [enableScreenshotOnFailureAndScript] Capture a screenshot during job execution.
  /// [locationPrivates] The location the monitor will run from. See Nested location_private blocks below for details. **At least one of either** `locations_public` **or** `location_private` **is required**.
  /// [locationsPublics] The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. The `AWS_` prefix is not needed, as the provider uses NerdGraph. **At least one of either** `locations_public` **or** `location_private` **is required**.
  /// [name] The name for the monitor.
  /// [period] The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  /// [runtimeType_] The runtime that the monitor will use to run jobs. For the `SCRIPT_API` monitor type, a valid value is `NODE_API`. For the `SCRIPT_BROWSER` monitor type, a valid value is `CHROME_BROWSER`.
  /// [runtimeTypeVersion] The specific version of the runtime type selected. For the `SCRIPT_API` monitor type, a valid value is `16.10`, which corresponds to the version of Node.js. For the `SCRIPT_BROWSER` monitor type, a valid value is `100`, which corresponds to the version of the Chrome browser.
  /// [script] The script that the monitor runs.
  /// [scriptLanguage] The programing language that should execute the script.
  /// [status] The run state of the monitor. (`ENABLED` or `DISABLED`).
  /// [tags] The tags that will be associated with the monitor. See Nested tag blocks below for details.
  /// [type] The plaintext representing the monitor script. Valid values are SCRIPT_BROWSER or SCRIPT_API
  /// [useUnsupportedLegacyRuntime] A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  const ScriptMonitorArgs({
    this.accountId,
    this.browsers,
    this.deviceOrientation,
    this.deviceType,
    this.devices,
    this.enableScreenshotOnFailureAndScript,
    this.locationPrivates,
    this.locationsPublics,
    this.name,
    required this.period,
    this.runtimeType_,
    this.runtimeTypeVersion,
    this.script,
    this.scriptLanguage,
    required this.status,
    this.tags,
    required this.type,
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
      'locationPrivates': ?pulumi.Input.mapOptionalInputValue<List<ScriptMonitorLocationPrivate>, List<Map<String, dynamic>>>(locationPrivates, (value) => pulumi.Input.encodeList<ScriptMonitorLocationPrivate, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locationsPublics': ?locationsPublics,
      'name': ?name,
      'period': period,
      'runtimeType': ?runtimeType_,
      'runtimeTypeVersion': ?runtimeTypeVersion,
      'script': ?script,
      'scriptLanguage': ?scriptLanguage,
      'status': status,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<ScriptMonitorTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<ScriptMonitorTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': type,
      'useUnsupportedLegacyRuntime': ?useUnsupportedLegacyRuntime,
    };
  }

  factory ScriptMonitorArgs.fromMap(Map<String, dynamic> map) {
    return ScriptMonitorArgs(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browsers: (() { final guardedValue = map['browsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deviceOrientation: (() { final guardedValue = map['deviceOrientation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceType: (() { final guardedValue = map['deviceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      devices: (() { final guardedValue = map['devices']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enableScreenshotOnFailureAndScript: (() { final guardedValue = map['enableScreenshotOnFailureAndScript']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      locationPrivates: (() { final guardedValue = map['locationPrivates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScriptMonitorLocationPrivate>(guardedValue, (value) => ScriptMonitorLocationPrivate.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locationsPublics: (() { final guardedValue = map['locationsPublics']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      period: pulumi.Input.fromValue(map['period'] as String),
      runtimeType_: (() { final guardedValue = map['runtimeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runtimeTypeVersion: (() { final guardedValue = map['runtimeTypeVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      script: (() { final guardedValue = map['script']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scriptLanguage: (() { final guardedValue = map['scriptLanguage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ScriptMonitorTag>(guardedValue, (value) => ScriptMonitorTag.fromMap((value as Map).cast<String, dynamic>()))); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      useUnsupportedLegacyRuntime: (() { final guardedValue = map['useUnsupportedLegacyRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


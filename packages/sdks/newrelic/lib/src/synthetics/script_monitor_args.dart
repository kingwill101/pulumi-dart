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
  ScriptMonitorArgs({
    pulumi.Output<String>? accountId,
    pulumi.Output<List<String>>? browsers,
    pulumi.Output<String>? deviceOrientation,
    pulumi.Output<String>? deviceType,
    pulumi.Output<List<String>>? devices,
    pulumi.Output<bool>? enableScreenshotOnFailureAndScript,
    pulumi.Output<List<ScriptMonitorLocationPrivate>>? locationPrivates,
    pulumi.Output<List<String>>? locationsPublics,
    pulumi.Output<String>? name,
    required pulumi.Output<String> period,
    pulumi.Output<String>? runtimeType_,
    pulumi.Output<String>? runtimeTypeVersion,
    pulumi.Output<String>? script,
    pulumi.Output<String>? scriptLanguage,
    required pulumi.Output<String> status,
    pulumi.Output<List<ScriptMonitorTag>>? tags,
    required pulumi.Output<String> type,
    pulumi.Output<bool>? useUnsupportedLegacyRuntime,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      browsers = pulumi.Input.asOptionalInput<List<String>>(browsers),
      deviceOrientation = pulumi.Input.asOptionalInput<String>(deviceOrientation),
      deviceType = pulumi.Input.asOptionalInput<String>(deviceType),
      devices = pulumi.Input.asOptionalInput<List<String>>(devices),
      enableScreenshotOnFailureAndScript = pulumi.Input.asOptionalInput<bool>(enableScreenshotOnFailureAndScript),
      locationPrivates = pulumi.Input.asOptionalInput<List<ScriptMonitorLocationPrivate>>(locationPrivates),
      locationsPublics = pulumi.Input.asOptionalInput<List<String>>(locationsPublics),
      name = pulumi.Input.asOptionalInput<String>(name),
      period = pulumi.Input.asInput<String>(period),
      runtimeType_ = pulumi.Input.asOptionalInput<String>(runtimeType_),
      runtimeTypeVersion = pulumi.Input.asOptionalInput<String>(runtimeTypeVersion),
      script = pulumi.Input.asOptionalInput<String>(script),
      scriptLanguage = pulumi.Input.asOptionalInput<String>(scriptLanguage),
      status = pulumi.Input.asInput<String>(status),
      tags = pulumi.Input.asOptionalInput<List<ScriptMonitorTag>>(tags),
      type = pulumi.Input.asInput<String>(type),
      useUnsupportedLegacyRuntime = pulumi.Input.asOptionalInput<bool>(useUnsupportedLegacyRuntime);

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
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      browsers: map['browsers'] == null ? null : pulumi.Output.create<List<String>>((map['browsers'] as List).cast<String>()),
      deviceOrientation: map['deviceOrientation'] == null ? null : pulumi.Output.create<String>(map['deviceOrientation'] as String),
      deviceType: map['deviceType'] == null ? null : pulumi.Output.create<String>(map['deviceType'] as String),
      devices: map['devices'] == null ? null : pulumi.Output.create<List<String>>((map['devices'] as List).cast<String>()),
      enableScreenshotOnFailureAndScript: map['enableScreenshotOnFailureAndScript'] == null ? null : pulumi.Output.create<bool>(map['enableScreenshotOnFailureAndScript'] as bool),
      locationPrivates: map['locationPrivates'] == null ? null : pulumi.Output.create<List<ScriptMonitorLocationPrivate>>(pulumi.Input.decodeList<ScriptMonitorLocationPrivate>(map['locationPrivates'], (value) => ScriptMonitorLocationPrivate.fromMap((value as Map).cast<String, dynamic>()))),
      locationsPublics: map['locationsPublics'] == null ? null : pulumi.Output.create<List<String>>((map['locationsPublics'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      period: pulumi.Output.create<String>(map['period'] as String),
      runtimeType_: map['runtimeType'] == null ? null : pulumi.Output.create<String>(map['runtimeType'] as String),
      runtimeTypeVersion: map['runtimeTypeVersion'] == null ? null : pulumi.Output.create<String>(map['runtimeTypeVersion'] as String),
      script: map['script'] == null ? null : pulumi.Output.create<String>(map['script'] as String),
      scriptLanguage: map['scriptLanguage'] == null ? null : pulumi.Output.create<String>(map['scriptLanguage'] as String),
      status: pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<List<ScriptMonitorTag>>(pulumi.Input.decodeList<ScriptMonitorTag>(map['tags'], (value) => ScriptMonitorTag.fromMap((value as Map).cast<String, dynamic>()))),
      type: pulumi.Output.create<String>(map['type'] as String),
      useUnsupportedLegacyRuntime: map['useUnsupportedLegacyRuntime'] == null ? null : pulumi.Output.create<bool>(map['useUnsupportedLegacyRuntime'] as bool),
    );
  }
}


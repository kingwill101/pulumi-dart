// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_check_monitor_tag.dart';

/// Input properties used for looking up and filtering CertCheckMonitor resources.
class CertCheckMonitorState {
  /// The account in which the Synthetics monitor will be created.
  final pulumi.Input<String>? accountId;
  /// The desired number of remaining days until the certificate expires to trigger a monitor failure.
  final pulumi.Input<int>? certificateExpiration;
  /// The domain of the host that will have its certificate checked.
  final pulumi.Input<String>? domain;
  /// The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  final pulumi.Input<List<String>>? locationsPrivates;
  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  final pulumi.Input<List<String>>? locationsPublics;
  /// The monitor id of the certificate check synthetics monitor (not to be confused with the GUID of the monitor).
  final pulumi.Input<String>? monitorId;
  /// The name for the monitor.
  final pulumi.Input<String>? name;
  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  final pulumi.Input<String>? period;
  /// The interval in minutes at which Synthetic monitor should run.
  final pulumi.Input<int>? periodInMinutes;
  /// The runtime that the monitor will use to run jobs (`NODE_API`).
  final pulumi.Input<String>? runtimeType_;
  /// The specific version of the runtime type selected (`16.10`).
  ///
  /// > **WARNING:**  The <b style="color:red;">end-of-life</b> of the **Synthetics Legacy Runtime** took effect on <b style="color:red;">October 22, 2024</b>, implying that support for using the deprecated Synthetics Legacy Runtime with **new and existing** Synthetic monitors <b style="color:maroon;">officially ended as of October 22, 2024</b>. As a consequence of this API change, all requests associated with Synthetic Monitors (except Ping Monitors) going out of the New Relic Terraform Provider will be blocked by an API error if they include values corresponding to the legacy runtime or blank runtime values.
  /// <br><br>
  /// Following these changes, starting with <b style="color:red;">v3.51.0</b> of the New Relic Terraform Provider, configuration of **new and existing** Synthetic monitors without runtime attributes (or) comprising runtime attributes signifying the legacy runtime will be deemed invalid (this applies to all Synthetic monitor resources, except `newrelic.synthetics.Monitor` with type `SIMPLE`). If your monitors' configuration is not updated with new runtime values, you will see the consequences stated here. New Synthetic monitors created after August 26, 2024 already adhere to these restrictions, as part of the first phase of the EOL.
  /// <br><br>
  /// We kindly recommend that you upgrade your Synthetic Monitors to the new runtime as soon as possible if they are still using the legacy runtime, to avoid seeing the aforementioned consequences. Please check out this guide in the documentation of the Terraform Provider (specifically, the table at the bottom of the guide, if you're looking for updates to be made to the configuration of Synthetic monitors) and [this announcement](https://forum.newrelic.com/s/hubtopic/aAXPh0000001brxOAA/upcoming-endoflife-legacy-synthetics-runtimes-and-cpm) for more details on the EOL, actions needed, relevant resources, and more.
  /// <br><br>
  /// You would not be affected by the EOL if your Synthetic monitors' Terraform configuration comprises new runtime values.
  final pulumi.Input<String>? runtimeTypeVersion;
  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  final pulumi.Input<String>? status;
  /// The tags that will be associated with the monitor. See Nested tag blocks below for details
  final pulumi.Input<List<CertCheckMonitorTag>>? tags;
  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  final pulumi.Input<bool>? useUnsupportedLegacyRuntime;

  /// Creates a new [CertCheckMonitorState].
  /// [accountId] The account in which the Synthetics monitor will be created.
  /// [certificateExpiration] The desired number of remaining days until the certificate expires to trigger a monitor failure.
  /// [domain] The domain of the host that will have its certificate checked.
  /// [locationsPrivates] The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  /// [locationsPublics] The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  /// [monitorId] The monitor id of the certificate check synthetics monitor (not to be confused with the GUID of the monitor).
  /// [name] The name for the monitor.
  /// [period] The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  /// [periodInMinutes] The interval in minutes at which Synthetic monitor should run.
  /// [runtimeType_] The runtime that the monitor will use to run jobs (`NODE_API`).
  /// [runtimeTypeVersion] The specific version of the runtime type selected (`16.10`).
  /// [status] The run state of the monitor. (`ENABLED` or `DISABLED`).
  /// [tags] The tags that will be associated with the monitor. See Nested tag blocks below for details
  /// [useUnsupportedLegacyRuntime] A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  CertCheckMonitorState({
    this.accountId,
    this.certificateExpiration,
    this.domain,
    this.locationsPrivates,
    this.locationsPublics,
    this.monitorId,
    this.name,
    this.period,
    this.periodInMinutes,
    this.runtimeType_,
    this.runtimeTypeVersion,
    this.status,
    this.tags,
    this.useUnsupportedLegacyRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'certificateExpiration': ?certificateExpiration,
      'domain': ?domain,
      'locationsPrivates': ?locationsPrivates,
      'locationsPublics': ?locationsPublics,
      'monitorId': ?monitorId,
      'name': ?name,
      'period': ?period,
      'periodInMinutes': ?periodInMinutes,
      'runtimeType': ?runtimeType_,
      'runtimeTypeVersion': ?runtimeTypeVersion,
      'status': ?status,
      'tags': ?pulumi.Input.mapOptionalInputValue<List<CertCheckMonitorTag>, List<Map<String, dynamic>>>(tags, (value) => pulumi.Input.encodeList<CertCheckMonitorTag, Map<String, dynamic>>(value, (value) => value.toMap())),
      'useUnsupportedLegacyRuntime': ?useUnsupportedLegacyRuntime,
    };
  }

  factory CertCheckMonitorState.fromMap(Map<String, dynamic> map) {
    return CertCheckMonitorState(
      accountId: map['accountId'] == null ? null : (map['accountId']! as String).input(),
      certificateExpiration: map['certificateExpiration'] == null ? null : (map['certificateExpiration']! as int).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      locationsPrivates: map['locationsPrivates'] == null ? null : ((map['locationsPrivates']! as List).cast<String>()).input(),
      locationsPublics: map['locationsPublics'] == null ? null : ((map['locationsPublics']! as List).cast<String>()).input(),
      monitorId: map['monitorId'] == null ? null : (map['monitorId']! as String).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as String).input(),
      periodInMinutes: map['periodInMinutes'] == null ? null : (map['periodInMinutes']! as int).input(),
      runtimeType_: map['runtimeType'] == null ? null : (map['runtimeType']! as String).input(),
      runtimeTypeVersion: map['runtimeTypeVersion'] == null ? null : (map['runtimeTypeVersion']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      tags: map['tags'] == null ? null : (pulumi.Input.decodeList<CertCheckMonitorTag>(map['tags']!, (value) => CertCheckMonitorTag.fromMap((value as Map).cast<String, dynamic>()))).input(),
      useUnsupportedLegacyRuntime: map['useUnsupportedLegacyRuntime'] == null ? null : (map['useUnsupportedLegacyRuntime']! as bool).input(),
    );
  }
}


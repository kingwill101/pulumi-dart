// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_check_monitor_tag.dart';

/// {@template pulumi_synthetics_cert_check_monitor_cert_check_monitor_args_doc}
/// The set of arguments for CertCheckMonitor.
/// {@endtemplate}
/// {@macro pulumi_synthetics_cert_check_monitor_cert_check_monitor_args_doc}
class CertCheckMonitorArgs {
  /// The account in which the Synthetics monitor will be created.
  final pulumi.Input<String>? accountId;

  /// The desired number of remaining days until the certificate expires to trigger a monitor failure.
  final pulumi.Input<int> certificateExpiration;

  /// The domain of the host that will have its certificate checked.
  final pulumi.Input<String> domain;

  /// The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  final pulumi.Input<List<String>>? locationsPrivates;

  /// The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  final pulumi.Input<List<String>>? locationsPublics;

  /// The name for the monitor.
  final pulumi.Input<String>? name;

  /// The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  final pulumi.Input<String> period;

  /// The runtime that the monitor will use to run jobs (`NODE_API`).
  final pulumi.Input<String>? runtimeType_;

  /// The specific version of the runtime type selected (`16.10`).
  ///
  /// &gt; **WARNING:**  The &lt;b style="color:red;"&gt;end-of-life&lt;/b&gt; of the **Synthetics Legacy Runtime** took effect on &lt;b style="color:red;"&gt;October 22, 2024&lt;/b&gt;, implying that support for using the deprecated Synthetics Legacy Runtime with **new and existing** Synthetic monitors &lt;b style="color:maroon;"&gt;officially ended as of October 22, 2024&lt;/b&gt;. As a consequence of this API change, all requests associated with Synthetic Monitors (except Ping Monitors) going out of the New Relic Terraform Provider will be blocked by an API error if they include values corresponding to the legacy runtime or blank runtime values.
  /// &lt;br&gt;&lt;br&gt;
  /// Following these changes, starting with &lt;b style="color:red;"&gt;v3.51.0&lt;/b&gt; of the New Relic Terraform Provider, configuration of **new and existing** Synthetic monitors without runtime attributes (or) comprising runtime attributes signifying the legacy runtime will be deemed invalid (this applies to all Synthetic monitor resources, except `newrelic.synthetics.Monitor` with type `SIMPLE`). If your monitors' configuration is not updated with new runtime values, you will see the consequences stated here. New Synthetic monitors created after August 26, 2024 already adhere to these restrictions, as part of the first phase of the EOL.
  /// &lt;br&gt;&lt;br&gt;
  /// We kindly recommend that you upgrade your Synthetic Monitors to the new runtime as soon as possible if they are still using the legacy runtime, to avoid seeing the aforementioned consequences. Please check out this guide in the documentation of the Terraform Provider (specifically, the table at the bottom of the guide, if you're looking for updates to be made to the configuration of Synthetic monitors) and [this announcement](https://forum.newrelic.com/s/hubtopic/aAXPh0000001brxOAA/upcoming-endoflife-legacy-synthetics-runtimes-and-cpm) for more details on the EOL, actions needed, relevant resources, and more.
  /// &lt;br&gt;&lt;br&gt;
  /// You would not be affected by the EOL if your Synthetic monitors' Terraform configuration comprises new runtime values.
  final pulumi.Input<String>? runtimeTypeVersion;

  /// The run state of the monitor. (`ENABLED` or `DISABLED`).
  final pulumi.Input<String> status;

  /// The tags that will be associated with the monitor. See Nested tag blocks below for details
  final pulumi.Input<List<CertCheckMonitorTag>>? tags;

  /// A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  final pulumi.Input<bool>? useUnsupportedLegacyRuntime;

  /// Creates a new [CertCheckMonitorArgs].
  /// [accountId] The account in which the Synthetics monitor will be created.
  /// [certificateExpiration] The desired number of remaining days until the certificate expires to trigger a monitor failure.
  /// [domain] The domain of the host that will have its certificate checked.
  /// [locationsPrivates] The location the monitor will run from. Accepts a list of private location GUIDs. At least one of either `locations_public` or `locations_private` is required.
  /// [locationsPublics] The location the monitor will run from. Check out [this page](https://docs.newrelic.com/docs/synthetics/synthetic-monitoring/administration/synthetic-public-minion-ips/) for a list of valid public locations. You don't need the `AWS_` prefix as the provider uses NerdGraph. At least one of either `locations_public` or `location_private` is required.
  /// [name] The name for the monitor.
  /// [period] The interval at which this monitor should run. Valid values are `EVERY_MINUTE`, `EVERY_5_MINUTES`, `EVERY_10_MINUTES`, `EVERY_15_MINUTES`, `EVERY_30_MINUTES`, `EVERY_HOUR`, `EVERY_6_HOURS`, `EVERY_12_HOURS`, or `EVERY_DAY`.
  /// [runtimeType_] The runtime that the monitor will use to run jobs (`NODE_API`).
  /// [runtimeTypeVersion] The specific version of the runtime type selected (`16.10`).
  /// [status] The run state of the monitor. (`ENABLED` or `DISABLED`).
  /// [tags] The tags that will be associated with the monitor. See Nested tag blocks below for details
  /// [useUnsupportedLegacyRuntime] A boolean attribute to be set true by the customer, if they would like to use the unsupported legacy runtime of Synthetic Monitors by means of an exemption given until the October 22, 2024 Legacy Runtime EOL. Setting this attribute to true would allow skipping validation performed by the the New Relic Terraform Provider starting v3.43.0 to disallow using the legacy runtime with new monitors. This would, hence, allow creation of monitors in the legacy runtime until the October 22, 2024 Legacy Runtime EOL, if exempt by the API.
  CertCheckMonitorArgs({
    this.accountId,
    required this.certificateExpiration,
    required this.domain,
    this.locationsPrivates,
    this.locationsPublics,
    this.name,
    required this.period,
    this.runtimeType_,
    this.runtimeTypeVersion,
    required this.status,
    this.tags,
    this.useUnsupportedLegacyRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'certificateExpiration': certificateExpiration,
      'domain': domain,
      'locationsPrivates': ?locationsPrivates,
      'locationsPublics': ?locationsPublics,
      'name': ?name,
      'period': period,
      'runtimeType': ?runtimeType_,
      'runtimeTypeVersion': ?runtimeTypeVersion,
      'status': status,
      'tags':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertCheckMonitorTag>,
            List<Map<String, dynamic>>
          >(
            tags,
            (value) =>
                pulumi.Input.encodeList<
                  CertCheckMonitorTag,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'useUnsupportedLegacyRuntime': ?useUnsupportedLegacyRuntime,
    };
  }

  factory CertCheckMonitorArgs.fromMap(Map<String, dynamic> map) {
    return CertCheckMonitorArgs(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      certificateExpiration: pulumi.Input.fromValue(
        map['certificateExpiration'] as int,
      ),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      locationsPrivates: (() {
        final guardedValue = map['locationsPrivates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      locationsPublics: (() {
        final guardedValue = map['locationsPublics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      period: pulumi.Input.fromValue(map['period'] as String),
      runtimeType_: (() {
        final guardedValue = map['runtimeType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      runtimeTypeVersion: (() {
        final guardedValue = map['runtimeTypeVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertCheckMonitorTag>(
            guardedValue,
            (value) => CertCheckMonitorTag.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      useUnsupportedLegacyRuntime: (() {
        final guardedValue = map['useUnsupportedLegacyRuntime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

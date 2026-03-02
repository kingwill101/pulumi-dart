// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_content_matcher.dart';
import 'uptime_check_config_http_check.dart';
import 'uptime_check_config_monitored_resource.dart';
import 'uptime_check_config_resource_group.dart';
import 'uptime_check_config_synthetic_monitor.dart';
import 'uptime_check_config_tcp_check.dart';

/// Input properties used for looking up and filtering UptimeCheckConfig resources.
class UptimeCheckConfigState {
  /// The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// Possible values are: `STATIC_IP_CHECKERS`, `VPC_CHECKERS`.
  final pulumi.Input<String>? checkerType;
  /// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// Structure is documented below.
  final pulumi.Input<List<UptimeCheckConfigContentMatcher>>? contentMatchers;
  /// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  final pulumi.Input<String>? displayName;
  /// Contains information needed to make an HTTP or HTTPS check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigHttpCheck>? httpCheck;
  /// Specifies whether to log the results of failed probes to Cloud Logging.
  final pulumi.Input<bool>? logCheckFailures;
  /// The [monitored resource]
  /// (https://cloud.google.com/monitoring/api/resources) associated with the
  /// configuration. The following monitored resource types are supported for
  /// uptime checks:
  final pulumi.Input<UptimeCheckConfigMonitoredResource>? monitoredResource;
  /// A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  final pulumi.Input<String>? name;
  /// How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  final pulumi.Input<String>? period;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The group resource associated with the configuration.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigResourceGroup>? resourceGroup;
  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  final pulumi.Input<List<String>>? selectedRegions;
  /// A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigSyntheticMonitor>? syntheticMonitor;
  /// Contains information needed to make a TCP check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigTcpCheck>? tcpCheck;
  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  final pulumi.Input<String>? timeout;
  /// The id of the uptime check
  final pulumi.Input<String>? uptimeCheckId;
  /// User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [UptimeCheckConfigState].
  /// [checkerType] The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// [contentMatchers] The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// [displayName] A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  /// [httpCheck] Contains information needed to make an HTTP or HTTPS check.
  /// [logCheckFailures] Specifies whether to log the results of failed probes to Cloud Logging.
  /// [monitoredResource] The [monitored resource]
  /// [name] A unique resource name for this UptimeCheckConfig. The format is `projects/[PROJECT_ID]/uptimeCheckConfigs/[UPTIME_CHECK_ID]`.
  /// [period] How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceGroup] The group resource associated with the configuration.
  /// [selectedRegions] The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  /// [syntheticMonitor] A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// [tcpCheck] Contains information needed to make a TCP check.
  /// [timeout] The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  /// [uptimeCheckId] The id of the uptime check
  /// [userLabels] User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  UptimeCheckConfigState({
    this.checkerType,
    this.contentMatchers,
    this.displayName,
    this.httpCheck,
    this.logCheckFailures,
    this.monitoredResource,
    this.name,
    this.period,
    this.project,
    this.resourceGroup,
    this.selectedRegions,
    this.syntheticMonitor,
    this.tcpCheck,
    this.timeout,
    this.uptimeCheckId,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkerType': ?checkerType,
      'contentMatchers': ?pulumi.Input.mapOptionalInputValue<List<UptimeCheckConfigContentMatcher>, List<Map<String, dynamic>>>(contentMatchers, (value) => pulumi.Input.encodeList<UptimeCheckConfigContentMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'httpCheck': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigHttpCheck, Map<String, dynamic>>(httpCheck, (value) => value.toMap()),
      'logCheckFailures': ?logCheckFailures,
      'monitoredResource': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigMonitoredResource, Map<String, dynamic>>(monitoredResource, (value) => value.toMap()),
      'name': ?name,
      'period': ?period,
      'project': ?project,
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'selectedRegions': ?selectedRegions,
      'syntheticMonitor': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigSyntheticMonitor, Map<String, dynamic>>(syntheticMonitor, (value) => value.toMap()),
      'tcpCheck': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigTcpCheck, Map<String, dynamic>>(tcpCheck, (value) => value.toMap()),
      'timeout': ?timeout,
      'uptimeCheckId': ?uptimeCheckId,
      'userLabels': ?userLabels,
    };
  }

  factory UptimeCheckConfigState.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigState(
      checkerType: map['checkerType'] == null ? null : (map['checkerType']! as String).input(),
      contentMatchers: map['contentMatchers'] == null ? null : (pulumi.Input.decodeList<UptimeCheckConfigContentMatcher>(map['contentMatchers']!, (value) => UptimeCheckConfigContentMatcher.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      httpCheck: map['httpCheck'] == null ? null : (UptimeCheckConfigHttpCheck.fromMap((map['httpCheck']! as Map).cast<String, dynamic>())).input(),
      logCheckFailures: map['logCheckFailures'] == null ? null : (map['logCheckFailures']! as bool).input(),
      monitoredResource: map['monitoredResource'] == null ? null : (UptimeCheckConfigMonitoredResource.fromMap((map['monitoredResource']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      period: map['period'] == null ? null : (map['period']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (UptimeCheckConfigResourceGroup.fromMap((map['resourceGroup']! as Map).cast<String, dynamic>())).input(),
      selectedRegions: map['selectedRegions'] == null ? null : ((map['selectedRegions']! as List).cast<String>()).input(),
      syntheticMonitor: map['syntheticMonitor'] == null ? null : (UptimeCheckConfigSyntheticMonitor.fromMap((map['syntheticMonitor']! as Map).cast<String, dynamic>())).input(),
      tcpCheck: map['tcpCheck'] == null ? null : (UptimeCheckConfigTcpCheck.fromMap((map['tcpCheck']! as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as String).input(),
      uptimeCheckId: map['uptimeCheckId'] == null ? null : (map['uptimeCheckId']! as String).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels']! as Map).cast<String, String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'uptime_check_config_content_matcher.dart';
import 'uptime_check_config_http_check.dart';
import 'uptime_check_config_monitored_resource.dart';
import 'uptime_check_config_resource_group.dart';
import 'uptime_check_config_synthetic_monitor.dart';
import 'uptime_check_config_tcp_check.dart';

/// {@template pulumi_monitoring_uptime_check_config_uptime_check_config_args_doc}
/// The set of arguments for UptimeCheckConfig.
/// {@endtemplate}
/// {@macro pulumi_monitoring_uptime_check_config_uptime_check_config_args_doc}
class UptimeCheckConfigArgs {
  /// The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// Possible values are: `STATIC_IP_CHECKERS`, `VPC_CHECKERS`.
  final pulumi.Input<String>? checkerType;
  /// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// Structure is documented below.
  final pulumi.Input<List<UptimeCheckConfigContentMatcher>>? contentMatchers;
  /// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  final pulumi.Input<String> displayName;
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
  final pulumi.Input<String> timeout;
  /// User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [UptimeCheckConfigArgs].
  /// [checkerType] The checker type to use for the check. If the monitored resource type is `servicedirectory_service`, `checker_type` must be set to `VPC_CHECKERS`.
  /// [contentMatchers] The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// [displayName] A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  /// [httpCheck] Contains information needed to make an HTTP or HTTPS check.
  /// [logCheckFailures] Specifies whether to log the results of failed probes to Cloud Logging.
  /// [monitoredResource] The [monitored resource]
  /// [period] How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceGroup] The group resource associated with the configuration.
  /// [selectedRegions] The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  /// [syntheticMonitor] A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// [tcpCheck] Contains information needed to make a TCP check.
  /// [timeout] The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  /// [userLabels] User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  UptimeCheckConfigArgs({
    pulumi.Output<String>? checkerType,
    pulumi.Output<List<UptimeCheckConfigContentMatcher>>? contentMatchers,
    required pulumi.Output<String> displayName,
    pulumi.Output<UptimeCheckConfigHttpCheck>? httpCheck,
    pulumi.Output<bool>? logCheckFailures,
    pulumi.Output<UptimeCheckConfigMonitoredResource>? monitoredResource,
    pulumi.Output<String>? period,
    pulumi.Output<String>? project,
    pulumi.Output<UptimeCheckConfigResourceGroup>? resourceGroup,
    pulumi.Output<List<String>>? selectedRegions,
    pulumi.Output<UptimeCheckConfigSyntheticMonitor>? syntheticMonitor,
    pulumi.Output<UptimeCheckConfigTcpCheck>? tcpCheck,
    required pulumi.Output<String> timeout,
    pulumi.Output<Map<String, String>>? userLabels,
  }) :
      checkerType = pulumi.Input.asOptionalInput<String>(checkerType),
      contentMatchers = pulumi.Input.asOptionalInput<List<UptimeCheckConfigContentMatcher>>(contentMatchers),
      displayName = pulumi.Input.asInput<String>(displayName),
      httpCheck = pulumi.Input.asOptionalInput<UptimeCheckConfigHttpCheck>(httpCheck),
      logCheckFailures = pulumi.Input.asOptionalInput<bool>(logCheckFailures),
      monitoredResource = pulumi.Input.asOptionalInput<UptimeCheckConfigMonitoredResource>(monitoredResource),
      period = pulumi.Input.asOptionalInput<String>(period),
      project = pulumi.Input.asOptionalInput<String>(project),
      resourceGroup = pulumi.Input.asOptionalInput<UptimeCheckConfigResourceGroup>(resourceGroup),
      selectedRegions = pulumi.Input.asOptionalInput<List<String>>(selectedRegions),
      syntheticMonitor = pulumi.Input.asOptionalInput<UptimeCheckConfigSyntheticMonitor>(syntheticMonitor),
      tcpCheck = pulumi.Input.asOptionalInput<UptimeCheckConfigTcpCheck>(tcpCheck),
      timeout = pulumi.Input.asInput<String>(timeout),
      userLabels = pulumi.Input.asOptionalInput<Map<String, String>>(userLabels);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkerType': ?checkerType,
      'contentMatchers': ?pulumi.Input.mapOptionalInputValue<List<UptimeCheckConfigContentMatcher>, List<Map<String, dynamic>>>(contentMatchers, (value) => pulumi.Input.encodeList<UptimeCheckConfigContentMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': displayName,
      'httpCheck': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigHttpCheck, Map<String, dynamic>>(httpCheck, (value) => value.toMap()),
      'logCheckFailures': ?logCheckFailures,
      'monitoredResource': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigMonitoredResource, Map<String, dynamic>>(monitoredResource, (value) => value.toMap()),
      'period': ?period,
      'project': ?project,
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'selectedRegions': ?selectedRegions,
      'syntheticMonitor': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigSyntheticMonitor, Map<String, dynamic>>(syntheticMonitor, (value) => value.toMap()),
      'tcpCheck': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigTcpCheck, Map<String, dynamic>>(tcpCheck, (value) => value.toMap()),
      'timeout': timeout,
      'userLabels': ?userLabels,
    };
  }

  factory UptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigArgs(
      checkerType: map['checkerType'] == null ? null : pulumi.Output.create<String>(map['checkerType'] as String),
      contentMatchers: map['contentMatchers'] == null ? null : pulumi.Output.create<List<UptimeCheckConfigContentMatcher>>(pulumi.Input.decodeList<UptimeCheckConfigContentMatcher>(map['contentMatchers'], (value) => UptimeCheckConfigContentMatcher.fromMap((value as Map).cast<String, dynamic>()))),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      httpCheck: map['httpCheck'] == null ? null : pulumi.Output.create<UptimeCheckConfigHttpCheck>(UptimeCheckConfigHttpCheck.fromMap((map['httpCheck'] as Map).cast<String, dynamic>())),
      logCheckFailures: map['logCheckFailures'] == null ? null : pulumi.Output.create<bool>(map['logCheckFailures'] as bool),
      monitoredResource: map['monitoredResource'] == null ? null : pulumi.Output.create<UptimeCheckConfigMonitoredResource>(UptimeCheckConfigMonitoredResource.fromMap((map['monitoredResource'] as Map).cast<String, dynamic>())),
      period: map['period'] == null ? null : pulumi.Output.create<String>(map['period'] as String),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      resourceGroup: map['resourceGroup'] == null ? null : pulumi.Output.create<UptimeCheckConfigResourceGroup>(UptimeCheckConfigResourceGroup.fromMap((map['resourceGroup'] as Map).cast<String, dynamic>())),
      selectedRegions: map['selectedRegions'] == null ? null : pulumi.Output.create<List<String>>((map['selectedRegions'] as List).cast<String>()),
      syntheticMonitor: map['syntheticMonitor'] == null ? null : pulumi.Output.create<UptimeCheckConfigSyntheticMonitor>(UptimeCheckConfigSyntheticMonitor.fromMap((map['syntheticMonitor'] as Map).cast<String, dynamic>())),
      tcpCheck: map['tcpCheck'] == null ? null : pulumi.Output.create<UptimeCheckConfigTcpCheck>(UptimeCheckConfigTcpCheck.fromMap((map['tcpCheck'] as Map).cast<String, dynamic>())),
      timeout: pulumi.Output.create<String>(map['timeout'] as String),
      userLabels: map['userLabels'] == null ? null : pulumi.Output.create<Map<String, String>>((map['userLabels'] as Map).cast<String, String>()),
    );
  }
}


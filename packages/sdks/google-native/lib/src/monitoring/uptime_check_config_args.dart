// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'content_matcher.dart';
import 'http_check.dart';
import 'internal_checker.dart';
import 'monitored_resource_monitoring_v3.dart';
import 'resource_group.dart';
import 'synthetic_monitor_target.dart';
import 'tcp_check.dart';
import 'uptime_check_config_checker_type.dart';
import 'uptime_check_config_selected_regions_item.dart';

/// {@template pulumi_monitoring_v3_uptime_check_config_args_doc}
/// The set of arguments for UptimeCheckConfig.
/// {@endtemplate}
/// {@macro pulumi_monitoring_v3_uptime_check_config_args_doc}
class UptimeCheckConfigArgs {
  /// The type of checkers to use to execute the Uptime check.
  final pulumi.Input<UptimeCheckConfigCheckerType>? checkerType;
  /// The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.
  final pulumi.Input<List<ContentMatcher>>? contentMatchers;
  /// A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
  final pulumi.Input<String>? displayName;
  /// Contains information needed to make an HTTP or HTTPS check.
  final pulumi.Input<HttpCheck>? httpCheck;
  /// The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
  final pulumi.Input<List<InternalChecker>>? internalCheckers;
  /// If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.
  final pulumi.Input<bool>? isInternal;
  /// The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision
  final pulumi.Input<MonitoredResourceMonitoringV3>? monitoredResource;
  /// Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
  final pulumi.Input<String>? name;
  /// How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  final pulumi.Input<String>? period;
  final pulumi.Input<String>? project;
  /// The group resource associated with the configuration.
  final pulumi.Input<ResourceGroup>? resourceGroup;
  /// The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
  final pulumi.Input<List<UptimeCheckConfigSelectedRegionsItem>>? selectedRegions;
  /// Specifies a Synthetic Monitor to invoke.
  final pulumi.Input<SyntheticMonitorTarget>? syntheticMonitor;
  /// Contains information needed to make a TCP check.
  final pulumi.Input<TcpCheck>? tcpCheck;
  /// The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
  final pulumi.Input<String>? timeout;
  /// User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  final pulumi.Input<Map<String, String>>? userLabels;

  /// Creates a new [UptimeCheckConfigArgs].
  /// [checkerType] The type of checkers to use to execute the Uptime check.
  /// [contentMatchers] The content that is expected to appear in the data returned by the target server against which the check is run. Currently, only the first entry in the content_matchers list is supported, and additional entries will be ignored. This field is optional and should only be specified if a content match is required as part of the/ Uptime check.
  /// [displayName] A human-friendly name for the Uptime check configuration. The display name should be unique within a Cloud Monitoring Workspace in order to make it easier to identify; however, uniqueness is not enforced. Required.
  /// [httpCheck] Contains information needed to make an HTTP or HTTPS check.
  /// [internalCheckers] The internal checkers that this check will egress from. If is_internal is true and this list is empty, the check will egress from all the InternalCheckers configured for the project that owns this UptimeCheckConfig.
  /// [isInternal] If this is true, then checks are made only from the 'internal_checkers'. If it is false, then checks are made only from the 'selected_regions'. It is an error to provide 'selected_regions' when is_internal is true, or to provide 'internal_checkers' when is_internal is false.
  /// [monitoredResource] The monitored resource (https://cloud.google.com/monitoring/api/resources) associated with the configuration. The following monitored resource types are valid for this field: uptime_url, gce_instance, gae_app, aws_ec2_instance, aws_elb_load_balancer k8s_service servicedirectory_service cloud_run_revision
  /// [name] Identifier. A unique resource name for this Uptime check configuration. The format is: projects/[PROJECT_ID_OR_NUMBER]/uptimeCheckConfigs/[UPTIME_CHECK_ID] [PROJECT_ID_OR_NUMBER] is the Workspace host project associated with the Uptime check.This field should be omitted when creating the Uptime check configuration; on create, the resource name is assigned by the server and included in the response.
  /// [period] How often, in seconds, the Uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 60s.
  /// [project] Optional.
  /// [resourceGroup] The group resource associated with the configuration.
  /// [selectedRegions] The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions must be provided to include a minimum of 3 locations. Not specifying this field will result in Uptime checks running from all available regions.
  /// [syntheticMonitor] Specifies a Synthetic Monitor to invoke.
  /// [tcpCheck] Contains information needed to make a TCP check.
  /// [timeout] The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). Required.
  /// [userLabels] User-supplied key/value data to be used for organizing and identifying the UptimeCheckConfig objects.The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  UptimeCheckConfigArgs({
    this.checkerType,
    this.contentMatchers,
    this.displayName,
    this.httpCheck,
    this.internalCheckers,
    this.isInternal,
    this.monitoredResource,
    this.name,
    this.period,
    this.project,
    this.resourceGroup,
    this.selectedRegions,
    this.syntheticMonitor,
    this.tcpCheck,
    this.timeout,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkerType': ?pulumi.Input.mapOptionalInputValue<UptimeCheckConfigCheckerType, String>(checkerType, (value) => value.value),
      'contentMatchers': ?pulumi.Input.mapOptionalInputValue<List<ContentMatcher>, List<Map<String, dynamic>>>(contentMatchers, (value) => pulumi.Input.encodeList<ContentMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'displayName': ?displayName,
      'httpCheck': ?pulumi.Input.mapOptionalInputValue<HttpCheck, Map<String, dynamic>>(httpCheck, (value) => value.toMap()),
      'internalCheckers': ?pulumi.Input.mapOptionalInputValue<List<InternalChecker>, List<Map<String, dynamic>>>(internalCheckers, (value) => pulumi.Input.encodeList<InternalChecker, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isInternal': ?isInternal,
      'monitoredResource': ?pulumi.Input.mapOptionalInputValue<MonitoredResourceMonitoringV3, Map<String, dynamic>>(monitoredResource, (value) => value.toMap()),
      'name': ?name,
      'period': ?period,
      'project': ?project,
      'resourceGroup': ?pulumi.Input.mapOptionalInputValue<ResourceGroup, Map<String, dynamic>>(resourceGroup, (value) => value.toMap()),
      'selectedRegions': ?pulumi.Input.mapOptionalInputValue<List<UptimeCheckConfigSelectedRegionsItem>, List<String>>(selectedRegions, (value) => pulumi.Input.encodeList<UptimeCheckConfigSelectedRegionsItem, String>(value, (value) => value.value)),
      'syntheticMonitor': ?pulumi.Input.mapOptionalInputValue<SyntheticMonitorTarget, Map<String, dynamic>>(syntheticMonitor, (value) => value.toMap()),
      'tcpCheck': ?pulumi.Input.mapOptionalInputValue<TcpCheck, Map<String, dynamic>>(tcpCheck, (value) => value.toMap()),
      'timeout': ?timeout,
      'userLabels': ?userLabels,
    };
  }

  factory UptimeCheckConfigArgs.fromMap(Map<String, dynamic> map) {
    return UptimeCheckConfigArgs(
      checkerType: map['checkerType'] == null ? null : (UptimeCheckConfigCheckerType.fromValue(map['checkerType'] as String)).input(),
      contentMatchers: map['contentMatchers'] == null ? null : (pulumi.Input.decodeList<ContentMatcher>(map['contentMatchers'], (value) => ContentMatcher.fromMap((value as Map).cast<String, dynamic>()))).input(),
      displayName: map['displayName'] == null ? null : (map['displayName'] as String).input(),
      httpCheck: map['httpCheck'] == null ? null : (HttpCheck.fromMap((map['httpCheck'] as Map).cast<String, dynamic>())).input(),
      internalCheckers: map['internalCheckers'] == null ? null : (pulumi.Input.decodeList<InternalChecker>(map['internalCheckers'], (value) => InternalChecker.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isInternal: map['isInternal'] == null ? null : (map['isInternal'] as bool).input(),
      monitoredResource: map['monitoredResource'] == null ? null : (MonitoredResourceMonitoringV3.fromMap((map['monitoredResource'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as String).input(),
      project: map['project'] == null ? null : (map['project'] as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (ResourceGroup.fromMap((map['resourceGroup'] as Map).cast<String, dynamic>())).input(),
      selectedRegions: map['selectedRegions'] == null ? null : (pulumi.Input.decodeList<UptimeCheckConfigSelectedRegionsItem>(map['selectedRegions'], (value) => UptimeCheckConfigSelectedRegionsItem.fromValue(value as String))).input(),
      syntheticMonitor: map['syntheticMonitor'] == null ? null : (SyntheticMonitorTarget.fromMap((map['syntheticMonitor'] as Map).cast<String, dynamic>())).input(),
      tcpCheck: map['tcpCheck'] == null ? null : (TcpCheck.fromMap((map['tcpCheck'] as Map).cast<String, dynamic>())).input(),
      timeout: map['timeout'] == null ? null : (map['timeout'] as String).input(),
      userLabels: map['userLabels'] == null ? null : ((map['userLabels'] as Map).cast<String, String>()).input(),
    );
  }
}


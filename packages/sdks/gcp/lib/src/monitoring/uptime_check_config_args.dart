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
  /// The checker type to use for the check. If the monitored resource type is `servicedirectoryService`, `checkerType` must be set to `VPC_CHECKERS`.
  /// Possible values are: `STATIC_IP_CHECKERS`, `VPC_CHECKERS`.
  final pulumi.Input<String>? checkerType;
  /// The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// Structure is documented below.
  final pulumi.Input<List<UptimeCheckConfigContentMatcher>>? contentMatchers;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  final pulumi.Input<String> displayName;
  /// Contains information needed to make an HTTP or HTTPS check.
  /// Structure is documented below.
  final pulumi.Input<UptimeCheckConfigHttpCheck>? httpCheck;
  /// Specifies whether to log the results of failed probes to Cloud Logging.
  final pulumi.Input<bool>? logCheckFailures;
  /// The [monitored resource](https://cloud.google.com/monitoring/api/resources) associated with the
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
  /// [checkerType] The checker type to use for the check. If the monitored resource type is `servicedirectoryService`, `checkerType` must be set to `VPC_CHECKERS`.
  /// [contentMatchers] The expected content on the page the check is run against. Currently, only the first entry in the list is supported, and other entries will be ignored. The server will look for an exact match of the string in the page response's content. This field is optional and should only be specified if a content match is required.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] A human-friendly name for the uptime check configuration. The display name should be unique within a Stackdriver Workspace in order to make it easier to identify; however, uniqueness is not enforced.
  /// [httpCheck] Contains information needed to make an HTTP or HTTPS check.
  /// [logCheckFailures] Specifies whether to log the results of failed probes to Cloud Logging.
  /// [monitoredResource] The [monitored resource](https://cloud.google.com/monitoring/api/resources) associated with the
  /// [period] How often, in seconds, the uptime check is performed. Currently, the only supported values are 60s (1 minute), 300s (5 minutes), 600s (10 minutes), and 900s (15 minutes). Optional, defaults to 300s.
  /// [project] The ID of the project in which the resource belongs.
  /// [resourceGroup] The group resource associated with the configuration.
  /// [selectedRegions] The list of regions from which the check will be run. Some regions contain one location, and others contain more than one. If this field is specified, enough regions to include a minimum of 3 locations must be provided, or an error message is returned. Not specifying this field will result in uptime checks running from all regions.
  /// [syntheticMonitor] A Synthetic Monitor deployed to a Cloud Functions V2 instance.
  /// [tcpCheck] Contains information needed to make a TCP check.
  /// [timeout] The maximum amount of time to wait for the request to complete (must be between 1 and 60 seconds). See the accepted formats
  /// [userLabels] User-supplied key/value data to be used for organizing and identifying the `UptimeCheckConfig` objects. The field can contain up to 64 entries. Each key and value is limited to 63 Unicode characters or 128 bytes, whichever is smaller. Labels and values can contain only lowercase letters, numerals, underscores, and dashes. Keys must begin with a letter.
  const UptimeCheckConfigArgs({
    this.checkerType,
    this.contentMatchers,
    this.deletionPolicy,
    required this.displayName,
    this.httpCheck,
    this.logCheckFailures,
    this.monitoredResource,
    this.period,
    this.project,
    this.resourceGroup,
    this.selectedRegions,
    this.syntheticMonitor,
    this.tcpCheck,
    required this.timeout,
    this.userLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'checkerType': ?checkerType,
      'contentMatchers': ?pulumi.Input.mapOptionalInputValue<List<UptimeCheckConfigContentMatcher>, List<Map<String, dynamic>>>(contentMatchers, (value) => pulumi.Input.encodeList<UptimeCheckConfigContentMatcher, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deletionPolicy': ?deletionPolicy,
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
      checkerType: (() { final guardedValue = map['checkerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      contentMatchers: (() { final guardedValue = map['contentMatchers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UptimeCheckConfigContentMatcher>(guardedValue, (value) => UptimeCheckConfigContentMatcher.fromMap((value as Map).cast<String, dynamic>()))); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      httpCheck: (() { final guardedValue = map['httpCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigHttpCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logCheckFailures: (() { final guardedValue = map['logCheckFailures']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      monitoredResource: (() { final guardedValue = map['monitoredResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigMonitoredResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      period: (() { final guardedValue = map['period']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroup: (() { final guardedValue = map['resourceGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigResourceGroup.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selectedRegions: (() { final guardedValue = map['selectedRegions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      syntheticMonitor: (() { final guardedValue = map['syntheticMonitor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigSyntheticMonitor.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tcpCheck: (() { final guardedValue = map['tcpCheck']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UptimeCheckConfigTcpCheck.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      timeout: pulumi.Input.fromValue(map['timeout'] as String),
      userLabels: (() { final guardedValue = map['userLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

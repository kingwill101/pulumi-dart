// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_scan_config_authentication.dart';
import 'security_scan_config_schedule.dart';

/// {@template pulumi_compute_security_scan_config_security_scan_config_args_doc}
/// The set of arguments for SecurityScanConfig.
/// {@endtemplate}
/// {@macro pulumi_compute_security_scan_config_security_scan_config_args_doc}
class SecurityScanConfigArgs {
  /// The authentication configuration.
  /// If specified, service will use the authentication configuration during scanning.
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigAuthentication>? authentication;
  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  final pulumi.Input<List<String>>? blacklistPatterns;
  /// The user provider display name of the ScanConfig.
  final pulumi.Input<String> displayName;
  /// Controls export of scan configurations and results to Cloud Security Command Center.
  /// Default value is `ENABLED`.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? exportToSecurityCommandCenter;
  /// The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// Defaults to 15.
  final pulumi.Input<int>? maxQps;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The schedule of the ScanConfig
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigSchedule>? schedule;
  /// The starting URLs from which the scanner finds site pages.
  final pulumi.Input<List<String>> startingUrls;
  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// Each value may be one of: `APP_ENGINE`, `COMPUTE`.
  final pulumi.Input<List<String>>? targetPlatforms;
  /// Type of the user agents used for scanning
  /// Default value is `CHROME_LINUX`.
  /// Possible values are: `USER_AGENT_UNSPECIFIED`, `CHROME_LINUX`, `CHROME_ANDROID`, `SAFARI_IPHONE`.
  final pulumi.Input<String>? userAgent;

  /// Creates a new [SecurityScanConfigArgs].
  /// [authentication] The authentication configuration.
  /// [blacklistPatterns] The blacklist URL patterns as described in
  /// [displayName] The user provider display name of the ScanConfig.
  /// [exportToSecurityCommandCenter] Controls export of scan configurations and results to Cloud Security Command Center.
  /// [maxQps] The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// [project] The ID of the project in which the resource belongs.
  /// [schedule] The schedule of the ScanConfig
  /// [startingUrls] The starting URLs from which the scanner finds site pages.
  /// [targetPlatforms] Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// [userAgent] Type of the user agents used for scanning
  SecurityScanConfigArgs({
    pulumi.Output<SecurityScanConfigAuthentication>? authentication,
    pulumi.Output<List<String>>? blacklistPatterns,
    required pulumi.Output<String> displayName,
    pulumi.Output<String>? exportToSecurityCommandCenter,
    pulumi.Output<int>? maxQps,
    pulumi.Output<String>? project,
    pulumi.Output<SecurityScanConfigSchedule>? schedule,
    required pulumi.Output<List<String>> startingUrls,
    pulumi.Output<List<String>>? targetPlatforms,
    pulumi.Output<String>? userAgent,
  }) :
      authentication = pulumi.Input.asOptionalInput<SecurityScanConfigAuthentication>(authentication),
      blacklistPatterns = pulumi.Input.asOptionalInput<List<String>>(blacklistPatterns),
      displayName = pulumi.Input.asInput<String>(displayName),
      exportToSecurityCommandCenter = pulumi.Input.asOptionalInput<String>(exportToSecurityCommandCenter),
      maxQps = pulumi.Input.asOptionalInput<int>(maxQps),
      project = pulumi.Input.asOptionalInput<String>(project),
      schedule = pulumi.Input.asOptionalInput<SecurityScanConfigSchedule>(schedule),
      startingUrls = pulumi.Input.asInput<List<String>>(startingUrls),
      targetPlatforms = pulumi.Input.asOptionalInput<List<String>>(targetPlatforms),
      userAgent = pulumi.Input.asOptionalInput<String>(userAgent);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<SecurityScanConfigAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'blacklistPatterns': ?blacklistPatterns,
      'displayName': displayName,
      'exportToSecurityCommandCenter': ?exportToSecurityCommandCenter,
      'maxQps': ?maxQps,
      'project': ?project,
      'schedule': ?pulumi.Input.mapOptionalInputValue<SecurityScanConfigSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startingUrls': startingUrls,
      'targetPlatforms': ?targetPlatforms,
      'userAgent': ?userAgent,
    };
  }

  factory SecurityScanConfigArgs.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigArgs(
      authentication: map['authentication'] == null ? null : pulumi.Output.create<SecurityScanConfigAuthentication>(SecurityScanConfigAuthentication.fromMap((map['authentication'] as Map).cast<String, dynamic>())),
      blacklistPatterns: map['blacklistPatterns'] == null ? null : pulumi.Output.create<List<String>>((map['blacklistPatterns'] as List).cast<String>()),
      displayName: pulumi.Output.create<String>(map['displayName'] as String),
      exportToSecurityCommandCenter: map['exportToSecurityCommandCenter'] == null ? null : pulumi.Output.create<String>(map['exportToSecurityCommandCenter'] as String),
      maxQps: map['maxQps'] == null ? null : pulumi.Output.create<int>(map['maxQps'] as int),
      project: map['project'] == null ? null : pulumi.Output.create<String>(map['project'] as String),
      schedule: map['schedule'] == null ? null : pulumi.Output.create<SecurityScanConfigSchedule>(SecurityScanConfigSchedule.fromMap((map['schedule'] as Map).cast<String, dynamic>())),
      startingUrls: pulumi.Output.create<List<String>>((map['startingUrls'] as List).cast<String>()),
      targetPlatforms: map['targetPlatforms'] == null ? null : pulumi.Output.create<List<String>>((map['targetPlatforms'] as List).cast<String>()),
      userAgent: map['userAgent'] == null ? null : pulumi.Output.create<String>(map['userAgent'] as String),
    );
  }
}


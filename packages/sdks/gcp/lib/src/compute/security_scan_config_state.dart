// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_scan_config_authentication.dart';
import 'security_scan_config_schedule.dart';

/// Input properties used for looking up and filtering SecurityScanConfig resources.
class SecurityScanConfigState {
  /// The authentication configuration.
  /// If specified, service will use the authentication configuration during scanning.
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigAuthentication>? authentication;
  /// The blacklist URL patterns as described in
  /// https://cloud.google.com/security-scanner/docs/excluded-urls
  final pulumi.Input<List<String>>? blacklistPatterns;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The user provider display name of the ScanConfig.
  final pulumi.Input<String>? displayName;
  /// Controls export of scan configurations and results to Cloud Security Command Center.
  /// Default value is `ENABLED`.
  /// Possible values are: `ENABLED`, `DISABLED`.
  final pulumi.Input<String>? exportToSecurityCommandCenter;
  /// Whether to keep scanning even if most requests return HTTP error codes.
  final pulumi.Input<bool>? ignoreHttpStatusErrors;
  /// The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// Defaults to 15.
  final pulumi.Input<int>? maxQps;
  /// A server defined name for this index. Format:
  /// `projects/{{project}}/scanConfigs/{{server_generated_id}}`
  final pulumi.Input<String>? name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// The schedule of the ScanConfig
  /// Structure is documented below.
  final pulumi.Input<SecurityScanConfigSchedule>? schedule;
  /// The starting URLs from which the scanner finds site pages.
  final pulumi.Input<List<String>>? startingUrls;
  /// Whether the scan configuration has enabled static IP address scan feature.
  /// If enabled, the scanner will access applications from static IP addresses.
  final pulumi.Input<bool>? staticIpScan;
  /// Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// Each value may be one of: `APP_ENGINE`, `COMPUTE`.
  final pulumi.Input<List<String>>? targetPlatforms;
  /// Type of the user agents used for scanning
  /// Default value is `CHROME_LINUX`.
  /// Possible values are: `USER_AGENT_UNSPECIFIED`, `CHROME_LINUX`, `CHROME_ANDROID`, `SAFARI_IPHONE`.
  final pulumi.Input<String>? userAgent;

  /// Creates a new [SecurityScanConfigState].
  /// [authentication] The authentication configuration.
  /// [blacklistPatterns] The blacklist URL patterns as described in
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [displayName] The user provider display name of the ScanConfig.
  /// [exportToSecurityCommandCenter] Controls export of scan configurations and results to Cloud Security Command Center.
  /// [ignoreHttpStatusErrors] Whether to keep scanning even if most requests return HTTP error codes.
  /// [maxQps] The maximum QPS during scanning. A valid value ranges from 5 to 20 inclusively.
  /// [name] A server defined name for this index. Format:
  /// [project] The ID of the project in which the resource belongs.
  /// [schedule] The schedule of the ScanConfig
  /// [startingUrls] The starting URLs from which the scanner finds site pages.
  /// [staticIpScan] Whether the scan configuration has enabled static IP address scan feature.
  /// [targetPlatforms] Set of Cloud Platforms targeted by the scan. If empty, APP_ENGINE will be used as a default.
  /// [userAgent] Type of the user agents used for scanning
  const SecurityScanConfigState({
    this.authentication,
    this.blacklistPatterns,
    this.deletionPolicy,
    this.displayName,
    this.exportToSecurityCommandCenter,
    this.ignoreHttpStatusErrors,
    this.maxQps,
    this.name,
    this.project,
    this.schedule,
    this.startingUrls,
    this.staticIpScan,
    this.targetPlatforms,
    this.userAgent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?pulumi.Input.mapOptionalInputValue<SecurityScanConfigAuthentication, Map<String, dynamic>>(authentication, (value) => value.toMap()),
      'blacklistPatterns': ?blacklistPatterns,
      'deletionPolicy': ?deletionPolicy,
      'displayName': ?displayName,
      'exportToSecurityCommandCenter': ?exportToSecurityCommandCenter,
      'ignoreHttpStatusErrors': ?ignoreHttpStatusErrors,
      'maxQps': ?maxQps,
      'name': ?name,
      'project': ?project,
      'schedule': ?pulumi.Input.mapOptionalInputValue<SecurityScanConfigSchedule, Map<String, dynamic>>(schedule, (value) => value.toMap()),
      'startingUrls': ?startingUrls,
      'staticIpScan': ?staticIpScan,
      'targetPlatforms': ?targetPlatforms,
      'userAgent': ?userAgent,
    };
  }

  factory SecurityScanConfigState.fromMap(Map<String, dynamic> map) {
    return SecurityScanConfigState(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityScanConfigAuthentication.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      blacklistPatterns: (() { final guardedValue = map['blacklistPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      exportToSecurityCommandCenter: (() { final guardedValue = map['exportToSecurityCommandCenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ignoreHttpStatusErrors: (() { final guardedValue = map['ignoreHttpStatusErrors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      maxQps: (() { final guardedValue = map['maxQps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SecurityScanConfigSchedule.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      startingUrls: (() { final guardedValue = map['startingUrls']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      staticIpScan: (() { final guardedValue = map['staticIpScan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      targetPlatforms: (() { final guardedValue = map['targetPlatforms']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      userAgent: (() { final guardedValue = map['userAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

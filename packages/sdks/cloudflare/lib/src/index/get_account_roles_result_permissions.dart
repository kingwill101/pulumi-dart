// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_roles_result_permissions_analytics.dart';
import 'get_account_roles_result_permissions_billing.dart';
import 'get_account_roles_result_permissions_cache_purge.dart';
import 'get_account_roles_result_permissions_dns.dart';
import 'get_account_roles_result_permissions_dns_records.dart';
import 'get_account_roles_result_permissions_lb.dart';
import 'get_account_roles_result_permissions_logs.dart';
import 'get_account_roles_result_permissions_organization.dart';
import 'get_account_roles_result_permissions_ssl.dart';
import 'get_account_roles_result_permissions_waf.dart';
import 'get_account_roles_result_permissions_zone_settings.dart';
import 'get_account_roles_result_permissions_zones.dart';

class GetAccountRolesResultPermissions {
  final pulumi.Input<GetAccountRolesResultPermissionsAnalytics> analytics;
  final pulumi.Input<GetAccountRolesResultPermissionsBilling> billing;
  final pulumi.Input<GetAccountRolesResultPermissionsCachePurge> cachePurge;
  final pulumi.Input<GetAccountRolesResultPermissionsDns> dns;
  final pulumi.Input<GetAccountRolesResultPermissionsDnsRecords> dnsRecords;
  final pulumi.Input<GetAccountRolesResultPermissionsLb> lb;
  final pulumi.Input<GetAccountRolesResultPermissionsLogs> logs;
  final pulumi.Input<GetAccountRolesResultPermissionsOrganization> organization;
  final pulumi.Input<GetAccountRolesResultPermissionsSsl> ssl;
  final pulumi.Input<GetAccountRolesResultPermissionsWaf> waf;
  final pulumi.Input<GetAccountRolesResultPermissionsZoneSettings> zoneSettings;
  final pulumi.Input<GetAccountRolesResultPermissionsZones> zones;

  /// Creates a new [GetAccountRolesResultPermissions].
  /// [analytics] Required.
  /// [billing] Required.
  /// [cachePurge] Required.
  /// [dns] Required.
  /// [dnsRecords] Required.
  /// [lb] Required.
  /// [logs] Required.
  /// [organization] Required.
  /// [ssl] Required.
  /// [waf] Required.
  /// [zoneSettings] Required.
  /// [zones] Required.
  const GetAccountRolesResultPermissions({
    required this.analytics,
    required this.billing,
    required this.cachePurge,
    required this.dns,
    required this.dnsRecords,
    required this.lb,
    required this.logs,
    required this.organization,
    required this.ssl,
    required this.waf,
    required this.zoneSettings,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'analytics': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsAnalytics, Map<String, dynamic>>(analytics, (value) => value.toMap()),
      'billing': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsBilling, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'cachePurge': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsCachePurge, Map<String, dynamic>>(cachePurge, (value) => value.toMap()),
      'dns': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'dnsRecords': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsDnsRecords, Map<String, dynamic>>(dnsRecords, (value) => value.toMap()),
      'lb': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsLb, Map<String, dynamic>>(lb, (value) => value.toMap()),
      'logs': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'organization': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsOrganization, Map<String, dynamic>>(organization, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'waf': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsWaf, Map<String, dynamic>>(waf, (value) => value.toMap()),
      'zoneSettings': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsZoneSettings, Map<String, dynamic>>(zoneSettings, (value) => value.toMap()),
      'zones': pulumi.Input.mapInputValue<GetAccountRolesResultPermissionsZones, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetAccountRolesResultPermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountRolesResultPermissions(
      analytics: pulumi.Input.fromValue(GetAccountRolesResultPermissionsAnalytics.fromMap((map['analytics']! as Map).cast<String, dynamic>())),
      billing: pulumi.Input.fromValue(GetAccountRolesResultPermissionsBilling.fromMap((map['billing']! as Map).cast<String, dynamic>())),
      cachePurge: pulumi.Input.fromValue(GetAccountRolesResultPermissionsCachePurge.fromMap((map['cachePurge']! as Map).cast<String, dynamic>())),
      dns: pulumi.Input.fromValue(GetAccountRolesResultPermissionsDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      dnsRecords: pulumi.Input.fromValue(GetAccountRolesResultPermissionsDnsRecords.fromMap((map['dnsRecords']! as Map).cast<String, dynamic>())),
      lb: pulumi.Input.fromValue(GetAccountRolesResultPermissionsLb.fromMap((map['lb']! as Map).cast<String, dynamic>())),
      logs: pulumi.Input.fromValue(GetAccountRolesResultPermissionsLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      organization: pulumi.Input.fromValue(GetAccountRolesResultPermissionsOrganization.fromMap((map['organization']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(GetAccountRolesResultPermissionsSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      waf: pulumi.Input.fromValue(GetAccountRolesResultPermissionsWaf.fromMap((map['waf']! as Map).cast<String, dynamic>())),
      zoneSettings: pulumi.Input.fromValue(GetAccountRolesResultPermissionsZoneSettings.fromMap((map['zoneSettings']! as Map).cast<String, dynamic>())),
      zones: pulumi.Input.fromValue(GetAccountRolesResultPermissionsZones.fromMap((map['zones']! as Map).cast<String, dynamic>())),
    );
  }
}

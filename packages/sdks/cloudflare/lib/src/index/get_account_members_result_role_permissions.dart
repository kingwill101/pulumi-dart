// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_members_result_role_permissions_analytics.dart';
import 'get_account_members_result_role_permissions_billing.dart';
import 'get_account_members_result_role_permissions_cache_purge.dart';
import 'get_account_members_result_role_permissions_dns.dart';
import 'get_account_members_result_role_permissions_dns_records.dart';
import 'get_account_members_result_role_permissions_lb.dart';
import 'get_account_members_result_role_permissions_logs.dart';
import 'get_account_members_result_role_permissions_organization.dart';
import 'get_account_members_result_role_permissions_ssl.dart';
import 'get_account_members_result_role_permissions_waf.dart';
import 'get_account_members_result_role_permissions_zone_settings.dart';
import 'get_account_members_result_role_permissions_zones.dart';

class GetAccountMembersResultRolePermissions {
  final pulumi.Input<GetAccountMembersResultRolePermissionsAnalytics> analytics;
  final pulumi.Input<GetAccountMembersResultRolePermissionsBilling> billing;
  final pulumi.Input<GetAccountMembersResultRolePermissionsCachePurge> cachePurge;
  final pulumi.Input<GetAccountMembersResultRolePermissionsDns> dns;
  final pulumi.Input<GetAccountMembersResultRolePermissionsDnsRecords> dnsRecords;
  final pulumi.Input<GetAccountMembersResultRolePermissionsLb> lb;
  final pulumi.Input<GetAccountMembersResultRolePermissionsLogs> logs;
  final pulumi.Input<GetAccountMembersResultRolePermissionsOrganization> organization;
  final pulumi.Input<GetAccountMembersResultRolePermissionsSsl> ssl;
  final pulumi.Input<GetAccountMembersResultRolePermissionsWaf> waf;
  final pulumi.Input<GetAccountMembersResultRolePermissionsZoneSettings> zoneSettings;
  final pulumi.Input<GetAccountMembersResultRolePermissionsZones> zones;

  /// Creates a new [GetAccountMembersResultRolePermissions].
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
  const GetAccountMembersResultRolePermissions({
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
      'analytics': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsAnalytics, Map<String, dynamic>>(analytics, (value) => value.toMap()),
      'billing': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsBilling, Map<String, dynamic>>(billing, (value) => value.toMap()),
      'cachePurge': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsCachePurge, Map<String, dynamic>>(cachePurge, (value) => value.toMap()),
      'dns': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsDns, Map<String, dynamic>>(dns, (value) => value.toMap()),
      'dnsRecords': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsDnsRecords, Map<String, dynamic>>(dnsRecords, (value) => value.toMap()),
      'lb': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsLb, Map<String, dynamic>>(lb, (value) => value.toMap()),
      'logs': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsLogs, Map<String, dynamic>>(logs, (value) => value.toMap()),
      'organization': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsOrganization, Map<String, dynamic>>(organization, (value) => value.toMap()),
      'ssl': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsSsl, Map<String, dynamic>>(ssl, (value) => value.toMap()),
      'waf': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsWaf, Map<String, dynamic>>(waf, (value) => value.toMap()),
      'zoneSettings': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsZoneSettings, Map<String, dynamic>>(zoneSettings, (value) => value.toMap()),
      'zones': pulumi.Input.mapInputValue<GetAccountMembersResultRolePermissionsZones, Map<String, dynamic>>(zones, (value) => value.toMap()),
    };
  }

  factory GetAccountMembersResultRolePermissions.fromMap(Map<String, dynamic> map) {
    return GetAccountMembersResultRolePermissions(
      analytics: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsAnalytics.fromMap((map['analytics']! as Map).cast<String, dynamic>())),
      billing: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsBilling.fromMap((map['billing']! as Map).cast<String, dynamic>())),
      cachePurge: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsCachePurge.fromMap((map['cachePurge']! as Map).cast<String, dynamic>())),
      dns: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsDns.fromMap((map['dns']! as Map).cast<String, dynamic>())),
      dnsRecords: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsDnsRecords.fromMap((map['dnsRecords']! as Map).cast<String, dynamic>())),
      lb: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsLb.fromMap((map['lb']! as Map).cast<String, dynamic>())),
      logs: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsLogs.fromMap((map['logs']! as Map).cast<String, dynamic>())),
      organization: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsOrganization.fromMap((map['organization']! as Map).cast<String, dynamic>())),
      ssl: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsSsl.fromMap((map['ssl']! as Map).cast<String, dynamic>())),
      waf: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsWaf.fromMap((map['waf']! as Map).cast<String, dynamic>())),
      zoneSettings: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsZoneSettings.fromMap((map['zoneSettings']! as Map).cast<String, dynamic>())),
      zones: pulumi.Input.fromValue(GetAccountMembersResultRolePermissionsZones.fromMap((map['zones']! as Map).cast<String, dynamic>())),
    );
  }
}

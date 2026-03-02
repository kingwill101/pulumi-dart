// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_networkservices_v1beta1.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.
class AuditConfigNetworkservicesV1beta1 {
  /// The configuration for logging of each type of permission.
  final pulumi.Input<List<AuditLogConfigNetworkservicesV1beta1>>? auditLogConfigs;
  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final pulumi.Input<String>? service;

  /// Creates a new [AuditConfigNetworkservicesV1beta1].
  /// [auditLogConfigs] The configuration for logging of each type of permission.
  /// [service] Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  AuditConfigNetworkservicesV1beta1({
    this.auditLogConfigs,
    this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': ?pulumi.Input.mapOptionalInputValue<List<AuditLogConfigNetworkservicesV1beta1>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<AuditLogConfigNetworkservicesV1beta1, Map<String, dynamic>>(value, (value) => value.toMap())),
      'service': ?service,
    };
  }

  factory AuditConfigNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return AuditConfigNetworkservicesV1beta1(
      auditLogConfigs: map['auditLogConfigs'] == null ? null : (pulumi.Input.decodeList<AuditLogConfigNetworkservicesV1beta1>(map['auditLogConfigs'], (value) => AuditLogConfigNetworkservicesV1beta1.fromMap((value as Map).cast<String, dynamic>()))).input(),
      service: map['service'] == null ? null : (map['service'] as String).input(),
    );
  }
}


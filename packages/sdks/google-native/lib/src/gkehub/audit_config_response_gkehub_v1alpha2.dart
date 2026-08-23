// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_config_response_gkehub_v1alpha2.dart';

/// Specifies the audit configuration for a service. The configuration determines which permission types are logged, and what identities, if any, are exempted from logging. An AuditConfig must have one or more AuditLogConfigs. If there are AuditConfigs for both `allServices` and a specific service, the union of the two AuditConfigs is used for that service: the log_types specified in each AuditConfig are enabled, and the exempted_members in each AuditLogConfig are exempted. Example Policy with multiple AuditConfigs: { "audit_configs": [ { "service": "allServices", "audit_log_configs": [ { "log_type": "DATA_READ", "exempted_members": [ "user:jose@example.com" ] }, { "log_type": "DATA_WRITE" }, { "log_type": "ADMIN_READ" } ] }, { "service": "sampleservice.googleapis.com", "audit_log_configs": [ { "log_type": "DATA_READ" }, { "log_type": "DATA_WRITE", "exempted_members": [ "user:aliya@example.com" ] } ] } ] } For sampleservice, this policy enables DATA_READ, DATA_WRITE and ADMIN_READ logging. It also exempts `jose@example.com` from DATA_READ logging, and `aliya@example.com` from DATA_WRITE logging.
class AuditConfigResponseGkehubV1alpha2 {
  /// The configuration for logging of each type of permission.
  final pulumi.Input<List<AuditLogConfigResponseGkehubV1alpha2>> auditLogConfigs;
  /// Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  final pulumi.Input<String> service;

  /// Creates a new [AuditConfigResponseGkehubV1alpha2].
  /// [auditLogConfigs] The configuration for logging of each type of permission.
  /// [service] Specifies a service that will be enabled for audit logging. For example, `storage.googleapis.com`, `cloudsql.googleapis.com`. `allServices` is a special value that covers all services.
  const AuditConfigResponseGkehubV1alpha2({
    required this.auditLogConfigs,
    required this.service,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'auditLogConfigs': pulumi.Input.mapInputValue<List<AuditLogConfigResponseGkehubV1alpha2>, List<Map<String, dynamic>>>(auditLogConfigs, (value) => pulumi.Input.encodeList<AuditLogConfigResponseGkehubV1alpha2, Map<String, dynamic>>(value, (value) => value.toMap())),
      'service': service,
    };
  }

  factory AuditConfigResponseGkehubV1alpha2.fromMap(Map<String, dynamic> map) {
    return AuditConfigResponseGkehubV1alpha2(
      auditLogConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AuditLogConfigResponseGkehubV1alpha2>(map['auditLogConfigs']!, (value) => AuditLogConfigResponseGkehubV1alpha2.fromMap((value as Map).cast<String, dynamic>()))),
      service: pulumi.Input.fromValue(map['service'] as String),
    );
  }
}

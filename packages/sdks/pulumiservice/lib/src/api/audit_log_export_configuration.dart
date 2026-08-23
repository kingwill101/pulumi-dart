import 'package:pulumi/pulumi.dart' as pulumi;
import 'audit_log_export_configuration_args.dart';

/// Creates or updates the organization's automated audit log export configuration. Audit log export enables automatic delivery of audit events to an S3 bucket for long-term retention and SIEM integration. The configuration includes the S3 bucket details and IAM role for authentication. This feature is available on Business Critical edition.
class AuditLogExportConfiguration extends pulumi.CustomResource {
  /// Whether audit log export is currently active. May be paused automatically if the configured destination repeatedly fails to authenticate.
  late final pulumi.Output<bool> enabled;
  /// The result of the last audit log export attempt.
  late final pulumi.Output<dynamic> lastResult;
  /// The S3 configuration for exporting audit logs.
  late final pulumi.Output<dynamic> s3Config;

  /// Creates a new [AuditLogExportConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuditLogExportConfiguration]. {@macro pulumi_api_audit_log_export_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuditLogExportConfiguration(
    String name, {
    AuditLogExportConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'pulumiservice:api:AuditLogExportConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    lastResult = registerOutput<dynamic>('lastResult');
    s3Config = registerOutput<dynamic>('s3Config');
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config_blocking_functions.dart';
import 'config_client.dart';
import 'config_mfa.dart';
import 'config_monitoring.dart';
import 'config_multi_tenant.dart';
import 'config_quota.dart';
import 'config_sign_in.dart';
import 'config_sms_region_config.dart';

/// {@template pulumi_identityplatform_config_config_args_doc}
/// The set of arguments for Config.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_config_config_args_doc}
class ConfigArgs {
  /// List of domains authorized for OAuth redirects.
  final pulumi.Input<List<String>>? authorizedDomains;
  /// Whether anonymous users will be auto-deleted after a period of 30 days
  final pulumi.Input<bool>? autodeleteAnonymousUsers;
  /// Configuration related to blocking functions.
  /// Structure is documented below.
  final pulumi.Input<ConfigBlockingFunctions>? blockingFunctions;
  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  final pulumi.Input<ConfigClient>? client;
  /// Options related to how clients making requests on behalf of a project should be configured.
  /// Structure is documented below.
  final pulumi.Input<ConfigMfa>? mfa;
  /// Configuration related to monitoring project activity.
  /// Structure is documented below.
  final pulumi.Input<ConfigMonitoring>? monitoring;
  /// Configuration related to multi-tenant functionality.
  /// Structure is documented below.
  final pulumi.Input<ConfigMultiTenant>? multiTenant;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration related to quotas.
  /// Structure is documented below.
  final pulumi.Input<ConfigQuota>? quota;
  /// Configuration related to local sign in methods.
  /// Structure is documented below.
  final pulumi.Input<ConfigSignIn>? signIn;
  /// Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  /// Structure is documented below.
  final pulumi.Input<ConfigSmsRegionConfig>? smsRegionConfig;

  /// Creates a new [ConfigArgs].
  /// [authorizedDomains] List of domains authorized for OAuth redirects.
  /// [autodeleteAnonymousUsers] Whether anonymous users will be auto-deleted after a period of 30 days
  /// [blockingFunctions] Configuration related to blocking functions.
  /// [client] Options related to how clients making requests on behalf of a project should be configured.
  /// [mfa] Options related to how clients making requests on behalf of a project should be configured.
  /// [monitoring] Configuration related to monitoring project activity.
  /// [multiTenant] Configuration related to multi-tenant functionality.
  /// [project] The ID of the project in which the resource belongs.
  /// [quota] Configuration related to quotas.
  /// [signIn] Configuration related to local sign in methods.
  /// [smsRegionConfig] Configures the regions where users are allowed to send verification SMS for the project or tenant. This is based on the calling code of the destination phone number.
  ConfigArgs({
    this.authorizedDomains,
    this.autodeleteAnonymousUsers,
    this.blockingFunctions,
    this.client,
    this.mfa,
    this.monitoring,
    this.multiTenant,
    this.project,
    this.quota,
    this.signIn,
    this.smsRegionConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizedDomains': ?authorizedDomains,
      'autodeleteAnonymousUsers': ?autodeleteAnonymousUsers,
      'blockingFunctions': ?pulumi.Input.mapOptionalInputValue<ConfigBlockingFunctions, Map<String, dynamic>>(blockingFunctions, (value) => value.toMap()),
      'client': ?pulumi.Input.mapOptionalInputValue<ConfigClient, Map<String, dynamic>>(client, (value) => value.toMap()),
      'mfa': ?pulumi.Input.mapOptionalInputValue<ConfigMfa, Map<String, dynamic>>(mfa, (value) => value.toMap()),
      'monitoring': ?pulumi.Input.mapOptionalInputValue<ConfigMonitoring, Map<String, dynamic>>(monitoring, (value) => value.toMap()),
      'multiTenant': ?pulumi.Input.mapOptionalInputValue<ConfigMultiTenant, Map<String, dynamic>>(multiTenant, (value) => value.toMap()),
      'project': ?project,
      'quota': ?pulumi.Input.mapOptionalInputValue<ConfigQuota, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'signIn': ?pulumi.Input.mapOptionalInputValue<ConfigSignIn, Map<String, dynamic>>(signIn, (value) => value.toMap()),
      'smsRegionConfig': ?pulumi.Input.mapOptionalInputValue<ConfigSmsRegionConfig, Map<String, dynamic>>(smsRegionConfig, (value) => value.toMap()),
    };
  }

  factory ConfigArgs.fromMap(Map<String, dynamic> map) {
    return ConfigArgs(
      authorizedDomains: (() { final guardedValue = map['authorizedDomains']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      autodeleteAnonymousUsers: (() { final guardedValue = map['autodeleteAnonymousUsers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      blockingFunctions: (() { final guardedValue = map['blockingFunctions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigBlockingFunctions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      client: (() { final guardedValue = map['client']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigClient.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mfa: (() { final guardedValue = map['mfa']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMfa.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      monitoring: (() { final guardedValue = map['monitoring']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMonitoring.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      multiTenant: (() { final guardedValue = map['multiTenant']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigMultiTenant.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      quota: (() { final guardedValue = map['quota']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigQuota.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      signIn: (() { final guardedValue = map['signIn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigSignIn.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      smsRegionConfig: (() { final guardedValue = map['smsRegionConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConfigSmsRegionConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


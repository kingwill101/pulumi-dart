// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identityplatform_tenant_default_supported_idp_config_tenant_default_supported_idp_config_args_doc}
/// The set of arguments for TenantDefaultSupportedIdpConfig.
/// {@endtemplate}
/// {@macro pulumi_identityplatform_tenant_default_supported_idp_config_tenant_default_supported_idp_config_args_doc}
class TenantDefaultSupportedIdpConfigArgs {
  /// OAuth client ID
  final pulumi.Input<String> clientId;
  /// OAuth client secret
  final pulumi.Input<String> clientSecret;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String?>? deletionPolicy;
  /// If this IDP allows the user to sign in
  final pulumi.Input<bool?>? enabled;
  /// ID of the IDP. Possible values include:
  /// * `apple.com`
  /// * `facebook.com`
  /// * `gc.apple.com`
  /// * `github.com`
  /// * `google.com`
  /// * `linkedin.com`
  /// * `microsoft.com`
  /// * `playgames.google.com`
  /// * `twitter.com`
  /// * `yahoo.com`
  final pulumi.Input<String> idpId;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String?>? project;
  /// The name of the tenant where this DefaultSupportedIdpConfig resource exists
  final pulumi.Input<String> tenant;

  /// Creates a new [TenantDefaultSupportedIdpConfigArgs].
  /// [clientId] OAuth client ID
  /// [clientSecret] OAuth client secret
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [enabled] If this IDP allows the user to sign in
  /// [idpId] ID of the IDP. Possible values include:
  /// [project] The ID of the project in which the resource belongs.
  /// [tenant] The name of the tenant where this DefaultSupportedIdpConfig resource exists
  const TenantDefaultSupportedIdpConfigArgs({
    required this.clientId,
    required this.clientSecret,
    this.deletionPolicy,
    this.enabled,
    required this.idpId,
    this.project,
    required this.tenant,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': clientSecret,
      'deletionPolicy': ?deletionPolicy,
      'enabled': ?enabled,
      'idpId': idpId,
      'project': ?project,
      'tenant': tenant,
    };
  }

  factory TenantDefaultSupportedIdpConfigArgs.fromMap(Map<String, dynamic> map) {
    return TenantDefaultSupportedIdpConfigArgs(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(map['clientSecret'] as String),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      idpId: pulumi.Input.fromValue(map['idpId'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tenant: pulumi.Input.fromValue(map['tenant'] as String),
    );
  }
}

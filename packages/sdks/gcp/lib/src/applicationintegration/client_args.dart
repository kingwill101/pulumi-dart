// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_cloud_kms_config.dart';

/// {@template pulumi_applicationintegration_client_client_args_doc}
/// The set of arguments for Client.
/// {@endtemplate}
/// {@macro pulumi_applicationintegration_client_client_args_doc}
class ClientArgs {
  /// Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// Structure is documented below.
  final pulumi.Input<ClientCloudKmsConfig>? cloudKmsConfig;
  /// Indicates if sample integrations should be created along with provisioning.
  final pulumi.Input<bool>? createSampleIntegrations;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// Location in which client needs to be provisioned.
  final pulumi.Input<String> location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// (Optional, Deprecated)
  /// User input run-as service account, if empty, will bring up a new default service account.
  ///
  /// &gt; **Warning:** `runAsServiceAccount` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? runAsServiceAccount;

  /// Creates a new [ClientArgs].
  /// [cloudKmsConfig] Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// [createSampleIntegrations] Indicates if sample integrations should be created along with provisioning.
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// [location] Location in which client needs to be provisioned.
  /// [project] The ID of the project in which the resource belongs.
  /// [runAsServiceAccount] (Optional, Deprecated)
  const ClientArgs({
    this.cloudKmsConfig,
    this.createSampleIntegrations,
    this.deletionPolicy,
    required this.location,
    this.project,
    this.runAsServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudKmsConfig': ?pulumi.Input.mapOptionalInputValue<ClientCloudKmsConfig, Map<String, dynamic>>(cloudKmsConfig, (value) => value.toMap()),
      'createSampleIntegrations': ?createSampleIntegrations,
      'deletionPolicy': ?deletionPolicy,
      'location': location,
      'project': ?project,
      'runAsServiceAccount': ?runAsServiceAccount,
    };
  }

  factory ClientArgs.fromMap(Map<String, dynamic> map) {
    return ClientArgs(
      cloudKmsConfig: (() { final guardedValue = map['cloudKmsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientCloudKmsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createSampleIntegrations: (() { final guardedValue = map['createSampleIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsServiceAccount: (() { final guardedValue = map['runAsServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_cloud_kms_config.dart';

/// Input properties used for looking up and filtering Client resources.
class ClientState {
  /// Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// Structure is documented below.
  final pulumi.Input<ClientCloudKmsConfig>? cloudKmsConfig;
  /// Indicates if sample integrations should be created along with provisioning.
  final pulumi.Input<bool>? createSampleIntegrations;
  /// Location in which client needs to be provisioned.
  final pulumi.Input<String>? location;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// (Optional, Deprecated)
  /// User input run-as service account, if empty, will bring up a new default service account.
  ///
  /// &gt; **Warning:** `run_as_service_account` is deprecated and will be removed in a future major release.
  final pulumi.Input<String>? runAsServiceAccount;

  /// Creates a new [ClientState].
  /// [cloudKmsConfig] Cloud KMS config for AuthModule to encrypt/decrypt credentials.
  /// [createSampleIntegrations] Indicates if sample integrations should be created along with provisioning.
  /// [location] Location in which client needs to be provisioned.
  /// [project] The ID of the project in which the resource belongs.
  /// [runAsServiceAccount] (Optional, Deprecated)
  const ClientState({
    this.cloudKmsConfig,
    this.createSampleIntegrations,
    this.location,
    this.project,
    this.runAsServiceAccount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudKmsConfig': ?pulumi.Input.mapOptionalInputValue<ClientCloudKmsConfig, Map<String, dynamic>>(cloudKmsConfig, (value) => value.toMap()),
      'createSampleIntegrations': ?createSampleIntegrations,
      'location': ?location,
      'project': ?project,
      'runAsServiceAccount': ?runAsServiceAccount,
    };
  }

  factory ClientState.fromMap(Map<String, dynamic> map) {
    return ClientState(
      cloudKmsConfig: (() { final guardedValue = map['cloudKmsConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ClientCloudKmsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      createSampleIntegrations: (() { final guardedValue = map['createSampleIntegrations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      runAsServiceAccount: (() { final guardedValue = map['runAsServiceAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


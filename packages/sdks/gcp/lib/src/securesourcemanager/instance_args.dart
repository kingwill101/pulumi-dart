// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_private_config.dart';
import 'instance_workforce_identity_federation_config.dart';

/// {@template pulumi_securesourcemanager_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_securesourcemanager_instance_instance_args_doc}
class InstanceArgs {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  final pulumi.Input<String>? deletionPolicy;
  /// The name for the Instance.
  final pulumi.Input<String> instanceId;
  /// Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  final pulumi.Input<String>? kmsKey;
  /// Labels as key value pairs.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;
  /// The location for the Instance.
  final pulumi.Input<String> location;
  /// Private settings for private instance.
  /// Structure is documented below.
  final pulumi.Input<InstancePrivateConfig>? privateConfig;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// Configuration for Workforce Identity Federation to support third party identity provider.
  /// If unset, defaults to the Google OIDC IdP.
  /// Structure is documented below.
  final pulumi.Input<InstanceWorkforceIdentityFederationConfig>? workforceIdentityFederationConfig;

  /// Creates a new [InstanceArgs].
  /// [deletionPolicy] Whether Terraform will be prevented from destroying the resource. Defaults to PREVENT.
  /// [instanceId] The name for the Instance.
  /// [kmsKey] Customer-managed encryption key name, in the format projects/*/locations/*/keyRings/*/cryptoKeys/*.
  /// [labels] Labels as key value pairs.
  /// [location] The location for the Instance.
  /// [privateConfig] Private settings for private instance.
  /// [project] The ID of the project in which the resource belongs.
  /// [workforceIdentityFederationConfig] Configuration for Workforce Identity Federation to support third party identity provider.
  const InstanceArgs({
    this.deletionPolicy,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    this.privateConfig,
    this.project,
    this.workforceIdentityFederationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deletionPolicy': ?deletionPolicy,
      'instanceId': instanceId,
      'kmsKey': ?kmsKey,
      'labels': ?labels,
      'location': location,
      'privateConfig': ?pulumi.Input.mapOptionalInputValue<InstancePrivateConfig, Map<String, dynamic>>(privateConfig, (value) => value.toMap()),
      'project': ?project,
      'workforceIdentityFederationConfig': ?pulumi.Input.mapOptionalInputValue<InstanceWorkforceIdentityFederationConfig, Map<String, dynamic>>(workforceIdentityFederationConfig, (value) => value.toMap()),
    };
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      deletionPolicy: (() { final guardedValue = map['deletionPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      kmsKey: (() { final guardedValue = map['kmsKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      labels: (() { final guardedValue = map['labels']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      location: pulumi.Input.fromValue(map['location'] as String),
      privateConfig: (() { final guardedValue = map['privateConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstancePrivateConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      project: (() { final guardedValue = map['project']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      workforceIdentityFederationConfig: (() { final guardedValue = map['workforceIdentityFederationConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceWorkforceIdentityFederationConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

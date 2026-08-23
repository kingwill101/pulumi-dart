// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'goldengate_deployment_properties_ogg_data_group_roles_mapping.dart';

class GoldengateDeploymentPropertiesOggData {
  /// The Goldengate deployment console password in plain text.
  final pulumi.Input<String>? adminPassword;
  /// Input only. The Goldengate deployment console password secret version.
  final pulumi.Input<String>? adminPasswordSecretVersion;
  /// The Goldengate deployment console username.
  final pulumi.Input<String> adminUsername;
  /// (Output)
  /// The certificate of the GoldengateDeployment.
  final pulumi.Input<String>? certificate;
  /// (Output)
  /// The credential store of the GoldengateDeployment.
  /// Possible values:
  /// GOLDENGATE
  /// IAM
  final pulumi.Input<String>? credentialStore;
  /// The name given to the Goldengate service deployment. The name must be 1 to
  /// 32 characters long, must contain only alphanumeric characters and must
  /// start with a letter.
  final pulumi.Input<String> deployment;
  /// The group to roles mapping of the GoldengateDeployment.
  /// Structure is documented below.
  final pulumi.Input<GoldengateDeploymentPropertiesOggDataGroupRolesMapping>? groupRolesMapping;
  /// (Output)
  /// The identity domain id of the GoldengateDeployment.
  final pulumi.Input<String>? identityDomainId;
  /// Version of OGG
  final pulumi.Input<String>? oggVersion;
  /// (Output)
  /// The password secret id of the GoldengateDeployment.
  final pulumi.Input<String>? passwordSecretId;

  /// Creates a new [GoldengateDeploymentPropertiesOggData].
  /// [adminPassword] The Goldengate deployment console password in plain text.
  /// [adminPasswordSecretVersion] Input only. The Goldengate deployment console password secret version.
  /// [adminUsername] The Goldengate deployment console username.
  /// [certificate] (Output)
  /// [credentialStore] (Output)
  /// [deployment] The name given to the Goldengate service deployment. The name must be 1 to
  /// [groupRolesMapping] The group to roles mapping of the GoldengateDeployment.
  /// [identityDomainId] (Output)
  /// [oggVersion] Version of OGG
  /// [passwordSecretId] (Output)
  const GoldengateDeploymentPropertiesOggData({
    this.adminPassword,
    this.adminPasswordSecretVersion,
    required this.adminUsername,
    this.certificate,
    this.credentialStore,
    required this.deployment,
    this.groupRolesMapping,
    this.identityDomainId,
    this.oggVersion,
    this.passwordSecretId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adminPassword': ?adminPassword,
      'adminPasswordSecretVersion': ?adminPasswordSecretVersion,
      'adminUsername': adminUsername,
      'certificate': ?certificate,
      'credentialStore': ?credentialStore,
      'deployment': deployment,
      'groupRolesMapping': ?pulumi.Input.mapOptionalInputValue<GoldengateDeploymentPropertiesOggDataGroupRolesMapping, Map<String, dynamic>>(groupRolesMapping, (value) => value.toMap()),
      'identityDomainId': ?identityDomainId,
      'oggVersion': ?oggVersion,
      'passwordSecretId': ?passwordSecretId,
    };
  }

  factory GoldengateDeploymentPropertiesOggData.fromMap(Map<String, dynamic> map) {
    return GoldengateDeploymentPropertiesOggData(
      adminPassword: (() { final guardedValue = map['adminPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminPasswordSecretVersion: (() { final guardedValue = map['adminPasswordSecretVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adminUsername: pulumi.Input.fromValue(map['adminUsername'] as String),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      credentialStore: (() { final guardedValue = map['credentialStore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deployment: pulumi.Input.fromValue(map['deployment'] as String),
      groupRolesMapping: (() { final guardedValue = map['groupRolesMapping']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoldengateDeploymentPropertiesOggDataGroupRolesMapping.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      identityDomainId: (() { final guardedValue = map['identityDomainId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      oggVersion: (() { final guardedValue = map['oggVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretId: (() { final guardedValue = map['passwordSecretId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_credential_kubeconfig_response.dart';
import 'artifact_profile_response.dart';
import 'sshkeylist_appliance_keys_response.dart';

/// Result data returned by listApplianceKeys.
class ListApplianceKeysResult {
  /// Map of artifacts that contains a list of ArtifactProfile used to upload artifacts such as logs.
  final Map<String, ArtifactProfileResponse>? artifactProfiles;
  /// The list of appliance kubeconfigs.
  final List<ApplianceCredentialKubeconfigResponse>? kubeconfigs;
  /// Map of Customer User Public, Private SSH Keys and Certificate when available.
  final Map<String, SSHKeylistApplianceKeysResponse>? sshKeys;

  /// Creates a new [ListApplianceKeysResult].
  /// [artifactProfiles] Map of artifacts that contains a list of ArtifactProfile used to upload artifacts such as logs.
  /// [kubeconfigs] The list of appliance kubeconfigs.
  /// [sshKeys] Map of Customer User Public, Private SSH Keys and Certificate when available.
  const ListApplianceKeysResult({
    this.artifactProfiles,
    this.kubeconfigs,
    this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfiles': ?(() { final guardedValue = artifactProfiles; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<ArtifactProfileResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'kubeconfigs': ?(() { final guardedValue = kubeconfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<ApplianceCredentialKubeconfigResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'sshKeys': ?(() { final guardedValue = sshKeys; if (guardedValue == null) return null; return pulumi.Input.encodeMapValues<SSHKeylistApplianceKeysResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory ListApplianceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListApplianceKeysResult(
      artifactProfiles: (() { final guardedValue = map['artifactProfiles']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<ArtifactProfileResponse>(guardedValue, (value) => ArtifactProfileResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      kubeconfigs: (() { final guardedValue = map['kubeconfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ApplianceCredentialKubeconfigResponse>(guardedValue, (value) => ApplianceCredentialKubeconfigResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      sshKeys: (() { final guardedValue = map['sshKeys']; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<SSHKeylistApplianceKeysResponse>(guardedValue, (value) => SSHKeylistApplianceKeysResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}

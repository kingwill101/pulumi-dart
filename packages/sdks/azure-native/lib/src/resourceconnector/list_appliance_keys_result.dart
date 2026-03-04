// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'appliance_credential_kubeconfig_response.dart';
import 'artifact_profile_response.dart';
import 'sshkey_response.dart';

/// Result data returned by listApplianceKeys.
class ListApplianceKeysResult {
  /// Map of artifacts that contains a list of ArtifactProfile used to upload artifacts such as logs.
  final Map<String, ArtifactProfileResponse> artifactProfiles;

  /// The list of appliance kubeconfigs.
  final List<ApplianceCredentialKubeconfigResponse> kubeconfigs;

  /// Map of Customer User Public, Private SSH Keys and Certificate when available.
  final Map<String, SSHKeyResponse> sshKeys;

  /// Creates a new [ListApplianceKeysResult].
  /// [artifactProfiles] Map of artifacts that contains a list of ArtifactProfile used to upload artifacts such as logs.
  /// [kubeconfigs] The list of appliance kubeconfigs.
  /// [sshKeys] Map of Customer User Public, Private SSH Keys and Certificate when available.
  ListApplianceKeysResult({
    required this.artifactProfiles,
    required this.kubeconfigs,
    required this.sshKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactProfiles':
          pulumi.Input.encodeMapValues<
            ArtifactProfileResponse,
            Map<String, dynamic>
          >(artifactProfiles, (value) => value.toMap()),
      'kubeconfigs':
          pulumi.Input.encodeList<
            ApplianceCredentialKubeconfigResponse,
            Map<String, dynamic>
          >(kubeconfigs, (value) => value.toMap()),
      'sshKeys':
          pulumi.Input.encodeMapValues<SSHKeyResponse, Map<String, dynamic>>(
            sshKeys,
            (value) => value.toMap(),
          ),
    };
  }

  factory ListApplianceKeysResult.fromMap(Map<String, dynamic> map) {
    return ListApplianceKeysResult(
      artifactProfiles: pulumi.Input.decodeMapValues<ArtifactProfileResponse>(
        map['artifactProfiles']!,
        (value) => ArtifactProfileResponse.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      kubeconfigs:
          pulumi.Input.decodeList<ApplianceCredentialKubeconfigResponse>(
            map['kubeconfigs']!,
            (value) => ApplianceCredentialKubeconfigResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      sshKeys: pulumi.Input.decodeMapValues<SSHKeyResponse>(
        map['sshKeys']!,
        (value) =>
            SSHKeyResponse.fromMap((value as Map).cast<String, dynamic>()),
      ),
    );
  }
}

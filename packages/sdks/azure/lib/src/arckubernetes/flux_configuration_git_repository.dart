// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FluxConfigurationGitRepository {
  /// Specifies the Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS.
  final pulumi.Input<String?>? httpsCaCertBase64;
  /// Specifies the Base64-encoded HTTPS personal access token or password that will be used to access the repository.
  final pulumi.Input<String?>? httpsKeyBase64;
  /// Specifies the plaintext HTTPS username used to access private git repositories over HTTPS.
  final pulumi.Input<String?>? httpsUser;
  /// Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. It must be between 1 and 63 characters. It can contain only lowercase letters, numbers, and hyphens (-). It must start and end with a lowercase letter or number.
  final pulumi.Input<String?>? localAuthReference;
  /// Specifies the source reference type for the GitRepository object. Possible values are `branch`, `commit`, `semver` and `tag`.
  final pulumi.Input<String> referenceType;
  /// Specifies the source reference value for the GitRepository object.
  final pulumi.Input<String> referenceValue;
  /// Specifies the Base64-encoded knownHosts value containing public SSH keys required to access private git repositories over SSH.
  final pulumi.Input<String?>? sshKnownHostsBase64;
  /// Specifies the Base64-encoded SSH private key in PEM format.
  final pulumi.Input<String?>? sshPrivateKeyBase64;
  /// Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to `600`.
  final pulumi.Input<int?>? syncIntervalInSeconds;
  /// Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to `600`.
  final pulumi.Input<int?>? timeoutInSeconds;
  /// Specifies the URL to sync for the flux configuration git repository. It must start with `http://`, `https://`, `git@` or `ssh://`.
  final pulumi.Input<String> url;

  /// Creates a new [FluxConfigurationGitRepository].
  /// [httpsCaCertBase64] Specifies the Base64-encoded HTTPS certificate authority contents used to access git private git repositories over HTTPS.
  /// [httpsKeyBase64] Specifies the Base64-encoded HTTPS personal access token or password that will be used to access the repository.
  /// [httpsUser] Specifies the plaintext HTTPS username used to access private git repositories over HTTPS.
  /// [localAuthReference] Specifies the name of a local secret on the Kubernetes cluster to use as the authentication secret rather than the managed or user-provided configuration secrets. It must be between 1 and 63 characters. It can contain only lowercase letters, numbers, and hyphens (-). It must start and end with a lowercase letter or number.
  /// [referenceType] Specifies the source reference type for the GitRepository object. Possible values are `branch`, `commit`, `semver` and `tag`.
  /// [referenceValue] Specifies the source reference value for the GitRepository object.
  /// [sshKnownHostsBase64] Specifies the Base64-encoded knownHosts value containing public SSH keys required to access private git repositories over SSH.
  /// [sshPrivateKeyBase64] Specifies the Base64-encoded SSH private key in PEM format.
  /// [syncIntervalInSeconds] Specifies the interval at which to re-reconcile the cluster git repository source with the remote. Defaults to `600`.
  /// [timeoutInSeconds] Specifies the maximum time to attempt to reconcile the cluster git repository source with the remote. Defaults to `600`.
  /// [url] Specifies the URL to sync for the flux configuration git repository. It must start with `http://`, `https://`, `git@` or `ssh://`.
  const FluxConfigurationGitRepository({
    this.httpsCaCertBase64,
    this.httpsKeyBase64,
    this.httpsUser,
    this.localAuthReference,
    required this.referenceType,
    required this.referenceValue,
    this.sshKnownHostsBase64,
    this.sshPrivateKeyBase64,
    this.syncIntervalInSeconds,
    this.timeoutInSeconds,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsCaCertBase64': ?httpsCaCertBase64,
      'httpsKeyBase64': ?httpsKeyBase64,
      'httpsUser': ?httpsUser,
      'localAuthReference': ?localAuthReference,
      'referenceType': referenceType,
      'referenceValue': referenceValue,
      'sshKnownHostsBase64': ?sshKnownHostsBase64,
      'sshPrivateKeyBase64': ?sshPrivateKeyBase64,
      'syncIntervalInSeconds': ?syncIntervalInSeconds,
      'timeoutInSeconds': ?timeoutInSeconds,
      'url': url,
    };
  }

  factory FluxConfigurationGitRepository.fromMap(Map<String, dynamic> map) {
    return FluxConfigurationGitRepository(
      httpsCaCertBase64: (() { final guardedValue = map['httpsCaCertBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsKeyBase64: (() { final guardedValue = map['httpsKeyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      httpsUser: (() { final guardedValue = map['httpsUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localAuthReference: (() { final guardedValue = map['localAuthReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceType: pulumi.Input.fromValue(map['referenceType'] as String),
      referenceValue: pulumi.Input.fromValue(map['referenceValue'] as String),
      sshKnownHostsBase64: (() { final guardedValue = map['sshKnownHostsBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sshPrivateKeyBase64: (() { final guardedValue = map['sshPrivateKeyBase64']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      syncIntervalInSeconds: (() { final guardedValue = map['syncIntervalInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      timeoutInSeconds: (() { final guardedValue = map['timeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'spring_cloud_customized_accelerator_git_repository_basic_auth.dart';
import 'spring_cloud_customized_accelerator_git_repository_ssh_auth.dart';

class SpringCloudCustomizedAcceleratorGitRepository {
  /// A `basic_auth` block as defined below. Conflicts with `git_repository[0].ssh_auth`. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final pulumi.Input<SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth>?
  basicAuth;

  /// Specifies the Git repository branch to be used.
  final pulumi.Input<String>? branch;

  /// Specifies the ID of the CA Spring Cloud Certificate for https URL of Git repository.
  final pulumi.Input<String>? caCertificateId;

  /// Specifies the Git repository commit to be used.
  final pulumi.Input<String>? commit;

  /// Specifies the Git repository tag to be used.
  final pulumi.Input<String>? gitTag;

  /// Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
  final pulumi.Input<int>? intervalInSeconds;

  /// Specifies the path under the git repository to be treated as the root directory of the accelerator or the fragment (depending on `accelerator_type`).
  final pulumi.Input<String>? path;

  /// A `ssh_auth` block as defined below. Conflicts with `git_repository[0].basic_auth`. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final pulumi.Input<SpringCloudCustomizedAcceleratorGitRepositorySshAuth>?
  sshAuth;

  /// Specifies Git repository URL for the accelerator.
  final pulumi.Input<String> url;

  /// Creates a new [SpringCloudCustomizedAcceleratorGitRepository].
  /// [basicAuth] A `basic_auth` block as defined below. Conflicts with `git_repository[0].ssh_auth`. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  /// [branch] Specifies the Git repository branch to be used.
  /// [caCertificateId] Specifies the ID of the CA Spring Cloud Certificate for https URL of Git repository.
  /// [commit] Specifies the Git repository commit to be used.
  /// [gitTag] Specifies the Git repository tag to be used.
  /// [intervalInSeconds] Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
  /// [path] Specifies the path under the git repository to be treated as the root directory of the accelerator or the fragment (depending on `accelerator_type`).
  /// [sshAuth] A `ssh_auth` block as defined below. Conflicts with `git_repository[0].basic_auth`. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  /// [url] Specifies Git repository URL for the accelerator.
  SpringCloudCustomizedAcceleratorGitRepository({
    this.basicAuth,
    this.branch,
    this.caCertificateId,
    this.commit,
    this.gitTag,
    this.intervalInSeconds,
    this.path,
    this.sshAuth,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basicAuth':
          ?pulumi.Input.mapOptionalInputValue<
            SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth,
            Map<String, dynamic>
          >(basicAuth, (value) => value.toMap()),
      'branch': ?branch,
      'caCertificateId': ?caCertificateId,
      'commit': ?commit,
      'gitTag': ?gitTag,
      'intervalInSeconds': ?intervalInSeconds,
      'path': ?path,
      'sshAuth':
          ?pulumi.Input.mapOptionalInputValue<
            SpringCloudCustomizedAcceleratorGitRepositorySshAuth,
            Map<String, dynamic>
          >(sshAuth, (value) => value.toMap()),
      'url': url,
    };
  }

  factory SpringCloudCustomizedAcceleratorGitRepository.fromMap(
    Map<String, dynamic> map,
  ) {
    return SpringCloudCustomizedAcceleratorGitRepository(
      basicAuth: (() {
        final guardedValue = map['basicAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      branch: (() {
        final guardedValue = map['branch'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      caCertificateId: (() {
        final guardedValue = map['caCertificateId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      commit: (() {
        final guardedValue = map['commit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gitTag: (() {
        final guardedValue = map['gitTag'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      intervalInSeconds: (() {
        final guardedValue = map['intervalInSeconds'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshAuth: (() {
        final guardedValue = map['sshAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SpringCloudCustomizedAcceleratorGitRepositorySshAuth.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

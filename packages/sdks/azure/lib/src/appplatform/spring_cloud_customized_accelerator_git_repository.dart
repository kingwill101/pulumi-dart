// ignore_for_file: unused_element, unnecessary_cast

import 'spring_cloud_customized_accelerator_git_repository_basic_auth.dart';
import 'spring_cloud_customized_accelerator_git_repository_ssh_auth.dart';

class SpringCloudCustomizedAcceleratorGitRepository {
  /// A `basic_auth` block as defined below. Conflicts with `git_repository[0].ssh_auth`. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth? basicAuth;
  /// Specifies the Git repository branch to be used.
  final String? branch;
  /// Specifies the ID of the CA Spring Cloud Certificate for https URL of Git repository.
  final String? caCertificateId;
  /// Specifies the Git repository commit to be used.
  final String? commit;
  /// Specifies the Git repository tag to be used.
  final String? gitTag;
  /// Specifies the interval for checking for updates to Git or image repository. It should be greater than 10.
  final int? intervalInSeconds;
  /// Specifies the path under the git repository to be treated as the root directory of the accelerator or the fragment (depending on `accelerator_type`).
  final String? path;
  /// A `ssh_auth` block as defined below. Conflicts with `git_repository[0].basic_auth`. Changing this forces a new Spring Cloud Customized Accelerator to be created.
  final SpringCloudCustomizedAcceleratorGitRepositorySshAuth? sshAuth;
  /// Specifies Git repository URL for the accelerator.
  final String url;

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
      'basicAuth': ?basicAuth == null ? null : basicAuth!.toMap(),
      'branch': ?branch,
      'caCertificateId': ?caCertificateId,
      'commit': ?commit,
      'gitTag': ?gitTag,
      'intervalInSeconds': ?intervalInSeconds,
      'path': ?path,
      'sshAuth': ?sshAuth == null ? null : sshAuth!.toMap(),
      'url': url,
    };
  }

  factory SpringCloudCustomizedAcceleratorGitRepository.fromMap(Map<String, dynamic> map) {
    return SpringCloudCustomizedAcceleratorGitRepository(
      basicAuth: map['basicAuth'] == null ? null : SpringCloudCustomizedAcceleratorGitRepositoryBasicAuth.fromMap((map['basicAuth'] as Map).cast<String, dynamic>()),
      branch: map['branch'] == null ? null : map['branch'] as String,
      caCertificateId: map['caCertificateId'] == null ? null : map['caCertificateId'] as String,
      commit: map['commit'] == null ? null : map['commit'] as String,
      gitTag: map['gitTag'] == null ? null : map['gitTag'] as String,
      intervalInSeconds: map['intervalInSeconds'] == null ? null : map['intervalInSeconds'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      sshAuth: map['sshAuth'] == null ? null : SpringCloudCustomizedAcceleratorGitRepositorySshAuth.fromMap((map['sshAuth'] as Map).cast<String, dynamic>()),
      url: map['url'] as String,
    );
  }
}


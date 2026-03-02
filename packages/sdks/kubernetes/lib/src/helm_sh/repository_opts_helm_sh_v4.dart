// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification defining the Helm chart repository to use.
class RepositoryOptsHelmShV4 {
  /// The Repository's CA File
  final pulumi.Input<dynamic>? caFile;
  /// The repository's cert file
  final pulumi.Input<dynamic>? certFile;
  /// The repository's cert key file
  final pulumi.Input<dynamic>? keyFile;
  /// Password for HTTP basic authentication
  final pulumi.Input<String>? password;
  /// Repository where to locate the requested chart. If it's a URL the chart is installed without installing the repository.
  final pulumi.Input<String>? repo;
  /// Username for HTTP basic authentication
  final pulumi.Input<String>? username;

  /// Creates a new [RepositoryOptsHelmShV4].
  /// [caFile] The Repository's CA File
  /// [certFile] The repository's cert file
  /// [keyFile] The repository's cert key file
  /// [password] Password for HTTP basic authentication
  /// [repo] Repository where to locate the requested chart. If it's a URL the chart is installed without installing the repository.
  /// [username] Username for HTTP basic authentication
  RepositoryOptsHelmShV4({
    this.caFile,
    this.certFile,
    this.keyFile,
    this.password,
    this.repo,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caFile': ?caFile,
      'certFile': ?certFile,
      'keyFile': ?keyFile,
      'password': ?password,
      'repo': ?repo,
      'username': ?username,
    };
  }

  factory RepositoryOptsHelmShV4.fromMap(Map<String, dynamic> map) {
    return RepositoryOptsHelmShV4(
      caFile: map['caFile'] == null ? null : (map['caFile']!).input(),
      certFile: map['certFile'] == null ? null : (map['certFile']!).input(),
      keyFile: map['keyFile'] == null ? null : (map['keyFile']!).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      repo: map['repo'] == null ? null : (map['repo']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}


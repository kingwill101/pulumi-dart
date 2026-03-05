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
      caFile: (() { final guardedValue = map['caFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      certFile: (() { final guardedValue = map['certFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      keyFile: (() { final guardedValue = map['keyFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      repo: (() { final guardedValue = map['repo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


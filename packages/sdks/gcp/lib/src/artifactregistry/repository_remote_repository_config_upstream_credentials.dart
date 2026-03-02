// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'repository_remote_repository_config_upstream_credentials_username_password_credentials.dart';

class RepositoryRemoteRepositoryConfigUpstreamCredentials {
  /// Use username and password to access the remote repository.
  /// Structure is documented below.
  final pulumi.Input<RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials>? usernamePasswordCredentials;

  /// Creates a new [RepositoryRemoteRepositoryConfigUpstreamCredentials].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  RepositoryRemoteRepositoryConfigUpstreamCredentials({
    this.usernamePasswordCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernamePasswordCredentials': ?pulumi.Input.mapOptionalInputValue<RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials, Map<String, dynamic>>(usernamePasswordCredentials, (value) => value.toMap()),
    };
  }

  factory RepositoryRemoteRepositoryConfigUpstreamCredentials.fromMap(Map<String, dynamic> map) {
    return RepositoryRemoteRepositoryConfigUpstreamCredentials(
      usernamePasswordCredentials: map['usernamePasswordCredentials'] == null ? null : (RepositoryRemoteRepositoryConfigUpstreamCredentialsUsernamePasswordCredentials.fromMap((map['usernamePasswordCredentials']! as Map).cast<String, dynamic>())).input(),
    );
  }
}


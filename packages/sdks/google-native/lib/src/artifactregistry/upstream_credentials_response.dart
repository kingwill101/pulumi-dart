// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'username_password_credentials_response.dart';

/// The credentials to access the remote repository.
class UpstreamCredentialsResponse {
  /// Use username and password to access the remote repository.
  final pulumi.Input<UsernamePasswordCredentialsResponse> usernamePasswordCredentials;

  /// Creates a new [UpstreamCredentialsResponse].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  UpstreamCredentialsResponse({
    required this.usernamePasswordCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernamePasswordCredentials': pulumi.Input.mapInputValue<UsernamePasswordCredentialsResponse, Map<String, dynamic>>(usernamePasswordCredentials, (value) => value.toMap()),
    };
  }

  factory UpstreamCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UpstreamCredentialsResponse(
      usernamePasswordCredentials: (UsernamePasswordCredentialsResponse.fromMap((map['usernamePasswordCredentials'] as Map).cast<String, dynamic>())).input(),
    );
  }
}


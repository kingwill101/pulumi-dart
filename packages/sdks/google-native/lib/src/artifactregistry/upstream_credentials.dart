// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'username_password_credentials.dart';

/// The credentials to access the remote repository.
class UpstreamCredentials {
  /// Use username and password to access the remote repository.
  final pulumi.Input<UsernamePasswordCredentials>? usernamePasswordCredentials;

  /// Creates a new [UpstreamCredentials].
  /// [usernamePasswordCredentials] Use username and password to access the remote repository.
  const UpstreamCredentials({
    this.usernamePasswordCredentials,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'usernamePasswordCredentials': ?pulumi.Input.mapOptionalInputValue<UsernamePasswordCredentials, Map<String, dynamic>>(usernamePasswordCredentials, (value) => value.toMap()),
    };
  }

  factory UpstreamCredentials.fromMap(Map<String, dynamic> map) {
    return UpstreamCredentials(
      usernamePasswordCredentials: (() { final guardedValue = map['usernamePasswordCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UsernamePasswordCredentials.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}


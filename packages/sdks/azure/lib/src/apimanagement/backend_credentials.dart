// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backend_credentials_authorization.dart';

class BackendCredentials {
  /// An `authorization` block as defined below.
  final pulumi.Input<BackendCredentialsAuthorization>? authorization;
  /// A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service.
  final pulumi.Input<List<String>>? certificates;
  /// A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API.
  final pulumi.Input<Map<String, String>>? header;
  /// A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API.
  final pulumi.Input<Map<String, String>>? query;

  /// Creates a new [BackendCredentials].
  /// [authorization] An `authorization` block as defined below.
  /// [certificates] A list of client certificate thumbprints to present to the backend host. The certificates must exist within the API Management Service.
  /// [header] A mapping of header parameters to pass to the backend host. The keys are the header names and the values are a comma separated string of header values. This is converted to a list before being passed to the API.
  /// [query] A mapping of query parameters to pass to the backend host. The keys are the query names and the values are a comma separated string of query values. This is converted to a list before being passed to the API.
  const BackendCredentials({
    this.authorization,
    this.certificates,
    this.header,
    this.query,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorization': ?pulumi.Input.mapOptionalInputValue<BackendCredentialsAuthorization, Map<String, dynamic>>(authorization, (value) => value.toMap()),
      'certificates': ?certificates,
      'header': ?header,
      'query': ?query,
    };
  }

  factory BackendCredentials.fromMap(Map<String, dynamic> map) {
    return BackendCredentials(
      authorization: (() { final guardedValue = map['authorization']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BackendCredentialsAuthorization.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificates: (() { final guardedValue = map['certificates']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      header: (() { final guardedValue = map['header']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      query: (() { final guardedValue = map['query']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

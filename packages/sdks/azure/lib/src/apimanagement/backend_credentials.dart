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
  BackendCredentials({
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
      authorization: map['authorization'] == null ? null : (BackendCredentialsAuthorization.fromMap((map['authorization'] as Map).cast<String, dynamic>())).input(),
      certificates: map['certificates'] == null ? null : ((map['certificates'] as List).cast<String>()).input(),
      header: map['header'] == null ? null : ((map['header'] as Map).cast<String, String>()).input(),
      query: map['query'] == null ? null : ((map['query'] as Map).cast<String, String>()).input(),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_application_api_oauth2_permission_scope.dart';

class GetApplicationApi {
  /// A set of application IDs (client IDs), used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app.
  final pulumi.Input<List<String>> knownClientApplications;
  /// Allows an application to use claims mapping without specifying a custom signing key.
  final pulumi.Input<bool> mappedClaimsEnabled;
  /// One or more `oauth2_permission_scope` blocks as documented below, to describe delegated permissions exposed by the web API represented by this application.
  final pulumi.Input<List<GetApplicationApiOauth2PermissionScope>> oauth2PermissionScopes;
  /// The access token version expected by this resource. Possible values are `1` or `2`.
  final pulumi.Input<int> requestedAccessTokenVersion;

  /// Creates a new [GetApplicationApi].
  /// [knownClientApplications] A set of application IDs (client IDs), used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app.
  /// [mappedClaimsEnabled] Allows an application to use claims mapping without specifying a custom signing key.
  /// [oauth2PermissionScopes] One or more `oauth2_permission_scope` blocks as documented below, to describe delegated permissions exposed by the web API represented by this application.
  /// [requestedAccessTokenVersion] The access token version expected by this resource. Possible values are `1` or `2`.
  const GetApplicationApi({
    required this.knownClientApplications,
    required this.mappedClaimsEnabled,
    required this.oauth2PermissionScopes,
    required this.requestedAccessTokenVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knownClientApplications': knownClientApplications,
      'mappedClaimsEnabled': mappedClaimsEnabled,
      'oauth2PermissionScopes': pulumi.Input.mapInputValue<List<GetApplicationApiOauth2PermissionScope>, List<Map<String, dynamic>>>(oauth2PermissionScopes, (value) => pulumi.Input.encodeList<GetApplicationApiOauth2PermissionScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestedAccessTokenVersion': requestedAccessTokenVersion,
    };
  }

  factory GetApplicationApi.fromMap(Map<String, dynamic> map) {
    return GetApplicationApi(
      knownClientApplications: pulumi.Input.fromValue((map['knownClientApplications'] as List).cast<String>()),
      mappedClaimsEnabled: pulumi.Input.fromValue(map['mappedClaimsEnabled'] as bool),
      oauth2PermissionScopes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetApplicationApiOauth2PermissionScope>(map['oauth2PermissionScopes']!, (value) => GetApplicationApiOauth2PermissionScope.fromMap((value as Map).cast<String, dynamic>()))),
      requestedAccessTokenVersion: pulumi.Input.fromValue(map['requestedAccessTokenVersion'] as int),
    );
  }
}


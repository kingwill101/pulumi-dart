// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_api_oauth2_permission_scope.dart';

class ApplicationApi {
  /// A set of client IDs, used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app.
  final pulumi.Input<List<String>>? knownClientApplications;
  /// Allows an application to use claims mapping without specifying a custom signing key. Defaults to `false`.
  final pulumi.Input<bool>? mappedClaimsEnabled;
  /// One or more `oauth2_permission_scope` blocks as documented below, to describe delegated permissions exposed by the web API represented by this application.
  final pulumi.Input<List<ApplicationApiOauth2PermissionScope>>? oauth2PermissionScopes;
  /// The access token version expected by this resource. Must be one of `1` or `2`, and must be `2` when `sign_in_audience` is either `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount` Defaults to `1`.
  final pulumi.Input<int>? requestedAccessTokenVersion;

  /// Creates a new [ApplicationApi].
  /// [knownClientApplications] A set of client IDs, used for bundling consent if you have a solution that contains two parts: a client app and a custom web API app.
  /// [mappedClaimsEnabled] Allows an application to use claims mapping without specifying a custom signing key. Defaults to `false`.
  /// [oauth2PermissionScopes] One or more `oauth2_permission_scope` blocks as documented below, to describe delegated permissions exposed by the web API represented by this application.
  /// [requestedAccessTokenVersion] The access token version expected by this resource. Must be one of `1` or `2`, and must be `2` when `sign_in_audience` is either `AzureADandPersonalMicrosoftAccount` or `PersonalMicrosoftAccount` Defaults to `1`.
  ApplicationApi({
    this.knownClientApplications,
    this.mappedClaimsEnabled,
    this.oauth2PermissionScopes,
    this.requestedAccessTokenVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'knownClientApplications': ?knownClientApplications,
      'mappedClaimsEnabled': ?mappedClaimsEnabled,
      'oauth2PermissionScopes': ?pulumi.Input.mapOptionalInputValue<List<ApplicationApiOauth2PermissionScope>, List<Map<String, dynamic>>>(oauth2PermissionScopes, (value) => pulumi.Input.encodeList<ApplicationApiOauth2PermissionScope, Map<String, dynamic>>(value, (value) => value.toMap())),
      'requestedAccessTokenVersion': ?requestedAccessTokenVersion,
    };
  }

  factory ApplicationApi.fromMap(Map<String, dynamic> map) {
    return ApplicationApi(
      knownClientApplications: map['knownClientApplications'] == null ? null : ((map['knownClientApplications'] as List).cast<String>()).input(),
      mappedClaimsEnabled: map['mappedClaimsEnabled'] == null ? null : (map['mappedClaimsEnabled'] as bool).input(),
      oauth2PermissionScopes: map['oauth2PermissionScopes'] == null ? null : (pulumi.Input.decodeList<ApplicationApiOauth2PermissionScope>(map['oauth2PermissionScopes'], (value) => ApplicationApiOauth2PermissionScope.fromMap((value as Map).cast<String, dynamic>()))).input(),
      requestedAccessTokenVersion: map['requestedAccessTokenVersion'] == null ? null : (map['requestedAccessTokenVersion'] as int).input(),
    );
  }
}


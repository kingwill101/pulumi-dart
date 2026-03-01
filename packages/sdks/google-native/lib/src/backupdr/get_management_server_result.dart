// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'management_uriresponse.dart';
import 'network_config_response.dart';
import 'workforce_identity_based_management_uriresponse.dart';
import 'workforce_identity_based_oauth2_client_idresponse.dart';

/// Result data returned by getManagementServer.
class GetManagementServerResult {
  /// The time when the instance was created.
  final String createTime;
  /// Optional. The description of the ManagementServer instance (2048 characters or less).
  final String description;
  /// Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  final String etag;
  /// Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  final Map<String, String> labels;
  /// The hostname or ip address of the exposed AGM endpoints, used by clients to connect to AGM/RD graphical user interface and APIs.
  final ManagementURIResponse managementUri;
  /// The resource name.
  final String name;
  /// VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  final List<NetworkConfigResponse> networks;
  /// The OAuth 2.0 client id is required to make API calls to the BackupDR instance API of this ManagementServer. This is the value that should be provided in the ‘aud’ field of the OIDC ID Token (see openid specification https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
  final String oauth2ClientId;
  /// The ManagementServer state.
  final String state;
  /// The type of the ManagementServer resource.
  final String type;
  /// The time when the instance was updated.
  final String updateTime;
  /// The hostnames of the exposed AGM endpoints for both types of user i.e. 1p and 3p, used to connect AGM/RM UI.
  final WorkforceIdentityBasedManagementURIResponse workforceIdentityBasedManagementUri;
  /// The OAuth client IDs for both types of user i.e. 1p and 3p.
  final WorkforceIdentityBasedOAuth2ClientIDResponse workforceIdentityBasedOauth2ClientId;

  /// Creates a new [GetManagementServerResult].
  /// [createTime] The time when the instance was created.
  /// [description] Optional. The description of the ManagementServer instance (2048 characters or less).
  /// [etag] Optional. Server specified ETag for the ManagementServer resource to prevent simultaneous updates from overwiting each other.
  /// [labels] Optional. Resource labels to represent user provided metadata. Labels currently defined: 1. migrate_from_go= If set to true, the MS is created in migration ready mode.
  /// [managementUri] The hostname or ip address of the exposed AGM endpoints, used by clients to connect to AGM/RD graphical user interface and APIs.
  /// [name] The resource name.
  /// [networks] VPC networks to which the ManagementServer instance is connected. For this version, only a single network is supported.
  /// [oauth2ClientId] The OAuth 2.0 client id is required to make API calls to the BackupDR instance API of this ManagementServer. This is the value that should be provided in the ‘aud’ field of the OIDC ID Token (see openid specification https://openid.net/specs/openid-connect-core-1_0.html#IDToken).
  /// [state] The ManagementServer state.
  /// [type] The type of the ManagementServer resource.
  /// [updateTime] The time when the instance was updated.
  /// [workforceIdentityBasedManagementUri] The hostnames of the exposed AGM endpoints for both types of user i.e. 1p and 3p, used to connect AGM/RM UI.
  /// [workforceIdentityBasedOauth2ClientId] The OAuth client IDs for both types of user i.e. 1p and 3p.
  GetManagementServerResult({
    required this.createTime,
    required this.description,
    required this.etag,
    required this.labels,
    required this.managementUri,
    required this.name,
    required this.networks,
    required this.oauth2ClientId,
    required this.state,
    required this.type,
    required this.updateTime,
    required this.workforceIdentityBasedManagementUri,
    required this.workforceIdentityBasedOauth2ClientId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'etag': etag,
      'labels': labels,
      'managementUri': managementUri.toMap(),
      'name': name,
      'networks': pulumi.Input.encodeList<NetworkConfigResponse, Map<String, dynamic>>(networks, (value) => value.toMap()),
      'oauth2ClientId': oauth2ClientId,
      'state': state,
      'type': type,
      'updateTime': updateTime,
      'workforceIdentityBasedManagementUri': workforceIdentityBasedManagementUri.toMap(),
      'workforceIdentityBasedOauth2ClientId': workforceIdentityBasedOauth2ClientId.toMap(),
    };
  }

  factory GetManagementServerResult.fromMap(Map<String, dynamic> map) {
    return GetManagementServerResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      etag: map['etag'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      managementUri: ManagementURIResponse.fromMap((map['managementUri'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      networks: pulumi.Input.decodeList<NetworkConfigResponse>(map['networks'], (value) => NetworkConfigResponse.fromMap((value as Map).cast<String, dynamic>())),
      oauth2ClientId: map['oauth2ClientId'] as String,
      state: map['state'] as String,
      type: map['type'] as String,
      updateTime: map['updateTime'] as String,
      workforceIdentityBasedManagementUri: WorkforceIdentityBasedManagementURIResponse.fromMap((map['workforceIdentityBasedManagementUri'] as Map).cast<String, dynamic>()),
      workforceIdentityBasedOauth2ClientId: WorkforceIdentityBasedOAuth2ClientIDResponse.fromMap((map['workforceIdentityBasedOauth2ClientId'] as Map).cast<String, dynamic>()),
    );
  }
}


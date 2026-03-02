// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_auth_scope_role.dart';
import 'get_auth_scope_service_catalog.dart';

/// Result data returned by getAuthScope.
class GetAuthScopeResult {
  /// The domain ID of the scope.
  final String domainId;
  /// The domain name of the scope.
  final String domainName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The name of the service.
  final String name;
  /// The domain ID of the project.
  final String projectDomainId;
  /// The domain name of the project.
  final String projectDomainName;
  /// The project ID of the scope.
  final String projectId;
  /// The project name of the scope.
  final String projectName;
  /// The region of the endpoint.
  final String region;
  /// A list of roles in the current scope. See reference below.
  final List<GetAuthScopeRole> roles;
  /// A list of service catalog entries returned with the token.
  final List<GetAuthScopeServiceCatalog> serviceCatalogs;
  final bool? setTokenId;
  /// The token ID of the scope.
  final String tokenId;
  /// The domain ID of the user.
  final String userDomainId;
  /// The domain name of the user.
  final String userDomainName;
  /// The user ID the of the scope.
  final String userId;
  /// The username of the scope.
  final String userName;

  /// Creates a new [GetAuthScopeResult].
  /// [domainId] The domain ID of the scope.
  /// [domainName] The domain name of the scope.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] The name of the service.
  /// [projectDomainId] The domain ID of the project.
  /// [projectDomainName] The domain name of the project.
  /// [projectId] The project ID of the scope.
  /// [projectName] The project name of the scope.
  /// [region] The region of the endpoint.
  /// [roles] A list of roles in the current scope. See reference below.
  /// [serviceCatalogs] A list of service catalog entries returned with the token.
  /// [setTokenId] Optional.
  /// [tokenId] The token ID of the scope.
  /// [userDomainId] The domain ID of the user.
  /// [userDomainName] The domain name of the user.
  /// [userId] The user ID the of the scope.
  /// [userName] The username of the scope.
  GetAuthScopeResult({
    required this.domainId,
    required this.domainName,
    required this.id,
    required this.name,
    required this.projectDomainId,
    required this.projectDomainName,
    required this.projectId,
    required this.projectName,
    required this.region,
    required this.roles,
    required this.serviceCatalogs,
    this.setTokenId,
    required this.tokenId,
    required this.userDomainId,
    required this.userDomainName,
    required this.userId,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainId': domainId,
      'domainName': domainName,
      'id': id,
      'name': name,
      'projectDomainId': projectDomainId,
      'projectDomainName': projectDomainName,
      'projectId': projectId,
      'projectName': projectName,
      'region': region,
      'roles': pulumi.Input.encodeList<GetAuthScopeRole, Map<String, dynamic>>(roles, (value) => value.toMap()),
      'serviceCatalogs': pulumi.Input.encodeList<GetAuthScopeServiceCatalog, Map<String, dynamic>>(serviceCatalogs, (value) => value.toMap()),
      'setTokenId': ?setTokenId,
      'tokenId': tokenId,
      'userDomainId': userDomainId,
      'userDomainName': userDomainName,
      'userId': userId,
      'userName': userName,
    };
  }

  factory GetAuthScopeResult.fromMap(Map<String, dynamic> map) {
    return GetAuthScopeResult(
      domainId: map['domainId'] as String,
      domainName: map['domainName'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      projectDomainId: map['projectDomainId'] as String,
      projectDomainName: map['projectDomainName'] as String,
      projectId: map['projectId'] as String,
      projectName: map['projectName'] as String,
      region: map['region'] as String,
      roles: pulumi.Input.decodeList<GetAuthScopeRole>(map['roles'], (value) => GetAuthScopeRole.fromMap((value as Map).cast<String, dynamic>())),
      serviceCatalogs: pulumi.Input.decodeList<GetAuthScopeServiceCatalog>(map['serviceCatalogs'], (value) => GetAuthScopeServiceCatalog.fromMap((value as Map).cast<String, dynamic>())),
      setTokenId: map['setTokenId'] == null ? null : map['setTokenId']! as bool,
      tokenId: map['tokenId'] as String,
      userDomainId: map['userDomainId'] as String,
      userDomainName: map['userDomainName'] as String,
      userId: map['userId'] as String,
      userName: map['userName'] as String,
    );
  }
}


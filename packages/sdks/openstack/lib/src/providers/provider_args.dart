// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// If set to `false`, OpenStack authorization won't be perfomed
  /// automatically, if the initial auth token get expired. Defaults to `true`
  final pulumi.Input<bool>? allowReauth;
  /// Application Credential ID to login with.
  final pulumi.Input<String>? applicationCredentialId;
  /// Application Credential name to login with.
  final pulumi.Input<String>? applicationCredentialName;
  /// Application Credential secret to login with.
  final pulumi.Input<String>? applicationCredentialSecret;
  /// The Identity authentication URL.
  final pulumi.Input<String>? authUrl;
  /// A Custom CA certificate.
  final pulumi.Input<String>? cacertFile;
  /// A client certificate to authenticate with.
  final pulumi.Input<String>? cert;
  /// An entry in a `clouds.yaml` file to use.
  final pulumi.Input<String>? cloud;
  /// The name of the Domain ID to scope to if no other domain is specified. Defaults to `default` (Identity v3).
  final pulumi.Input<String>? defaultDomain;
  /// If set to `false`, OpenStack authorization will be perfomed,
  /// every time the service provider client is called. Defaults to `true`.
  final pulumi.Input<bool>? delayedAuth;
  /// If set to `true`, the HTTP `Cache-Control: no-cache` header will not be added by default to all API requests.
  final pulumi.Input<bool>? disableNoCacheHeader;
  /// The ID of the Domain to scope to (Identity v3).
  final pulumi.Input<String>? domainId;
  /// The name of the Domain to scope to (Identity v3).
  final pulumi.Input<String>? domainName;
  /// Outputs very verbose logs with all calls made to and responses from OpenStack
  final pulumi.Input<bool>? enableLogging;
  /// A map of services with an endpoint to override what was
  /// from the Keystone catalog
  final pulumi.Input<Map<String, String>>? endpointOverrides;
  final pulumi.Input<String>? endpointType;
  /// Trust self-signed certificates.
  final pulumi.Input<bool>? insecure;
  /// A client private key to authenticate with.
  final pulumi.Input<String>? key;
  /// How many times HTTP connection should be retried until giving up.
  final pulumi.Input<int>? maxRetries;
  /// Password to login with.
  final pulumi.Input<String>? password;
  /// The ID of the domain where the proejct resides (Identity v3).
  final pulumi.Input<String>? projectDomainId;
  /// The name of the domain where the project resides (Identity v3).
  final pulumi.Input<String>? projectDomainName;
  /// The OpenStack region to connect to.
  final pulumi.Input<String>? region;
  /// Use Swift's authentication system instead of Keystone. Only used for
  /// interaction with Swift.
  final pulumi.Input<bool>? swauth;
  /// If set to `true`, system scoped authorization will be enabled. Defaults to `false` (Identity v3).
  final pulumi.Input<bool>? systemScope;
  /// The ID of the Tenant (Identity v2) or Project (Identity v3)
  /// to login with.
  final pulumi.Input<String>? tenantId;
  /// The name of the Tenant (Identity v2) or Project (Identity v3)
  /// to login with.
  final pulumi.Input<String>? tenantName;
  /// Authentication token to use as an alternative to username/password.
  final pulumi.Input<String>? token;
  /// The ID of the domain where the user resides (Identity v3).
  final pulumi.Input<String>? userDomainId;
  /// The name of the domain where the user resides (Identity v3).
  final pulumi.Input<String>? userDomainName;
  /// User ID to login with.
  final pulumi.Input<String>? userId;
  /// Username to login with.
  final pulumi.Input<String>? userName;

  /// Creates a new [ProviderArgs].
  /// [allowReauth] If set to `false`, OpenStack authorization won't be perfomed
  /// [applicationCredentialId] Application Credential ID to login with.
  /// [applicationCredentialName] Application Credential name to login with.
  /// [applicationCredentialSecret] Application Credential secret to login with.
  /// [authUrl] The Identity authentication URL.
  /// [cacertFile] A Custom CA certificate.
  /// [cert] A client certificate to authenticate with.
  /// [cloud] An entry in a `clouds.yaml` file to use.
  /// [defaultDomain] The name of the Domain ID to scope to if no other domain is specified. Defaults to `default` (Identity v3).
  /// [delayedAuth] If set to `false`, OpenStack authorization will be perfomed,
  /// [disableNoCacheHeader] If set to `true`, the HTTP `Cache-Control: no-cache` header will not be added by default to all API requests.
  /// [domainId] The ID of the Domain to scope to (Identity v3).
  /// [domainName] The name of the Domain to scope to (Identity v3).
  /// [enableLogging] Outputs very verbose logs with all calls made to and responses from OpenStack
  /// [endpointOverrides] A map of services with an endpoint to override what was
  /// [endpointType] Optional.
  /// [insecure] Trust self-signed certificates.
  /// [key] A client private key to authenticate with.
  /// [maxRetries] How many times HTTP connection should be retried until giving up.
  /// [password] Password to login with.
  /// [projectDomainId] The ID of the domain where the proejct resides (Identity v3).
  /// [projectDomainName] The name of the domain where the project resides (Identity v3).
  /// [region] The OpenStack region to connect to.
  /// [swauth] Use Swift's authentication system instead of Keystone. Only used for
  /// [systemScope] If set to `true`, system scoped authorization will be enabled. Defaults to `false` (Identity v3).
  /// [tenantId] The ID of the Tenant (Identity v2) or Project (Identity v3)
  /// [tenantName] The name of the Tenant (Identity v2) or Project (Identity v3)
  /// [token] Authentication token to use as an alternative to username/password.
  /// [userDomainId] The ID of the domain where the user resides (Identity v3).
  /// [userDomainName] The name of the domain where the user resides (Identity v3).
  /// [userId] User ID to login with.
  /// [userName] Username to login with.
  ProviderArgs({
    this.allowReauth,
    this.applicationCredentialId,
    this.applicationCredentialName,
    this.applicationCredentialSecret,
    this.authUrl,
    this.cacertFile,
    this.cert,
    this.cloud,
    this.defaultDomain,
    this.delayedAuth,
    this.disableNoCacheHeader,
    this.domainId,
    this.domainName,
    this.enableLogging,
    this.endpointOverrides,
    this.endpointType,
    this.insecure,
    this.key,
    this.maxRetries,
    this.password,
    this.projectDomainId,
    this.projectDomainName,
    this.region,
    this.swauth,
    this.systemScope,
    this.tenantId,
    this.tenantName,
    this.token,
    this.userDomainId,
    this.userDomainName,
    this.userId,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowReauth': ?allowReauth,
      'applicationCredentialId': ?applicationCredentialId,
      'applicationCredentialName': ?applicationCredentialName,
      'applicationCredentialSecret': ?applicationCredentialSecret,
      'authUrl': ?authUrl,
      'cacertFile': ?cacertFile,
      'cert': ?cert,
      'cloud': ?cloud,
      'defaultDomain': ?defaultDomain,
      'delayedAuth': ?delayedAuth,
      'disableNoCacheHeader': ?disableNoCacheHeader,
      'domainId': ?domainId,
      'domainName': ?domainName,
      'enableLogging': ?enableLogging,
      'endpointOverrides': ?endpointOverrides,
      'endpointType': ?endpointType,
      'insecure': ?insecure,
      'key': ?key,
      'maxRetries': ?maxRetries,
      'password': ?password,
      'projectDomainId': ?projectDomainId,
      'projectDomainName': ?projectDomainName,
      'region': ?region,
      'swauth': ?swauth,
      'systemScope': ?systemScope,
      'tenantId': ?tenantId,
      'tenantName': ?tenantName,
      'token': ?token,
      'userDomainId': ?userDomainId,
      'userDomainName': ?userDomainName,
      'userId': ?userId,
      'userName': ?userName,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      allowReauth: map['allowReauth'] == null ? null : (map['allowReauth'] as bool).input(),
      applicationCredentialId: map['applicationCredentialId'] == null ? null : (map['applicationCredentialId'] as String).input(),
      applicationCredentialName: map['applicationCredentialName'] == null ? null : (map['applicationCredentialName'] as String).input(),
      applicationCredentialSecret: map['applicationCredentialSecret'] == null ? null : (map['applicationCredentialSecret'] as String).input(),
      authUrl: map['authUrl'] == null ? null : (map['authUrl'] as String).input(),
      cacertFile: map['cacertFile'] == null ? null : (map['cacertFile'] as String).input(),
      cert: map['cert'] == null ? null : (map['cert'] as String).input(),
      cloud: map['cloud'] == null ? null : (map['cloud'] as String).input(),
      defaultDomain: map['defaultDomain'] == null ? null : (map['defaultDomain'] as String).input(),
      delayedAuth: map['delayedAuth'] == null ? null : (map['delayedAuth'] as bool).input(),
      disableNoCacheHeader: map['disableNoCacheHeader'] == null ? null : (map['disableNoCacheHeader'] as bool).input(),
      domainId: map['domainId'] == null ? null : (map['domainId'] as String).input(),
      domainName: map['domainName'] == null ? null : (map['domainName'] as String).input(),
      enableLogging: map['enableLogging'] == null ? null : (map['enableLogging'] as bool).input(),
      endpointOverrides: map['endpointOverrides'] == null ? null : ((map['endpointOverrides'] as Map).cast<String, String>()).input(),
      endpointType: map['endpointType'] == null ? null : (map['endpointType'] as String).input(),
      insecure: map['insecure'] == null ? null : (map['insecure'] as bool).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      maxRetries: map['maxRetries'] == null ? null : (map['maxRetries'] as int).input(),
      password: map['password'] == null ? null : (map['password'] as String).input(),
      projectDomainId: map['projectDomainId'] == null ? null : (map['projectDomainId'] as String).input(),
      projectDomainName: map['projectDomainName'] == null ? null : (map['projectDomainName'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      swauth: map['swauth'] == null ? null : (map['swauth'] as bool).input(),
      systemScope: map['systemScope'] == null ? null : (map['systemScope'] as bool).input(),
      tenantId: map['tenantId'] == null ? null : (map['tenantId'] as String).input(),
      tenantName: map['tenantName'] == null ? null : (map['tenantName'] as String).input(),
      token: map['token'] == null ? null : (map['token'] as String).input(),
      userDomainId: map['userDomainId'] == null ? null : (map['userDomainId'] as String).input(),
      userDomainName: map['userDomainName'] == null ? null : (map['userDomainName'] as String).input(),
      userId: map['userId'] == null ? null : (map['userId'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName'] as String).input(),
    );
  }
}


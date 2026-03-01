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
    pulumi.Output<bool>? allowReauth,
    pulumi.Output<String>? applicationCredentialId,
    pulumi.Output<String>? applicationCredentialName,
    pulumi.Output<String>? applicationCredentialSecret,
    pulumi.Output<String>? authUrl,
    pulumi.Output<String>? cacertFile,
    pulumi.Output<String>? cert,
    pulumi.Output<String>? cloud,
    pulumi.Output<String>? defaultDomain,
    pulumi.Output<bool>? delayedAuth,
    pulumi.Output<bool>? disableNoCacheHeader,
    pulumi.Output<String>? domainId,
    pulumi.Output<String>? domainName,
    pulumi.Output<bool>? enableLogging,
    pulumi.Output<Map<String, String>>? endpointOverrides,
    pulumi.Output<String>? endpointType,
    pulumi.Output<bool>? insecure,
    pulumi.Output<String>? key,
    pulumi.Output<int>? maxRetries,
    pulumi.Output<String>? password,
    pulumi.Output<String>? projectDomainId,
    pulumi.Output<String>? projectDomainName,
    pulumi.Output<String>? region,
    pulumi.Output<bool>? swauth,
    pulumi.Output<bool>? systemScope,
    pulumi.Output<String>? tenantId,
    pulumi.Output<String>? tenantName,
    pulumi.Output<String>? token,
    pulumi.Output<String>? userDomainId,
    pulumi.Output<String>? userDomainName,
    pulumi.Output<String>? userId,
    pulumi.Output<String>? userName,
  }) :
      allowReauth = pulumi.Input.asOptionalInput<bool>(allowReauth),
      applicationCredentialId = pulumi.Input.asOptionalInput<String>(applicationCredentialId),
      applicationCredentialName = pulumi.Input.asOptionalInput<String>(applicationCredentialName),
      applicationCredentialSecret = pulumi.Input.asOptionalInput<String>(applicationCredentialSecret),
      authUrl = pulumi.Input.asOptionalInput<String>(authUrl),
      cacertFile = pulumi.Input.asOptionalInput<String>(cacertFile),
      cert = pulumi.Input.asOptionalInput<String>(cert),
      cloud = pulumi.Input.asOptionalInput<String>(cloud),
      defaultDomain = pulumi.Input.asOptionalInput<String>(defaultDomain),
      delayedAuth = pulumi.Input.asOptionalInput<bool>(delayedAuth),
      disableNoCacheHeader = pulumi.Input.asOptionalInput<bool>(disableNoCacheHeader),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      domainName = pulumi.Input.asOptionalInput<String>(domainName),
      enableLogging = pulumi.Input.asOptionalInput<bool>(enableLogging),
      endpointOverrides = pulumi.Input.asOptionalInput<Map<String, String>>(endpointOverrides),
      endpointType = pulumi.Input.asOptionalInput<String>(endpointType),
      insecure = pulumi.Input.asOptionalInput<bool>(insecure),
      key = pulumi.Input.asOptionalInput<String>(key),
      maxRetries = pulumi.Input.asOptionalInput<int>(maxRetries),
      password = pulumi.Input.asOptionalInput<String>(password),
      projectDomainId = pulumi.Input.asOptionalInput<String>(projectDomainId),
      projectDomainName = pulumi.Input.asOptionalInput<String>(projectDomainName),
      region = pulumi.Input.asOptionalInput<String>(region),
      swauth = pulumi.Input.asOptionalInput<bool>(swauth),
      systemScope = pulumi.Input.asOptionalInput<bool>(systemScope),
      tenantId = pulumi.Input.asOptionalInput<String>(tenantId),
      tenantName = pulumi.Input.asOptionalInput<String>(tenantName),
      token = pulumi.Input.asOptionalInput<String>(token),
      userDomainId = pulumi.Input.asOptionalInput<String>(userDomainId),
      userDomainName = pulumi.Input.asOptionalInput<String>(userDomainName),
      userId = pulumi.Input.asOptionalInput<String>(userId),
      userName = pulumi.Input.asOptionalInput<String>(userName);

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
      allowReauth: map['allowReauth'] == null ? null : pulumi.Output.create<bool>(map['allowReauth'] as bool),
      applicationCredentialId: map['applicationCredentialId'] == null ? null : pulumi.Output.create<String>(map['applicationCredentialId'] as String),
      applicationCredentialName: map['applicationCredentialName'] == null ? null : pulumi.Output.create<String>(map['applicationCredentialName'] as String),
      applicationCredentialSecret: map['applicationCredentialSecret'] == null ? null : pulumi.Output.create<String>(map['applicationCredentialSecret'] as String),
      authUrl: map['authUrl'] == null ? null : pulumi.Output.create<String>(map['authUrl'] as String),
      cacertFile: map['cacertFile'] == null ? null : pulumi.Output.create<String>(map['cacertFile'] as String),
      cert: map['cert'] == null ? null : pulumi.Output.create<String>(map['cert'] as String),
      cloud: map['cloud'] == null ? null : pulumi.Output.create<String>(map['cloud'] as String),
      defaultDomain: map['defaultDomain'] == null ? null : pulumi.Output.create<String>(map['defaultDomain'] as String),
      delayedAuth: map['delayedAuth'] == null ? null : pulumi.Output.create<bool>(map['delayedAuth'] as bool),
      disableNoCacheHeader: map['disableNoCacheHeader'] == null ? null : pulumi.Output.create<bool>(map['disableNoCacheHeader'] as bool),
      domainId: map['domainId'] == null ? null : pulumi.Output.create<String>(map['domainId'] as String),
      domainName: map['domainName'] == null ? null : pulumi.Output.create<String>(map['domainName'] as String),
      enableLogging: map['enableLogging'] == null ? null : pulumi.Output.create<bool>(map['enableLogging'] as bool),
      endpointOverrides: map['endpointOverrides'] == null ? null : pulumi.Output.create<Map<String, String>>((map['endpointOverrides'] as Map).cast<String, String>()),
      endpointType: map['endpointType'] == null ? null : pulumi.Output.create<String>(map['endpointType'] as String),
      insecure: map['insecure'] == null ? null : pulumi.Output.create<bool>(map['insecure'] as bool),
      key: map['key'] == null ? null : pulumi.Output.create<String>(map['key'] as String),
      maxRetries: map['maxRetries'] == null ? null : pulumi.Output.create<int>(map['maxRetries'] as int),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      projectDomainId: map['projectDomainId'] == null ? null : pulumi.Output.create<String>(map['projectDomainId'] as String),
      projectDomainName: map['projectDomainName'] == null ? null : pulumi.Output.create<String>(map['projectDomainName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      swauth: map['swauth'] == null ? null : pulumi.Output.create<bool>(map['swauth'] as bool),
      systemScope: map['systemScope'] == null ? null : pulumi.Output.create<bool>(map['systemScope'] as bool),
      tenantId: map['tenantId'] == null ? null : pulumi.Output.create<String>(map['tenantId'] as String),
      tenantName: map['tenantName'] == null ? null : pulumi.Output.create<String>(map['tenantName'] as String),
      token: map['token'] == null ? null : pulumi.Output.create<String>(map['token'] as String),
      userDomainId: map['userDomainId'] == null ? null : pulumi.Output.create<String>(map['userDomainId'] as String),
      userDomainName: map['userDomainName'] == null ? null : pulumi.Output.create<String>(map['userDomainName'] as String),
      userId: map['userId'] == null ? null : pulumi.Output.create<String>(map['userId'] as String),
      userName: map['userName'] == null ? null : pulumi.Output.create<String>(map['userName'] as String),
    );
  }
}


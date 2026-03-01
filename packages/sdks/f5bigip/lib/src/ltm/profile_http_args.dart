// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'profile_http_enforcement.dart';
import 'profile_http_http_strict_transport_security.dart';

/// {@template pulumi_ltm_profile_http_profile_http_args_doc}
/// The set of arguments for ProfileHttp.
/// {@endtemplate}
/// {@macro pulumi_ltm_profile_http_profile_http_args_doc}
class ProfileHttpArgs {
  /// Enables or disables trusting the client IP address, and statistics from the client IP address, based on the request's XFF (X-forwarded-for) headers, if they exist.
  final pulumi.Input<String>? acceptXff;
  /// The application service to which the object belongs.
  final pulumi.Input<String>? appService;
  /// Specifies a quoted string for the basic authentication realm. The system sends this string to a client whenever authorization fails. The default value is `none`
  final pulumi.Input<String>? basicAuthRealm;
  /// Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  final pulumi.Input<String>? defaultsFrom;
  /// Specifies user-defined description.
  final pulumi.Input<String>? description;
  /// Type a passphrase for cookie encryption. Note: Since it's a sensitive entity idempotency will fail for it in the update call.
  final pulumi.Input<String>? encryptCookieSecret;
  /// Type the cookie names for the system to encrypt.
  final pulumi.Input<List<String>>? encryptCookies;
  /// See Enforcement below for more details.
  final pulumi.Input<List<ProfileHttpEnforcement>>? enforcements;
  /// Specifies an HTTP fallback host. HTTP redirection allows you to redirect HTTP traffic to another protocol identifier, host name, port number
  final pulumi.Input<String>? fallbackHost;
  /// Specifies one or more three-digit status codes that can be returned by an HTTP server,that should trigger a redirection to the fallback host.
  final pulumi.Input<List<String>>? fallbackStatusCodes;
  /// Specifies the header string that you want to erase from an HTTP request. Default is `none`.
  final pulumi.Input<String>? headErase;
  /// Specifies a quoted header string that you want to insert into an HTTP request.Default is `none`.
  final pulumi.Input<String>? headInsert;
  /// See Http_Strict_Transport_Security below for more details.
  final pulumi.Input<List<ProfileHttpHttpStrictTransportSecurity>>? httpStrictTransportSecurities;
  /// Specifies, when enabled, that the system inserts an X-Forwarded-For header in an HTTP request with the client IP address, to use with connection pooling. The default is `Disabled`.
  final pulumi.Input<String>? insertXforwardedFor;
  /// Specifies the linear white space (LWS) separator that the system inserts when a header exceeds the maximum width you specify in the LWS Maximum Columns setting.
  final pulumi.Input<String>? lwsSeparator;
  /// Specifies the linear white space (LWS) separator that the system inserts when a header exceeds the maximum width you specify in the LWS Maximum Columns setting.
  final pulumi.Input<int>? lwsWidth;
  /// Specifies the name of the http profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/test-http-profile`.
  final pulumi.Input<String> name;
  /// Enables the system to perform HTTP header transformations for the purpose of  keeping server-side connections open. This feature requires configuration of a OneConnect profile
  final pulumi.Input<String>? oneconnectTransformations;
  /// Specifies the proxy mode for this profile: reverse, explicit, or transparent. The default is `reverse`.
  final pulumi.Input<String>? proxyType;
  /// Specifies whether the system rewrites the URIs that are part of HTTP redirect (3XX) responses. The default is `none`.
  final pulumi.Input<String>? redirectRewrite;
  /// Specifies how the system handles HTTP content that is chunked by a client. The default is `preserve`.
  final pulumi.Input<String>? requestChunking;
  /// Specifies how the system handles HTTP content that is chunked by a server. The default is `selective`.
  final pulumi.Input<String>? responseChunking;
  /// Specifies headers that the BIG-IP system allows in an HTTP response.If you are specifying more than one header, separate the headers with a blank space.
  final pulumi.Input<List<String>>? responseHeadersPermitteds;
  /// Specifies the value of the Server header in responses that the BIG-IP itself generates. The default is BigIP. In order to remove it, "none" string is to be passed. If server_agent_name is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "BigIP" explicitly.
  final pulumi.Input<String>? serverAgentName;
  /// Displays the administrative partition within which this profile resides.
  final pulumi.Input<String>? tmPartition;
  /// Specifies the hostname to include into Via header
  final pulumi.Input<String>? viaHostName;
  /// Specifies whether to append, remove, or preserve a Via header in an HTTP request
  final pulumi.Input<String>? viaRequest;
  /// Specifies whether to append, remove, or preserve a Via header in an HTTP request
  final pulumi.Input<String>? viaResponse;
  /// Specifies alternative XFF headers instead of the default X-forwarded-for header.
  final pulumi.Input<List<String>>? xffAlternativeNames;

  /// Creates a new [ProfileHttpArgs].
  /// [acceptXff] Enables or disables trusting the client IP address, and statistics from the client IP address, based on the request's XFF (X-forwarded-for) headers, if they exist.
  /// [appService] The application service to which the object belongs.
  /// [basicAuthRealm] Specifies a quoted string for the basic authentication realm. The system sends this string to a client whenever authorization fails. The default value is `none`
  /// [defaultsFrom] Specifies the profile that you want to use as the parent profile. Your new profile inherits all settings and values from the parent profile specified.
  /// [description] Specifies user-defined description.
  /// [encryptCookieSecret] Type a passphrase for cookie encryption. Note: Since it's a sensitive entity idempotency will fail for it in the update call.
  /// [encryptCookies] Type the cookie names for the system to encrypt.
  /// [enforcements] See Enforcement below for more details.
  /// [fallbackHost] Specifies an HTTP fallback host. HTTP redirection allows you to redirect HTTP traffic to another protocol identifier, host name, port number
  /// [fallbackStatusCodes] Specifies one or more three-digit status codes that can be returned by an HTTP server,that should trigger a redirection to the fallback host.
  /// [headErase] Specifies the header string that you want to erase from an HTTP request. Default is `none`.
  /// [headInsert] Specifies a quoted header string that you want to insert into an HTTP request.Default is `none`.
  /// [httpStrictTransportSecurities] See Http_Strict_Transport_Security below for more details.
  /// [insertXforwardedFor] Specifies, when enabled, that the system inserts an X-Forwarded-For header in an HTTP request with the client IP address, to use with connection pooling. The default is `Disabled`.
  /// [lwsSeparator] Specifies the linear white space (LWS) separator that the system inserts when a header exceeds the maximum width you specify in the LWS Maximum Columns setting.
  /// [lwsWidth] Specifies the linear white space (LWS) separator that the system inserts when a header exceeds the maximum width you specify in the LWS Maximum Columns setting.
  /// [name] Specifies the name of the http profile,name of Profile should be full path. Full path is the combination of the `partition + profile name`,For example `/Common/test-http-profile`.
  /// [oneconnectTransformations] Enables the system to perform HTTP header transformations for the purpose of  keeping server-side connections open. This feature requires configuration of a OneConnect profile
  /// [proxyType] Specifies the proxy mode for this profile: reverse, explicit, or transparent. The default is `reverse`.
  /// [redirectRewrite] Specifies whether the system rewrites the URIs that are part of HTTP redirect (3XX) responses. The default is `none`.
  /// [requestChunking] Specifies how the system handles HTTP content that is chunked by a client. The default is `preserve`.
  /// [responseChunking] Specifies how the system handles HTTP content that is chunked by a server. The default is `selective`.
  /// [responseHeadersPermitteds] Specifies headers that the BIG-IP system allows in an HTTP response.If you are specifying more than one header, separate the headers with a blank space.
  /// [serverAgentName] Specifies the value of the Server header in responses that the BIG-IP itself generates. The default is BigIP. In order to remove it, "none" string is to be passed. If server_agent_name is commented (or not passed) during the update call, then no changes would be applied and previous value will persist. In order to put default value, we need to pass "BigIP" explicitly.
  /// [tmPartition] Displays the administrative partition within which this profile resides.
  /// [viaHostName] Specifies the hostname to include into Via header
  /// [viaRequest] Specifies whether to append, remove, or preserve a Via header in an HTTP request
  /// [viaResponse] Specifies whether to append, remove, or preserve a Via header in an HTTP request
  /// [xffAlternativeNames] Specifies alternative XFF headers instead of the default X-forwarded-for header.
  ProfileHttpArgs({
    pulumi.Output<String>? acceptXff,
    pulumi.Output<String>? appService,
    pulumi.Output<String>? basicAuthRealm,
    pulumi.Output<String>? defaultsFrom,
    pulumi.Output<String>? description,
    pulumi.Output<String>? encryptCookieSecret,
    pulumi.Output<List<String>>? encryptCookies,
    pulumi.Output<List<ProfileHttpEnforcement>>? enforcements,
    pulumi.Output<String>? fallbackHost,
    pulumi.Output<List<String>>? fallbackStatusCodes,
    pulumi.Output<String>? headErase,
    pulumi.Output<String>? headInsert,
    pulumi.Output<List<ProfileHttpHttpStrictTransportSecurity>>? httpStrictTransportSecurities,
    pulumi.Output<String>? insertXforwardedFor,
    pulumi.Output<String>? lwsSeparator,
    pulumi.Output<int>? lwsWidth,
    required pulumi.Output<String> name,
    pulumi.Output<String>? oneconnectTransformations,
    pulumi.Output<String>? proxyType,
    pulumi.Output<String>? redirectRewrite,
    pulumi.Output<String>? requestChunking,
    pulumi.Output<String>? responseChunking,
    pulumi.Output<List<String>>? responseHeadersPermitteds,
    pulumi.Output<String>? serverAgentName,
    pulumi.Output<String>? tmPartition,
    pulumi.Output<String>? viaHostName,
    pulumi.Output<String>? viaRequest,
    pulumi.Output<String>? viaResponse,
    pulumi.Output<List<String>>? xffAlternativeNames,
  }) :
      acceptXff = pulumi.Input.asOptionalInput<String>(acceptXff),
      appService = pulumi.Input.asOptionalInput<String>(appService),
      basicAuthRealm = pulumi.Input.asOptionalInput<String>(basicAuthRealm),
      defaultsFrom = pulumi.Input.asOptionalInput<String>(defaultsFrom),
      description = pulumi.Input.asOptionalInput<String>(description),
      encryptCookieSecret = pulumi.Input.asOptionalInput<String>(encryptCookieSecret),
      encryptCookies = pulumi.Input.asOptionalInput<List<String>>(encryptCookies),
      enforcements = pulumi.Input.asOptionalInput<List<ProfileHttpEnforcement>>(enforcements),
      fallbackHost = pulumi.Input.asOptionalInput<String>(fallbackHost),
      fallbackStatusCodes = pulumi.Input.asOptionalInput<List<String>>(fallbackStatusCodes),
      headErase = pulumi.Input.asOptionalInput<String>(headErase),
      headInsert = pulumi.Input.asOptionalInput<String>(headInsert),
      httpStrictTransportSecurities = pulumi.Input.asOptionalInput<List<ProfileHttpHttpStrictTransportSecurity>>(httpStrictTransportSecurities),
      insertXforwardedFor = pulumi.Input.asOptionalInput<String>(insertXforwardedFor),
      lwsSeparator = pulumi.Input.asOptionalInput<String>(lwsSeparator),
      lwsWidth = pulumi.Input.asOptionalInput<int>(lwsWidth),
      name = pulumi.Input.asInput<String>(name),
      oneconnectTransformations = pulumi.Input.asOptionalInput<String>(oneconnectTransformations),
      proxyType = pulumi.Input.asOptionalInput<String>(proxyType),
      redirectRewrite = pulumi.Input.asOptionalInput<String>(redirectRewrite),
      requestChunking = pulumi.Input.asOptionalInput<String>(requestChunking),
      responseChunking = pulumi.Input.asOptionalInput<String>(responseChunking),
      responseHeadersPermitteds = pulumi.Input.asOptionalInput<List<String>>(responseHeadersPermitteds),
      serverAgentName = pulumi.Input.asOptionalInput<String>(serverAgentName),
      tmPartition = pulumi.Input.asOptionalInput<String>(tmPartition),
      viaHostName = pulumi.Input.asOptionalInput<String>(viaHostName),
      viaRequest = pulumi.Input.asOptionalInput<String>(viaRequest),
      viaResponse = pulumi.Input.asOptionalInput<String>(viaResponse),
      xffAlternativeNames = pulumi.Input.asOptionalInput<List<String>>(xffAlternativeNames);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'acceptXff': ?acceptXff,
      'appService': ?appService,
      'basicAuthRealm': ?basicAuthRealm,
      'defaultsFrom': ?defaultsFrom,
      'description': ?description,
      'encryptCookieSecret': ?encryptCookieSecret,
      'encryptCookies': ?encryptCookies,
      'enforcements': ?pulumi.Input.mapOptionalInputValue<List<ProfileHttpEnforcement>, List<Map<String, dynamic>>>(enforcements, (value) => pulumi.Input.encodeList<ProfileHttpEnforcement, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fallbackHost': ?fallbackHost,
      'fallbackStatusCodes': ?fallbackStatusCodes,
      'headErase': ?headErase,
      'headInsert': ?headInsert,
      'httpStrictTransportSecurities': ?pulumi.Input.mapOptionalInputValue<List<ProfileHttpHttpStrictTransportSecurity>, List<Map<String, dynamic>>>(httpStrictTransportSecurities, (value) => pulumi.Input.encodeList<ProfileHttpHttpStrictTransportSecurity, Map<String, dynamic>>(value, (value) => value.toMap())),
      'insertXforwardedFor': ?insertXforwardedFor,
      'lwsSeparator': ?lwsSeparator,
      'lwsWidth': ?lwsWidth,
      'name': name,
      'oneconnectTransformations': ?oneconnectTransformations,
      'proxyType': ?proxyType,
      'redirectRewrite': ?redirectRewrite,
      'requestChunking': ?requestChunking,
      'responseChunking': ?responseChunking,
      'responseHeadersPermitteds': ?responseHeadersPermitteds,
      'serverAgentName': ?serverAgentName,
      'tmPartition': ?tmPartition,
      'viaHostName': ?viaHostName,
      'viaRequest': ?viaRequest,
      'viaResponse': ?viaResponse,
      'xffAlternativeNames': ?xffAlternativeNames,
    };
  }

  factory ProfileHttpArgs.fromMap(Map<String, dynamic> map) {
    return ProfileHttpArgs(
      acceptXff: map['acceptXff'] == null ? null : pulumi.Output.create<String>(map['acceptXff'] as String),
      appService: map['appService'] == null ? null : pulumi.Output.create<String>(map['appService'] as String),
      basicAuthRealm: map['basicAuthRealm'] == null ? null : pulumi.Output.create<String>(map['basicAuthRealm'] as String),
      defaultsFrom: map['defaultsFrom'] == null ? null : pulumi.Output.create<String>(map['defaultsFrom'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      encryptCookieSecret: map['encryptCookieSecret'] == null ? null : pulumi.Output.create<String>(map['encryptCookieSecret'] as String),
      encryptCookies: map['encryptCookies'] == null ? null : pulumi.Output.create<List<String>>((map['encryptCookies'] as List).cast<String>()),
      enforcements: map['enforcements'] == null ? null : pulumi.Output.create<List<ProfileHttpEnforcement>>(pulumi.Input.decodeList<ProfileHttpEnforcement>(map['enforcements'], (value) => ProfileHttpEnforcement.fromMap((value as Map).cast<String, dynamic>()))),
      fallbackHost: map['fallbackHost'] == null ? null : pulumi.Output.create<String>(map['fallbackHost'] as String),
      fallbackStatusCodes: map['fallbackStatusCodes'] == null ? null : pulumi.Output.create<List<String>>((map['fallbackStatusCodes'] as List).cast<String>()),
      headErase: map['headErase'] == null ? null : pulumi.Output.create<String>(map['headErase'] as String),
      headInsert: map['headInsert'] == null ? null : pulumi.Output.create<String>(map['headInsert'] as String),
      httpStrictTransportSecurities: map['httpStrictTransportSecurities'] == null ? null : pulumi.Output.create<List<ProfileHttpHttpStrictTransportSecurity>>(pulumi.Input.decodeList<ProfileHttpHttpStrictTransportSecurity>(map['httpStrictTransportSecurities'], (value) => ProfileHttpHttpStrictTransportSecurity.fromMap((value as Map).cast<String, dynamic>()))),
      insertXforwardedFor: map['insertXforwardedFor'] == null ? null : pulumi.Output.create<String>(map['insertXforwardedFor'] as String),
      lwsSeparator: map['lwsSeparator'] == null ? null : pulumi.Output.create<String>(map['lwsSeparator'] as String),
      lwsWidth: map['lwsWidth'] == null ? null : pulumi.Output.create<int>(map['lwsWidth'] as int),
      name: pulumi.Output.create<String>(map['name'] as String),
      oneconnectTransformations: map['oneconnectTransformations'] == null ? null : pulumi.Output.create<String>(map['oneconnectTransformations'] as String),
      proxyType: map['proxyType'] == null ? null : pulumi.Output.create<String>(map['proxyType'] as String),
      redirectRewrite: map['redirectRewrite'] == null ? null : pulumi.Output.create<String>(map['redirectRewrite'] as String),
      requestChunking: map['requestChunking'] == null ? null : pulumi.Output.create<String>(map['requestChunking'] as String),
      responseChunking: map['responseChunking'] == null ? null : pulumi.Output.create<String>(map['responseChunking'] as String),
      responseHeadersPermitteds: map['responseHeadersPermitteds'] == null ? null : pulumi.Output.create<List<String>>((map['responseHeadersPermitteds'] as List).cast<String>()),
      serverAgentName: map['serverAgentName'] == null ? null : pulumi.Output.create<String>(map['serverAgentName'] as String),
      tmPartition: map['tmPartition'] == null ? null : pulumi.Output.create<String>(map['tmPartition'] as String),
      viaHostName: map['viaHostName'] == null ? null : pulumi.Output.create<String>(map['viaHostName'] as String),
      viaRequest: map['viaRequest'] == null ? null : pulumi.Output.create<String>(map['viaRequest'] as String),
      viaResponse: map['viaResponse'] == null ? null : pulumi.Output.create<String>(map['viaResponse'] as String),
      xffAlternativeNames: map['xffAlternativeNames'] == null ? null : pulumi.Output.create<List<String>>((map['xffAlternativeNames'] as List).cast<String>()),
    );
  }
}


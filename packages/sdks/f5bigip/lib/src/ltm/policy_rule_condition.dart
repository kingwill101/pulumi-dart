// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyRuleCondition {
  final pulumi.Input<bool>? address;
  final pulumi.Input<bool>? all;
  final pulumi.Input<String>? appService;
  final pulumi.Input<bool>? browserType;
  final pulumi.Input<bool>? browserVersion;
  final pulumi.Input<bool>? caseInsensitive;
  final pulumi.Input<bool>? caseSensitive;
  final pulumi.Input<bool>? cipher;
  final pulumi.Input<bool>? cipherBits;
  final pulumi.Input<bool>? clientAccepted;
  final pulumi.Input<bool>? clientSsl;
  final pulumi.Input<bool>? code;
  final pulumi.Input<bool>? commonName;
  final pulumi.Input<bool>? contains;
  final pulumi.Input<bool>? continent;
  final pulumi.Input<bool>? countryCode;
  final pulumi.Input<bool>? countryName;
  final pulumi.Input<bool>? cpuUsage;
  final pulumi.Input<String>? datagroup;
  final pulumi.Input<bool>? deviceMake;
  final pulumi.Input<bool>? deviceModel;
  final pulumi.Input<bool>? domain;
  final pulumi.Input<bool>? endsWith;
  final pulumi.Input<bool>? equals;
  final pulumi.Input<bool>? exists;
  final pulumi.Input<bool>? expiry;
  final pulumi.Input<bool>? extension;
  final pulumi.Input<bool>? external;
  final pulumi.Input<bool>? geoip;
  final pulumi.Input<bool>? greater;
  final pulumi.Input<bool>? greaterOrEqual;
  final pulumi.Input<bool>? host;
  final pulumi.Input<bool>? httpBasicAuth;
  final pulumi.Input<bool>? httpCookie;
  final pulumi.Input<bool>? httpHeader;
  final pulumi.Input<bool>? httpHost;
  final pulumi.Input<bool>? httpMethod;
  final pulumi.Input<bool>? httpReferer;
  final pulumi.Input<bool>? httpSetCookie;
  final pulumi.Input<bool>? httpStatus;
  final pulumi.Input<bool>? httpUri;
  final pulumi.Input<bool>? httpUserAgent;
  final pulumi.Input<bool>? httpVersion;
  final pulumi.Input<int>? index;
  final pulumi.Input<bool>? internal;
  final pulumi.Input<bool>? isp;
  final pulumi.Input<bool>? last15secs;
  final pulumi.Input<bool>? last1min;
  final pulumi.Input<bool>? last5mins;
  final pulumi.Input<bool>? less;
  final pulumi.Input<bool>? lessOrEqual;
  final pulumi.Input<bool>? local;
  final pulumi.Input<bool>? major;
  final pulumi.Input<bool>? matches;
  final pulumi.Input<bool>? minor;
  final pulumi.Input<bool>? missing;
  final pulumi.Input<bool>? mss;
  final pulumi.Input<bool>? not;
  final pulumi.Input<bool>? org;
  final pulumi.Input<bool>? password;
  final pulumi.Input<bool>? path;
  final pulumi.Input<bool>? pathSegment;
  final pulumi.Input<bool>? port;
  final pulumi.Input<bool>? present;
  final pulumi.Input<bool>? protocol;
  final pulumi.Input<bool>? queryParameter;
  final pulumi.Input<bool>? queryString;
  final pulumi.Input<bool>? regionCode;
  final pulumi.Input<bool>? regionName;
  final pulumi.Input<bool>? remote;
  final pulumi.Input<bool>? request;
  final pulumi.Input<bool>? response;
  final pulumi.Input<bool>? routeDomain;
  final pulumi.Input<bool>? rtt;
  final pulumi.Input<bool>? scheme;
  final pulumi.Input<bool>? serverName;
  final pulumi.Input<bool>? sslCert;
  final pulumi.Input<bool>? sslClientHello;
  final pulumi.Input<bool>? sslExtension;
  final pulumi.Input<bool>? sslServerHandshake;
  final pulumi.Input<bool>? sslServerHello;
  final pulumi.Input<bool>? startsWith;
  final pulumi.Input<bool>? tcp;
  final pulumi.Input<bool>? text;
  final pulumi.Input<String>? tmName;
  final pulumi.Input<bool>? unnamedQueryParameter;
  final pulumi.Input<bool>? userAgentToken;
  final pulumi.Input<bool>? username;
  final pulumi.Input<bool>? value;
  final pulumi.Input<List<String>>? values;
  final pulumi.Input<bool>? version;
  final pulumi.Input<bool>? vlan;
  final pulumi.Input<bool>? vlanId;

  /// Creates a new [PolicyRuleCondition].
  /// [address] Optional.
  /// [all] Optional.
  /// [appService] Optional.
  /// [browserType] Optional.
  /// [browserVersion] Optional.
  /// [caseInsensitive] Optional.
  /// [caseSensitive] Optional.
  /// [cipher] Optional.
  /// [cipherBits] Optional.
  /// [clientAccepted] Optional.
  /// [clientSsl] Optional.
  /// [code] Optional.
  /// [commonName] Optional.
  /// [contains] Optional.
  /// [continent] Optional.
  /// [countryCode] Optional.
  /// [countryName] Optional.
  /// [cpuUsage] Optional.
  /// [datagroup] Optional.
  /// [deviceMake] Optional.
  /// [deviceModel] Optional.
  /// [domain] Optional.
  /// [endsWith] Optional.
  /// [equals] Optional.
  /// [exists] Optional.
  /// [expiry] Optional.
  /// [extension] Optional.
  /// [external] Optional.
  /// [geoip] Optional.
  /// [greater] Optional.
  /// [greaterOrEqual] Optional.
  /// [host] Optional.
  /// [httpBasicAuth] Optional.
  /// [httpCookie] Optional.
  /// [httpHeader] Optional.
  /// [httpHost] Optional.
  /// [httpMethod] Optional.
  /// [httpReferer] Optional.
  /// [httpSetCookie] Optional.
  /// [httpStatus] Optional.
  /// [httpUri] Optional.
  /// [httpUserAgent] Optional.
  /// [httpVersion] Optional.
  /// [index] Optional.
  /// [internal] Optional.
  /// [isp] Optional.
  /// [last15secs] Optional.
  /// [last1min] Optional.
  /// [last5mins] Optional.
  /// [less] Optional.
  /// [lessOrEqual] Optional.
  /// [local] Optional.
  /// [major] Optional.
  /// [matches] Optional.
  /// [minor] Optional.
  /// [missing] Optional.
  /// [mss] Optional.
  /// [not] Optional.
  /// [org] Optional.
  /// [password] Optional.
  /// [path] Optional.
  /// [pathSegment] Optional.
  /// [port] Optional.
  /// [present] Optional.
  /// [protocol] Optional.
  /// [queryParameter] Optional.
  /// [queryString] Optional.
  /// [regionCode] Optional.
  /// [regionName] Optional.
  /// [remote] Optional.
  /// [request] Optional.
  /// [response] Optional.
  /// [routeDomain] Optional.
  /// [rtt] Optional.
  /// [scheme] Optional.
  /// [serverName] Optional.
  /// [sslCert] Optional.
  /// [sslClientHello] Optional.
  /// [sslExtension] Optional.
  /// [sslServerHandshake] Optional.
  /// [sslServerHello] Optional.
  /// [startsWith] Optional.
  /// [tcp] Optional.
  /// [text] Optional.
  /// [tmName] Optional.
  /// [unnamedQueryParameter] Optional.
  /// [userAgentToken] Optional.
  /// [username] Optional.
  /// [value] Optional.
  /// [values] Optional.
  /// [version] Optional.
  /// [vlan] Optional.
  /// [vlanId] Optional.
  PolicyRuleCondition({
    this.address,
    this.all,
    this.appService,
    this.browserType,
    this.browserVersion,
    this.caseInsensitive,
    this.caseSensitive,
    this.cipher,
    this.cipherBits,
    this.clientAccepted,
    this.clientSsl,
    this.code,
    this.commonName,
    this.contains,
    this.continent,
    this.countryCode,
    this.countryName,
    this.cpuUsage,
    this.datagroup,
    this.deviceMake,
    this.deviceModel,
    this.domain,
    this.endsWith,
    this.equals,
    this.exists,
    this.expiry,
    this.extension,
    this.external,
    this.geoip,
    this.greater,
    this.greaterOrEqual,
    this.host,
    this.httpBasicAuth,
    this.httpCookie,
    this.httpHeader,
    this.httpHost,
    this.httpMethod,
    this.httpReferer,
    this.httpSetCookie,
    this.httpStatus,
    this.httpUri,
    this.httpUserAgent,
    this.httpVersion,
    this.index,
    this.internal,
    this.isp,
    this.last15secs,
    this.last1min,
    this.last5mins,
    this.less,
    this.lessOrEqual,
    this.local,
    this.major,
    this.matches,
    this.minor,
    this.missing,
    this.mss,
    this.not,
    this.org,
    this.password,
    this.path,
    this.pathSegment,
    this.port,
    this.present,
    this.protocol,
    this.queryParameter,
    this.queryString,
    this.regionCode,
    this.regionName,
    this.remote,
    this.request,
    this.response,
    this.routeDomain,
    this.rtt,
    this.scheme,
    this.serverName,
    this.sslCert,
    this.sslClientHello,
    this.sslExtension,
    this.sslServerHandshake,
    this.sslServerHello,
    this.startsWith,
    this.tcp,
    this.text,
    this.tmName,
    this.unnamedQueryParameter,
    this.userAgentToken,
    this.username,
    this.value,
    this.values,
    this.version,
    this.vlan,
    this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'all': ?all,
      'appService': ?appService,
      'browserType': ?browserType,
      'browserVersion': ?browserVersion,
      'caseInsensitive': ?caseInsensitive,
      'caseSensitive': ?caseSensitive,
      'cipher': ?cipher,
      'cipherBits': ?cipherBits,
      'clientAccepted': ?clientAccepted,
      'clientSsl': ?clientSsl,
      'code': ?code,
      'commonName': ?commonName,
      'contains': ?contains,
      'continent': ?continent,
      'countryCode': ?countryCode,
      'countryName': ?countryName,
      'cpuUsage': ?cpuUsage,
      'datagroup': ?datagroup,
      'deviceMake': ?deviceMake,
      'deviceModel': ?deviceModel,
      'domain': ?domain,
      'endsWith': ?endsWith,
      'equals': ?equals,
      'exists': ?exists,
      'expiry': ?expiry,
      'extension': ?extension,
      'external': ?external,
      'geoip': ?geoip,
      'greater': ?greater,
      'greaterOrEqual': ?greaterOrEqual,
      'host': ?host,
      'httpBasicAuth': ?httpBasicAuth,
      'httpCookie': ?httpCookie,
      'httpHeader': ?httpHeader,
      'httpHost': ?httpHost,
      'httpMethod': ?httpMethod,
      'httpReferer': ?httpReferer,
      'httpSetCookie': ?httpSetCookie,
      'httpStatus': ?httpStatus,
      'httpUri': ?httpUri,
      'httpUserAgent': ?httpUserAgent,
      'httpVersion': ?httpVersion,
      'index': ?index,
      'internal': ?internal,
      'isp': ?isp,
      'last15secs': ?last15secs,
      'last1min': ?last1min,
      'last5mins': ?last5mins,
      'less': ?less,
      'lessOrEqual': ?lessOrEqual,
      'local': ?local,
      'major': ?major,
      'matches': ?matches,
      'minor': ?minor,
      'missing': ?missing,
      'mss': ?mss,
      'not': ?not,
      'org': ?org,
      'password': ?password,
      'path': ?path,
      'pathSegment': ?pathSegment,
      'port': ?port,
      'present': ?present,
      'protocol': ?protocol,
      'queryParameter': ?queryParameter,
      'queryString': ?queryString,
      'regionCode': ?regionCode,
      'regionName': ?regionName,
      'remote': ?remote,
      'request': ?request,
      'response': ?response,
      'routeDomain': ?routeDomain,
      'rtt': ?rtt,
      'scheme': ?scheme,
      'serverName': ?serverName,
      'sslCert': ?sslCert,
      'sslClientHello': ?sslClientHello,
      'sslExtension': ?sslExtension,
      'sslServerHandshake': ?sslServerHandshake,
      'sslServerHello': ?sslServerHello,
      'startsWith': ?startsWith,
      'tcp': ?tcp,
      'text': ?text,
      'tmName': ?tmName,
      'unnamedQueryParameter': ?unnamedQueryParameter,
      'userAgentToken': ?userAgentToken,
      'username': ?username,
      'value': ?value,
      'values': ?values,
      'version': ?version,
      'vlan': ?vlan,
      'vlanId': ?vlanId,
    };
  }

  factory PolicyRuleCondition.fromMap(Map<String, dynamic> map) {
    return PolicyRuleCondition(
      address: (() { final guardedValue = map['address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      all: (() { final guardedValue = map['all']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      appService: (() { final guardedValue = map['appService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      browserType: (() { final guardedValue = map['browserType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      browserVersion: (() { final guardedValue = map['browserVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      caseInsensitive: (() { final guardedValue = map['caseInsensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      caseSensitive: (() { final guardedValue = map['caseSensitive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cipher: (() { final guardedValue = map['cipher']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cipherBits: (() { final guardedValue = map['cipherBits']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientAccepted: (() { final guardedValue = map['clientAccepted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clientSsl: (() { final guardedValue = map['clientSsl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      code: (() { final guardedValue = map['code']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      commonName: (() { final guardedValue = map['commonName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      contains: (() { final guardedValue = map['contains']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      continent: (() { final guardedValue = map['continent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      countryCode: (() { final guardedValue = map['countryCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      countryName: (() { final guardedValue = map['countryName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cpuUsage: (() { final guardedValue = map['cpuUsage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      datagroup: (() { final guardedValue = map['datagroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceMake: (() { final guardedValue = map['deviceMake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      deviceModel: (() { final guardedValue = map['deviceModel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      domain: (() { final guardedValue = map['domain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      endsWith: (() { final guardedValue = map['endsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      equals: (() { final guardedValue = map['equals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      exists: (() { final guardedValue = map['exists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expiry: (() { final guardedValue = map['expiry']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      extension: (() { final guardedValue = map['extension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      external: (() { final guardedValue = map['external']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      geoip: (() { final guardedValue = map['geoip']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      greater: (() { final guardedValue = map['greater']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      greaterOrEqual: (() { final guardedValue = map['greaterOrEqual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpBasicAuth: (() { final guardedValue = map['httpBasicAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpCookie: (() { final guardedValue = map['httpCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpHeader: (() { final guardedValue = map['httpHeader']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpHost: (() { final guardedValue = map['httpHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpMethod: (() { final guardedValue = map['httpMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpReferer: (() { final guardedValue = map['httpReferer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpSetCookie: (() { final guardedValue = map['httpSetCookie']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpStatus: (() { final guardedValue = map['httpStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpUri: (() { final guardedValue = map['httpUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpUserAgent: (() { final guardedValue = map['httpUserAgent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      httpVersion: (() { final guardedValue = map['httpVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      index: (() { final guardedValue = map['index']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      internal: (() { final guardedValue = map['internal']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isp: (() { final guardedValue = map['isp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      last15secs: (() { final guardedValue = map['last15secs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      last1min: (() { final guardedValue = map['last1min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      last5mins: (() { final guardedValue = map['last5mins']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      less: (() { final guardedValue = map['less']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      lessOrEqual: (() { final guardedValue = map['lessOrEqual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      local: (() { final guardedValue = map['local']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      major: (() { final guardedValue = map['major']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      matches: (() { final guardedValue = map['matches']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      minor: (() { final guardedValue = map['minor']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      missing: (() { final guardedValue = map['missing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mss: (() { final guardedValue = map['mss']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      not: (() { final guardedValue = map['not']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      org: (() { final guardedValue = map['org']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      pathSegment: (() { final guardedValue = map['pathSegment']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      present: (() { final guardedValue = map['present']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      protocol: (() { final guardedValue = map['protocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryParameter: (() { final guardedValue = map['queryParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      queryString: (() { final guardedValue = map['queryString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regionCode: (() { final guardedValue = map['regionCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      regionName: (() { final guardedValue = map['regionName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      remote: (() { final guardedValue = map['remote']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      request: (() { final guardedValue = map['request']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      response: (() { final guardedValue = map['response']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      routeDomain: (() { final guardedValue = map['routeDomain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      rtt: (() { final guardedValue = map['rtt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      scheme: (() { final guardedValue = map['scheme']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      serverName: (() { final guardedValue = map['serverName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslCert: (() { final guardedValue = map['sslCert']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslClientHello: (() { final guardedValue = map['sslClientHello']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslExtension: (() { final guardedValue = map['sslExtension']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslServerHandshake: (() { final guardedValue = map['sslServerHandshake']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      sslServerHello: (() { final guardedValue = map['sslServerHello']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startsWith: (() { final guardedValue = map['startsWith']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tcp: (() { final guardedValue = map['tcp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      tmName: (() { final guardedValue = map['tmName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      unnamedQueryParameter: (() { final guardedValue = map['unnamedQueryParameter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userAgentToken: (() { final guardedValue = map['userAgentToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vlan: (() { final guardedValue = map['vlan']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      vlanId: (() { final guardedValue = map['vlanId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}


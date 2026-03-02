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
      address: map['address'] == null ? null : (map['address']! as bool).input(),
      all: map['all'] == null ? null : (map['all']! as bool).input(),
      appService: map['appService'] == null ? null : (map['appService']! as String).input(),
      browserType: map['browserType'] == null ? null : (map['browserType']! as bool).input(),
      browserVersion: map['browserVersion'] == null ? null : (map['browserVersion']! as bool).input(),
      caseInsensitive: map['caseInsensitive'] == null ? null : (map['caseInsensitive']! as bool).input(),
      caseSensitive: map['caseSensitive'] == null ? null : (map['caseSensitive']! as bool).input(),
      cipher: map['cipher'] == null ? null : (map['cipher']! as bool).input(),
      cipherBits: map['cipherBits'] == null ? null : (map['cipherBits']! as bool).input(),
      clientAccepted: map['clientAccepted'] == null ? null : (map['clientAccepted']! as bool).input(),
      clientSsl: map['clientSsl'] == null ? null : (map['clientSsl']! as bool).input(),
      code: map['code'] == null ? null : (map['code']! as bool).input(),
      commonName: map['commonName'] == null ? null : (map['commonName']! as bool).input(),
      contains: map['contains'] == null ? null : (map['contains']! as bool).input(),
      continent: map['continent'] == null ? null : (map['continent']! as bool).input(),
      countryCode: map['countryCode'] == null ? null : (map['countryCode']! as bool).input(),
      countryName: map['countryName'] == null ? null : (map['countryName']! as bool).input(),
      cpuUsage: map['cpuUsage'] == null ? null : (map['cpuUsage']! as bool).input(),
      datagroup: map['datagroup'] == null ? null : (map['datagroup']! as String).input(),
      deviceMake: map['deviceMake'] == null ? null : (map['deviceMake']! as bool).input(),
      deviceModel: map['deviceModel'] == null ? null : (map['deviceModel']! as bool).input(),
      domain: map['domain'] == null ? null : (map['domain']! as bool).input(),
      endsWith: map['endsWith'] == null ? null : (map['endsWith']! as bool).input(),
      equals: map['equals'] == null ? null : (map['equals']! as bool).input(),
      exists: map['exists'] == null ? null : (map['exists']! as bool).input(),
      expiry: map['expiry'] == null ? null : (map['expiry']! as bool).input(),
      extension: map['extension'] == null ? null : (map['extension']! as bool).input(),
      external: map['external'] == null ? null : (map['external']! as bool).input(),
      geoip: map['geoip'] == null ? null : (map['geoip']! as bool).input(),
      greater: map['greater'] == null ? null : (map['greater']! as bool).input(),
      greaterOrEqual: map['greaterOrEqual'] == null ? null : (map['greaterOrEqual']! as bool).input(),
      host: map['host'] == null ? null : (map['host']! as bool).input(),
      httpBasicAuth: map['httpBasicAuth'] == null ? null : (map['httpBasicAuth']! as bool).input(),
      httpCookie: map['httpCookie'] == null ? null : (map['httpCookie']! as bool).input(),
      httpHeader: map['httpHeader'] == null ? null : (map['httpHeader']! as bool).input(),
      httpHost: map['httpHost'] == null ? null : (map['httpHost']! as bool).input(),
      httpMethod: map['httpMethod'] == null ? null : (map['httpMethod']! as bool).input(),
      httpReferer: map['httpReferer'] == null ? null : (map['httpReferer']! as bool).input(),
      httpSetCookie: map['httpSetCookie'] == null ? null : (map['httpSetCookie']! as bool).input(),
      httpStatus: map['httpStatus'] == null ? null : (map['httpStatus']! as bool).input(),
      httpUri: map['httpUri'] == null ? null : (map['httpUri']! as bool).input(),
      httpUserAgent: map['httpUserAgent'] == null ? null : (map['httpUserAgent']! as bool).input(),
      httpVersion: map['httpVersion'] == null ? null : (map['httpVersion']! as bool).input(),
      index: map['index'] == null ? null : (map['index']! as int).input(),
      internal: map['internal'] == null ? null : (map['internal']! as bool).input(),
      isp: map['isp'] == null ? null : (map['isp']! as bool).input(),
      last15secs: map['last15secs'] == null ? null : (map['last15secs']! as bool).input(),
      last1min: map['last1min'] == null ? null : (map['last1min']! as bool).input(),
      last5mins: map['last5mins'] == null ? null : (map['last5mins']! as bool).input(),
      less: map['less'] == null ? null : (map['less']! as bool).input(),
      lessOrEqual: map['lessOrEqual'] == null ? null : (map['lessOrEqual']! as bool).input(),
      local: map['local'] == null ? null : (map['local']! as bool).input(),
      major: map['major'] == null ? null : (map['major']! as bool).input(),
      matches: map['matches'] == null ? null : (map['matches']! as bool).input(),
      minor: map['minor'] == null ? null : (map['minor']! as bool).input(),
      missing: map['missing'] == null ? null : (map['missing']! as bool).input(),
      mss: map['mss'] == null ? null : (map['mss']! as bool).input(),
      not: map['not'] == null ? null : (map['not']! as bool).input(),
      org: map['org'] == null ? null : (map['org']! as bool).input(),
      password: map['password'] == null ? null : (map['password']! as bool).input(),
      path: map['path'] == null ? null : (map['path']! as bool).input(),
      pathSegment: map['pathSegment'] == null ? null : (map['pathSegment']! as bool).input(),
      port: map['port'] == null ? null : (map['port']! as bool).input(),
      present: map['present'] == null ? null : (map['present']! as bool).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as bool).input(),
      queryParameter: map['queryParameter'] == null ? null : (map['queryParameter']! as bool).input(),
      queryString: map['queryString'] == null ? null : (map['queryString']! as bool).input(),
      regionCode: map['regionCode'] == null ? null : (map['regionCode']! as bool).input(),
      regionName: map['regionName'] == null ? null : (map['regionName']! as bool).input(),
      remote: map['remote'] == null ? null : (map['remote']! as bool).input(),
      request: map['request'] == null ? null : (map['request']! as bool).input(),
      response: map['response'] == null ? null : (map['response']! as bool).input(),
      routeDomain: map['routeDomain'] == null ? null : (map['routeDomain']! as bool).input(),
      rtt: map['rtt'] == null ? null : (map['rtt']! as bool).input(),
      scheme: map['scheme'] == null ? null : (map['scheme']! as bool).input(),
      serverName: map['serverName'] == null ? null : (map['serverName']! as bool).input(),
      sslCert: map['sslCert'] == null ? null : (map['sslCert']! as bool).input(),
      sslClientHello: map['sslClientHello'] == null ? null : (map['sslClientHello']! as bool).input(),
      sslExtension: map['sslExtension'] == null ? null : (map['sslExtension']! as bool).input(),
      sslServerHandshake: map['sslServerHandshake'] == null ? null : (map['sslServerHandshake']! as bool).input(),
      sslServerHello: map['sslServerHello'] == null ? null : (map['sslServerHello']! as bool).input(),
      startsWith: map['startsWith'] == null ? null : (map['startsWith']! as bool).input(),
      tcp: map['tcp'] == null ? null : (map['tcp']! as bool).input(),
      text: map['text'] == null ? null : (map['text']! as bool).input(),
      tmName: map['tmName'] == null ? null : (map['tmName']! as String).input(),
      unnamedQueryParameter: map['unnamedQueryParameter'] == null ? null : (map['unnamedQueryParameter']! as bool).input(),
      userAgentToken: map['userAgentToken'] == null ? null : (map['userAgentToken']! as bool).input(),
      username: map['username'] == null ? null : (map['username']! as bool).input(),
      value: map['value'] == null ? null : (map['value']! as bool).input(),
      values: map['values'] == null ? null : ((map['values']! as List).cast<String>()).input(),
      version: map['version'] == null ? null : (map['version']! as bool).input(),
      vlan: map['vlan'] == null ? null : (map['vlan']! as bool).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId']! as bool).input(),
    );
  }
}


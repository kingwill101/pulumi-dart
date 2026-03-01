// ignore_for_file: unused_element, unnecessary_cast


class PolicyRuleCondition {
  final bool? address;
  final bool? all;
  final String? appService;
  final bool? browserType;
  final bool? browserVersion;
  final bool? caseInsensitive;
  final bool? caseSensitive;
  final bool? cipher;
  final bool? cipherBits;
  final bool? clientAccepted;
  final bool? clientSsl;
  final bool? code;
  final bool? commonName;
  final bool? contains;
  final bool? continent;
  final bool? countryCode;
  final bool? countryName;
  final bool? cpuUsage;
  final String? datagroup;
  final bool? deviceMake;
  final bool? deviceModel;
  final bool? domain;
  final bool? endsWith;
  final bool? equals;
  final bool? exists;
  final bool? expiry;
  final bool? extension;
  final bool? external;
  final bool? geoip;
  final bool? greater;
  final bool? greaterOrEqual;
  final bool? host;
  final bool? httpBasicAuth;
  final bool? httpCookie;
  final bool? httpHeader;
  final bool? httpHost;
  final bool? httpMethod;
  final bool? httpReferer;
  final bool? httpSetCookie;
  final bool? httpStatus;
  final bool? httpUri;
  final bool? httpUserAgent;
  final bool? httpVersion;
  final int? index;
  final bool? internal;
  final bool? isp;
  final bool? last15secs;
  final bool? last1min;
  final bool? last5mins;
  final bool? less;
  final bool? lessOrEqual;
  final bool? local;
  final bool? major;
  final bool? matches;
  final bool? minor;
  final bool? missing;
  final bool? mss;
  final bool? not;
  final bool? org;
  final bool? password;
  final bool? path;
  final bool? pathSegment;
  final bool? port;
  final bool? present;
  final bool? protocol;
  final bool? queryParameter;
  final bool? queryString;
  final bool? regionCode;
  final bool? regionName;
  final bool? remote;
  final bool? request;
  final bool? response;
  final bool? routeDomain;
  final bool? rtt;
  final bool? scheme;
  final bool? serverName;
  final bool? sslCert;
  final bool? sslClientHello;
  final bool? sslExtension;
  final bool? sslServerHandshake;
  final bool? sslServerHello;
  final bool? startsWith;
  final bool? tcp;
  final bool? text;
  final String? tmName;
  final bool? unnamedQueryParameter;
  final bool? userAgentToken;
  final bool? username;
  final bool? value;
  final List<String>? values;
  final bool? version;
  final bool? vlan;
  final bool? vlanId;

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
      address: map['address'] == null ? null : map['address'] as bool,
      all: map['all'] == null ? null : map['all'] as bool,
      appService: map['appService'] == null ? null : map['appService'] as String,
      browserType: map['browserType'] == null ? null : map['browserType'] as bool,
      browserVersion: map['browserVersion'] == null ? null : map['browserVersion'] as bool,
      caseInsensitive: map['caseInsensitive'] == null ? null : map['caseInsensitive'] as bool,
      caseSensitive: map['caseSensitive'] == null ? null : map['caseSensitive'] as bool,
      cipher: map['cipher'] == null ? null : map['cipher'] as bool,
      cipherBits: map['cipherBits'] == null ? null : map['cipherBits'] as bool,
      clientAccepted: map['clientAccepted'] == null ? null : map['clientAccepted'] as bool,
      clientSsl: map['clientSsl'] == null ? null : map['clientSsl'] as bool,
      code: map['code'] == null ? null : map['code'] as bool,
      commonName: map['commonName'] == null ? null : map['commonName'] as bool,
      contains: map['contains'] == null ? null : map['contains'] as bool,
      continent: map['continent'] == null ? null : map['continent'] as bool,
      countryCode: map['countryCode'] == null ? null : map['countryCode'] as bool,
      countryName: map['countryName'] == null ? null : map['countryName'] as bool,
      cpuUsage: map['cpuUsage'] == null ? null : map['cpuUsage'] as bool,
      datagroup: map['datagroup'] == null ? null : map['datagroup'] as String,
      deviceMake: map['deviceMake'] == null ? null : map['deviceMake'] as bool,
      deviceModel: map['deviceModel'] == null ? null : map['deviceModel'] as bool,
      domain: map['domain'] == null ? null : map['domain'] as bool,
      endsWith: map['endsWith'] == null ? null : map['endsWith'] as bool,
      equals: map['equals'] == null ? null : map['equals'] as bool,
      exists: map['exists'] == null ? null : map['exists'] as bool,
      expiry: map['expiry'] == null ? null : map['expiry'] as bool,
      extension: map['extension'] == null ? null : map['extension'] as bool,
      external: map['external'] == null ? null : map['external'] as bool,
      geoip: map['geoip'] == null ? null : map['geoip'] as bool,
      greater: map['greater'] == null ? null : map['greater'] as bool,
      greaterOrEqual: map['greaterOrEqual'] == null ? null : map['greaterOrEqual'] as bool,
      host: map['host'] == null ? null : map['host'] as bool,
      httpBasicAuth: map['httpBasicAuth'] == null ? null : map['httpBasicAuth'] as bool,
      httpCookie: map['httpCookie'] == null ? null : map['httpCookie'] as bool,
      httpHeader: map['httpHeader'] == null ? null : map['httpHeader'] as bool,
      httpHost: map['httpHost'] == null ? null : map['httpHost'] as bool,
      httpMethod: map['httpMethod'] == null ? null : map['httpMethod'] as bool,
      httpReferer: map['httpReferer'] == null ? null : map['httpReferer'] as bool,
      httpSetCookie: map['httpSetCookie'] == null ? null : map['httpSetCookie'] as bool,
      httpStatus: map['httpStatus'] == null ? null : map['httpStatus'] as bool,
      httpUri: map['httpUri'] == null ? null : map['httpUri'] as bool,
      httpUserAgent: map['httpUserAgent'] == null ? null : map['httpUserAgent'] as bool,
      httpVersion: map['httpVersion'] == null ? null : map['httpVersion'] as bool,
      index: map['index'] == null ? null : map['index'] as int,
      internal: map['internal'] == null ? null : map['internal'] as bool,
      isp: map['isp'] == null ? null : map['isp'] as bool,
      last15secs: map['last15secs'] == null ? null : map['last15secs'] as bool,
      last1min: map['last1min'] == null ? null : map['last1min'] as bool,
      last5mins: map['last5mins'] == null ? null : map['last5mins'] as bool,
      less: map['less'] == null ? null : map['less'] as bool,
      lessOrEqual: map['lessOrEqual'] == null ? null : map['lessOrEqual'] as bool,
      local: map['local'] == null ? null : map['local'] as bool,
      major: map['major'] == null ? null : map['major'] as bool,
      matches: map['matches'] == null ? null : map['matches'] as bool,
      minor: map['minor'] == null ? null : map['minor'] as bool,
      missing: map['missing'] == null ? null : map['missing'] as bool,
      mss: map['mss'] == null ? null : map['mss'] as bool,
      not: map['not'] == null ? null : map['not'] as bool,
      org: map['org'] == null ? null : map['org'] as bool,
      password: map['password'] == null ? null : map['password'] as bool,
      path: map['path'] == null ? null : map['path'] as bool,
      pathSegment: map['pathSegment'] == null ? null : map['pathSegment'] as bool,
      port: map['port'] == null ? null : map['port'] as bool,
      present: map['present'] == null ? null : map['present'] as bool,
      protocol: map['protocol'] == null ? null : map['protocol'] as bool,
      queryParameter: map['queryParameter'] == null ? null : map['queryParameter'] as bool,
      queryString: map['queryString'] == null ? null : map['queryString'] as bool,
      regionCode: map['regionCode'] == null ? null : map['regionCode'] as bool,
      regionName: map['regionName'] == null ? null : map['regionName'] as bool,
      remote: map['remote'] == null ? null : map['remote'] as bool,
      request: map['request'] == null ? null : map['request'] as bool,
      response: map['response'] == null ? null : map['response'] as bool,
      routeDomain: map['routeDomain'] == null ? null : map['routeDomain'] as bool,
      rtt: map['rtt'] == null ? null : map['rtt'] as bool,
      scheme: map['scheme'] == null ? null : map['scheme'] as bool,
      serverName: map['serverName'] == null ? null : map['serverName'] as bool,
      sslCert: map['sslCert'] == null ? null : map['sslCert'] as bool,
      sslClientHello: map['sslClientHello'] == null ? null : map['sslClientHello'] as bool,
      sslExtension: map['sslExtension'] == null ? null : map['sslExtension'] as bool,
      sslServerHandshake: map['sslServerHandshake'] == null ? null : map['sslServerHandshake'] as bool,
      sslServerHello: map['sslServerHello'] == null ? null : map['sslServerHello'] as bool,
      startsWith: map['startsWith'] == null ? null : map['startsWith'] as bool,
      tcp: map['tcp'] == null ? null : map['tcp'] as bool,
      text: map['text'] == null ? null : map['text'] as bool,
      tmName: map['tmName'] == null ? null : map['tmName'] as String,
      unnamedQueryParameter: map['unnamedQueryParameter'] == null ? null : map['unnamedQueryParameter'] as bool,
      userAgentToken: map['userAgentToken'] == null ? null : map['userAgentToken'] as bool,
      username: map['username'] == null ? null : map['username'] as bool,
      value: map['value'] == null ? null : map['value'] as bool,
      values: map['values'] == null ? null : (map['values'] as List).cast<String>(),
      version: map['version'] == null ? null : map['version'] as bool,
      vlan: map['vlan'] == null ? null : map['vlan'] as bool,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as bool,
    );
  }
}


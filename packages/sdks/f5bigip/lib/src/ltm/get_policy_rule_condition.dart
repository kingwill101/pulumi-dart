// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyRuleCondition {
  final pulumi.Input<bool> address;
  final pulumi.Input<bool> all;
  final pulumi.Input<String> appService;
  final pulumi.Input<bool> browserType;
  final pulumi.Input<bool> browserVersion;
  final pulumi.Input<bool> caseInsensitive;
  final pulumi.Input<bool> caseSensitive;
  final pulumi.Input<bool> cipher;
  final pulumi.Input<bool> cipherBits;
  final pulumi.Input<bool> clientSsl;
  final pulumi.Input<bool> code;
  final pulumi.Input<bool> commonName;
  final pulumi.Input<bool> contains;
  final pulumi.Input<bool> continent;
  final pulumi.Input<bool> countryCode;
  final pulumi.Input<bool> countryName;
  final pulumi.Input<bool> cpuUsage;
  final pulumi.Input<String> datagroup;
  final pulumi.Input<bool> deviceMake;
  final pulumi.Input<bool> deviceModel;
  final pulumi.Input<bool> domain;
  final pulumi.Input<bool> endsWith;
  final pulumi.Input<bool> equals;
  final pulumi.Input<bool> expiry;
  final pulumi.Input<bool> extension;
  final pulumi.Input<bool> external;
  final pulumi.Input<bool> geoip;
  final pulumi.Input<bool> greater;
  final pulumi.Input<bool> greaterOrEqual;
  final pulumi.Input<bool> host;
  final pulumi.Input<bool> httpBasicAuth;
  final pulumi.Input<bool> httpCookie;
  final pulumi.Input<bool> httpHeader;
  final pulumi.Input<bool> httpHost;
  final pulumi.Input<bool> httpMethod;
  final pulumi.Input<bool> httpReferer;
  final pulumi.Input<bool> httpSetCookie;
  final pulumi.Input<bool> httpStatus;
  final pulumi.Input<bool> httpUri;
  final pulumi.Input<bool> httpUserAgent;
  final pulumi.Input<bool> httpVersion;
  final pulumi.Input<int> index;
  final pulumi.Input<bool> internal;
  final pulumi.Input<bool> isp;
  final pulumi.Input<bool> last15secs;
  final pulumi.Input<bool> last1min;
  final pulumi.Input<bool> last5mins;
  final pulumi.Input<bool> less;
  final pulumi.Input<bool> lessOrEqual;
  final pulumi.Input<bool> local;
  final pulumi.Input<bool> major;
  final pulumi.Input<bool> matches;
  final pulumi.Input<bool> minor;
  final pulumi.Input<bool> missing;
  final pulumi.Input<bool> mss;
  final pulumi.Input<bool> not;
  final pulumi.Input<bool> org;
  final pulumi.Input<bool> password;
  final pulumi.Input<bool> path;
  final pulumi.Input<bool> pathSegment;
  final pulumi.Input<bool> port;
  final pulumi.Input<bool> present;
  final pulumi.Input<bool> protocol;
  final pulumi.Input<bool> queryParameter;
  final pulumi.Input<bool> queryString;
  final pulumi.Input<bool> regionCode;
  final pulumi.Input<bool> regionName;
  final pulumi.Input<bool> remote;
  final pulumi.Input<bool> request;
  final pulumi.Input<bool> response;
  final pulumi.Input<bool> routeDomain;
  final pulumi.Input<bool> rtt;
  final pulumi.Input<bool> scheme;
  final pulumi.Input<bool> serverName;
  final pulumi.Input<bool> sslCert;
  final pulumi.Input<bool> sslClientHello;
  final pulumi.Input<bool> sslExtension;
  final pulumi.Input<bool> sslServerHandshake;
  final pulumi.Input<bool> sslServerHello;
  final pulumi.Input<bool> startsWith;
  final pulumi.Input<bool> tcp;
  final pulumi.Input<bool> text;
  final pulumi.Input<String> tmName;
  final pulumi.Input<bool> unnamedQueryParameter;
  final pulumi.Input<bool> userAgentToken;
  final pulumi.Input<bool> username;
  final pulumi.Input<bool> value;
  final pulumi.Input<List<String>> values;
  final pulumi.Input<bool> version;
  final pulumi.Input<bool> vlan;
  final pulumi.Input<bool> vlanId;

  /// Creates a new [GetPolicyRuleCondition].
  /// [address] Required.
  /// [all] Required.
  /// [appService] Required.
  /// [browserType] Required.
  /// [browserVersion] Required.
  /// [caseInsensitive] Required.
  /// [caseSensitive] Required.
  /// [cipher] Required.
  /// [cipherBits] Required.
  /// [clientSsl] Required.
  /// [code] Required.
  /// [commonName] Required.
  /// [contains] Required.
  /// [continent] Required.
  /// [countryCode] Required.
  /// [countryName] Required.
  /// [cpuUsage] Required.
  /// [datagroup] Required.
  /// [deviceMake] Required.
  /// [deviceModel] Required.
  /// [domain] Required.
  /// [endsWith] Required.
  /// [equals] Required.
  /// [expiry] Required.
  /// [extension] Required.
  /// [external] Required.
  /// [geoip] Required.
  /// [greater] Required.
  /// [greaterOrEqual] Required.
  /// [host] Required.
  /// [httpBasicAuth] Required.
  /// [httpCookie] Required.
  /// [httpHeader] Required.
  /// [httpHost] Required.
  /// [httpMethod] Required.
  /// [httpReferer] Required.
  /// [httpSetCookie] Required.
  /// [httpStatus] Required.
  /// [httpUri] Required.
  /// [httpUserAgent] Required.
  /// [httpVersion] Required.
  /// [index] Required.
  /// [internal] Required.
  /// [isp] Required.
  /// [last15secs] Required.
  /// [last1min] Required.
  /// [last5mins] Required.
  /// [less] Required.
  /// [lessOrEqual] Required.
  /// [local] Required.
  /// [major] Required.
  /// [matches] Required.
  /// [minor] Required.
  /// [missing] Required.
  /// [mss] Required.
  /// [not] Required.
  /// [org] Required.
  /// [password] Required.
  /// [path] Required.
  /// [pathSegment] Required.
  /// [port] Required.
  /// [present] Required.
  /// [protocol] Required.
  /// [queryParameter] Required.
  /// [queryString] Required.
  /// [regionCode] Required.
  /// [regionName] Required.
  /// [remote] Required.
  /// [request] Required.
  /// [response] Required.
  /// [routeDomain] Required.
  /// [rtt] Required.
  /// [scheme] Required.
  /// [serverName] Required.
  /// [sslCert] Required.
  /// [sslClientHello] Required.
  /// [sslExtension] Required.
  /// [sslServerHandshake] Required.
  /// [sslServerHello] Required.
  /// [startsWith] Required.
  /// [tcp] Required.
  /// [text] Required.
  /// [tmName] Required.
  /// [unnamedQueryParameter] Required.
  /// [userAgentToken] Required.
  /// [username] Required.
  /// [value] Required.
  /// [values] Required.
  /// [version] Required.
  /// [vlan] Required.
  /// [vlanId] Required.
  GetPolicyRuleCondition({
    required this.address,
    required this.all,
    required this.appService,
    required this.browserType,
    required this.browserVersion,
    required this.caseInsensitive,
    required this.caseSensitive,
    required this.cipher,
    required this.cipherBits,
    required this.clientSsl,
    required this.code,
    required this.commonName,
    required this.contains,
    required this.continent,
    required this.countryCode,
    required this.countryName,
    required this.cpuUsage,
    required this.datagroup,
    required this.deviceMake,
    required this.deviceModel,
    required this.domain,
    required this.endsWith,
    required this.equals,
    required this.expiry,
    required this.extension,
    required this.external,
    required this.geoip,
    required this.greater,
    required this.greaterOrEqual,
    required this.host,
    required this.httpBasicAuth,
    required this.httpCookie,
    required this.httpHeader,
    required this.httpHost,
    required this.httpMethod,
    required this.httpReferer,
    required this.httpSetCookie,
    required this.httpStatus,
    required this.httpUri,
    required this.httpUserAgent,
    required this.httpVersion,
    required this.index,
    required this.internal,
    required this.isp,
    required this.last15secs,
    required this.last1min,
    required this.last5mins,
    required this.less,
    required this.lessOrEqual,
    required this.local,
    required this.major,
    required this.matches,
    required this.minor,
    required this.missing,
    required this.mss,
    required this.not,
    required this.org,
    required this.password,
    required this.path,
    required this.pathSegment,
    required this.port,
    required this.present,
    required this.protocol,
    required this.queryParameter,
    required this.queryString,
    required this.regionCode,
    required this.regionName,
    required this.remote,
    required this.request,
    required this.response,
    required this.routeDomain,
    required this.rtt,
    required this.scheme,
    required this.serverName,
    required this.sslCert,
    required this.sslClientHello,
    required this.sslExtension,
    required this.sslServerHandshake,
    required this.sslServerHello,
    required this.startsWith,
    required this.tcp,
    required this.text,
    required this.tmName,
    required this.unnamedQueryParameter,
    required this.userAgentToken,
    required this.username,
    required this.value,
    required this.values,
    required this.version,
    required this.vlan,
    required this.vlanId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'all': all,
      'appService': appService,
      'browserType': browserType,
      'browserVersion': browserVersion,
      'caseInsensitive': caseInsensitive,
      'caseSensitive': caseSensitive,
      'cipher': cipher,
      'cipherBits': cipherBits,
      'clientSsl': clientSsl,
      'code': code,
      'commonName': commonName,
      'contains': contains,
      'continent': continent,
      'countryCode': countryCode,
      'countryName': countryName,
      'cpuUsage': cpuUsage,
      'datagroup': datagroup,
      'deviceMake': deviceMake,
      'deviceModel': deviceModel,
      'domain': domain,
      'endsWith': endsWith,
      'equals': equals,
      'expiry': expiry,
      'extension': extension,
      'external': external,
      'geoip': geoip,
      'greater': greater,
      'greaterOrEqual': greaterOrEqual,
      'host': host,
      'httpBasicAuth': httpBasicAuth,
      'httpCookie': httpCookie,
      'httpHeader': httpHeader,
      'httpHost': httpHost,
      'httpMethod': httpMethod,
      'httpReferer': httpReferer,
      'httpSetCookie': httpSetCookie,
      'httpStatus': httpStatus,
      'httpUri': httpUri,
      'httpUserAgent': httpUserAgent,
      'httpVersion': httpVersion,
      'index': index,
      'internal': internal,
      'isp': isp,
      'last15secs': last15secs,
      'last1min': last1min,
      'last5mins': last5mins,
      'less': less,
      'lessOrEqual': lessOrEqual,
      'local': local,
      'major': major,
      'matches': matches,
      'minor': minor,
      'missing': missing,
      'mss': mss,
      'not': not,
      'org': org,
      'password': password,
      'path': path,
      'pathSegment': pathSegment,
      'port': port,
      'present': present,
      'protocol': protocol,
      'queryParameter': queryParameter,
      'queryString': queryString,
      'regionCode': regionCode,
      'regionName': regionName,
      'remote': remote,
      'request': request,
      'response': response,
      'routeDomain': routeDomain,
      'rtt': rtt,
      'scheme': scheme,
      'serverName': serverName,
      'sslCert': sslCert,
      'sslClientHello': sslClientHello,
      'sslExtension': sslExtension,
      'sslServerHandshake': sslServerHandshake,
      'sslServerHello': sslServerHello,
      'startsWith': startsWith,
      'tcp': tcp,
      'text': text,
      'tmName': tmName,
      'unnamedQueryParameter': unnamedQueryParameter,
      'userAgentToken': userAgentToken,
      'username': username,
      'value': value,
      'values': values,
      'version': version,
      'vlan': vlan,
      'vlanId': vlanId,
    };
  }

  factory GetPolicyRuleCondition.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleCondition(
      address: (map['address'] as bool).input(),
      all: (map['all'] as bool).input(),
      appService: (map['appService'] as String).input(),
      browserType: (map['browserType'] as bool).input(),
      browserVersion: (map['browserVersion'] as bool).input(),
      caseInsensitive: (map['caseInsensitive'] as bool).input(),
      caseSensitive: (map['caseSensitive'] as bool).input(),
      cipher: (map['cipher'] as bool).input(),
      cipherBits: (map['cipherBits'] as bool).input(),
      clientSsl: (map['clientSsl'] as bool).input(),
      code: (map['code'] as bool).input(),
      commonName: (map['commonName'] as bool).input(),
      contains: (map['contains'] as bool).input(),
      continent: (map['continent'] as bool).input(),
      countryCode: (map['countryCode'] as bool).input(),
      countryName: (map['countryName'] as bool).input(),
      cpuUsage: (map['cpuUsage'] as bool).input(),
      datagroup: (map['datagroup'] as String).input(),
      deviceMake: (map['deviceMake'] as bool).input(),
      deviceModel: (map['deviceModel'] as bool).input(),
      domain: (map['domain'] as bool).input(),
      endsWith: (map['endsWith'] as bool).input(),
      equals: (map['equals'] as bool).input(),
      expiry: (map['expiry'] as bool).input(),
      extension: (map['extension'] as bool).input(),
      external: (map['external'] as bool).input(),
      geoip: (map['geoip'] as bool).input(),
      greater: (map['greater'] as bool).input(),
      greaterOrEqual: (map['greaterOrEqual'] as bool).input(),
      host: (map['host'] as bool).input(),
      httpBasicAuth: (map['httpBasicAuth'] as bool).input(),
      httpCookie: (map['httpCookie'] as bool).input(),
      httpHeader: (map['httpHeader'] as bool).input(),
      httpHost: (map['httpHost'] as bool).input(),
      httpMethod: (map['httpMethod'] as bool).input(),
      httpReferer: (map['httpReferer'] as bool).input(),
      httpSetCookie: (map['httpSetCookie'] as bool).input(),
      httpStatus: (map['httpStatus'] as bool).input(),
      httpUri: (map['httpUri'] as bool).input(),
      httpUserAgent: (map['httpUserAgent'] as bool).input(),
      httpVersion: (map['httpVersion'] as bool).input(),
      index: (map['index'] as int).input(),
      internal: (map['internal'] as bool).input(),
      isp: (map['isp'] as bool).input(),
      last15secs: (map['last15secs'] as bool).input(),
      last1min: (map['last1min'] as bool).input(),
      last5mins: (map['last5mins'] as bool).input(),
      less: (map['less'] as bool).input(),
      lessOrEqual: (map['lessOrEqual'] as bool).input(),
      local: (map['local'] as bool).input(),
      major: (map['major'] as bool).input(),
      matches: (map['matches'] as bool).input(),
      minor: (map['minor'] as bool).input(),
      missing: (map['missing'] as bool).input(),
      mss: (map['mss'] as bool).input(),
      not: (map['not'] as bool).input(),
      org: (map['org'] as bool).input(),
      password: (map['password'] as bool).input(),
      path: (map['path'] as bool).input(),
      pathSegment: (map['pathSegment'] as bool).input(),
      port: (map['port'] as bool).input(),
      present: (map['present'] as bool).input(),
      protocol: (map['protocol'] as bool).input(),
      queryParameter: (map['queryParameter'] as bool).input(),
      queryString: (map['queryString'] as bool).input(),
      regionCode: (map['regionCode'] as bool).input(),
      regionName: (map['regionName'] as bool).input(),
      remote: (map['remote'] as bool).input(),
      request: (map['request'] as bool).input(),
      response: (map['response'] as bool).input(),
      routeDomain: (map['routeDomain'] as bool).input(),
      rtt: (map['rtt'] as bool).input(),
      scheme: (map['scheme'] as bool).input(),
      serverName: (map['serverName'] as bool).input(),
      sslCert: (map['sslCert'] as bool).input(),
      sslClientHello: (map['sslClientHello'] as bool).input(),
      sslExtension: (map['sslExtension'] as bool).input(),
      sslServerHandshake: (map['sslServerHandshake'] as bool).input(),
      sslServerHello: (map['sslServerHello'] as bool).input(),
      startsWith: (map['startsWith'] as bool).input(),
      tcp: (map['tcp'] as bool).input(),
      text: (map['text'] as bool).input(),
      tmName: (map['tmName'] as String).input(),
      unnamedQueryParameter: (map['unnamedQueryParameter'] as bool).input(),
      userAgentToken: (map['userAgentToken'] as bool).input(),
      username: (map['username'] as bool).input(),
      value: (map['value'] as bool).input(),
      values: ((map['values'] as List).cast<String>()).input(),
      version: (map['version'] as bool).input(),
      vlan: (map['vlan'] as bool).input(),
      vlanId: (map['vlanId'] as bool).input(),
    );
  }
}


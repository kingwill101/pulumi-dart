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
  const GetPolicyRuleCondition({
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
      address: pulumi.Input.fromValue(map['address'] as bool),
      all: pulumi.Input.fromValue(map['all'] as bool),
      appService: pulumi.Input.fromValue(map['appService'] as String),
      browserType: pulumi.Input.fromValue(map['browserType'] as bool),
      browserVersion: pulumi.Input.fromValue(map['browserVersion'] as bool),
      caseInsensitive: pulumi.Input.fromValue(map['caseInsensitive'] as bool),
      caseSensitive: pulumi.Input.fromValue(map['caseSensitive'] as bool),
      cipher: pulumi.Input.fromValue(map['cipher'] as bool),
      cipherBits: pulumi.Input.fromValue(map['cipherBits'] as bool),
      clientSsl: pulumi.Input.fromValue(map['clientSsl'] as bool),
      code: pulumi.Input.fromValue(map['code'] as bool),
      commonName: pulumi.Input.fromValue(map['commonName'] as bool),
      contains: pulumi.Input.fromValue(map['contains'] as bool),
      continent: pulumi.Input.fromValue(map['continent'] as bool),
      countryCode: pulumi.Input.fromValue(map['countryCode'] as bool),
      countryName: pulumi.Input.fromValue(map['countryName'] as bool),
      cpuUsage: pulumi.Input.fromValue(map['cpuUsage'] as bool),
      datagroup: pulumi.Input.fromValue(map['datagroup'] as String),
      deviceMake: pulumi.Input.fromValue(map['deviceMake'] as bool),
      deviceModel: pulumi.Input.fromValue(map['deviceModel'] as bool),
      domain: pulumi.Input.fromValue(map['domain'] as bool),
      endsWith: pulumi.Input.fromValue(map['endsWith'] as bool),
      equals: pulumi.Input.fromValue(map['equals'] as bool),
      expiry: pulumi.Input.fromValue(map['expiry'] as bool),
      extension: pulumi.Input.fromValue(map['extension'] as bool),
      external: pulumi.Input.fromValue(map['external'] as bool),
      geoip: pulumi.Input.fromValue(map['geoip'] as bool),
      greater: pulumi.Input.fromValue(map['greater'] as bool),
      greaterOrEqual: pulumi.Input.fromValue(map['greaterOrEqual'] as bool),
      host: pulumi.Input.fromValue(map['host'] as bool),
      httpBasicAuth: pulumi.Input.fromValue(map['httpBasicAuth'] as bool),
      httpCookie: pulumi.Input.fromValue(map['httpCookie'] as bool),
      httpHeader: pulumi.Input.fromValue(map['httpHeader'] as bool),
      httpHost: pulumi.Input.fromValue(map['httpHost'] as bool),
      httpMethod: pulumi.Input.fromValue(map['httpMethod'] as bool),
      httpReferer: pulumi.Input.fromValue(map['httpReferer'] as bool),
      httpSetCookie: pulumi.Input.fromValue(map['httpSetCookie'] as bool),
      httpStatus: pulumi.Input.fromValue(map['httpStatus'] as bool),
      httpUri: pulumi.Input.fromValue(map['httpUri'] as bool),
      httpUserAgent: pulumi.Input.fromValue(map['httpUserAgent'] as bool),
      httpVersion: pulumi.Input.fromValue(map['httpVersion'] as bool),
      index: pulumi.Input.fromValue(map['index'] as int),
      internal: pulumi.Input.fromValue(map['internal'] as bool),
      isp: pulumi.Input.fromValue(map['isp'] as bool),
      last15secs: pulumi.Input.fromValue(map['last15secs'] as bool),
      last1min: pulumi.Input.fromValue(map['last1min'] as bool),
      last5mins: pulumi.Input.fromValue(map['last5mins'] as bool),
      less: pulumi.Input.fromValue(map['less'] as bool),
      lessOrEqual: pulumi.Input.fromValue(map['lessOrEqual'] as bool),
      local: pulumi.Input.fromValue(map['local'] as bool),
      major: pulumi.Input.fromValue(map['major'] as bool),
      matches: pulumi.Input.fromValue(map['matches'] as bool),
      minor: pulumi.Input.fromValue(map['minor'] as bool),
      missing: pulumi.Input.fromValue(map['missing'] as bool),
      mss: pulumi.Input.fromValue(map['mss'] as bool),
      not: pulumi.Input.fromValue(map['not'] as bool),
      org: pulumi.Input.fromValue(map['org'] as bool),
      password: pulumi.Input.fromValue(map['password'] as bool),
      path: pulumi.Input.fromValue(map['path'] as bool),
      pathSegment: pulumi.Input.fromValue(map['pathSegment'] as bool),
      port: pulumi.Input.fromValue(map['port'] as bool),
      present: pulumi.Input.fromValue(map['present'] as bool),
      protocol: pulumi.Input.fromValue(map['protocol'] as bool),
      queryParameter: pulumi.Input.fromValue(map['queryParameter'] as bool),
      queryString: pulumi.Input.fromValue(map['queryString'] as bool),
      regionCode: pulumi.Input.fromValue(map['regionCode'] as bool),
      regionName: pulumi.Input.fromValue(map['regionName'] as bool),
      remote: pulumi.Input.fromValue(map['remote'] as bool),
      request: pulumi.Input.fromValue(map['request'] as bool),
      response: pulumi.Input.fromValue(map['response'] as bool),
      routeDomain: pulumi.Input.fromValue(map['routeDomain'] as bool),
      rtt: pulumi.Input.fromValue(map['rtt'] as bool),
      scheme: pulumi.Input.fromValue(map['scheme'] as bool),
      serverName: pulumi.Input.fromValue(map['serverName'] as bool),
      sslCert: pulumi.Input.fromValue(map['sslCert'] as bool),
      sslClientHello: pulumi.Input.fromValue(map['sslClientHello'] as bool),
      sslExtension: pulumi.Input.fromValue(map['sslExtension'] as bool),
      sslServerHandshake: pulumi.Input.fromValue(map['sslServerHandshake'] as bool),
      sslServerHello: pulumi.Input.fromValue(map['sslServerHello'] as bool),
      startsWith: pulumi.Input.fromValue(map['startsWith'] as bool),
      tcp: pulumi.Input.fromValue(map['tcp'] as bool),
      text: pulumi.Input.fromValue(map['text'] as bool),
      tmName: pulumi.Input.fromValue(map['tmName'] as String),
      unnamedQueryParameter: pulumi.Input.fromValue(map['unnamedQueryParameter'] as bool),
      userAgentToken: pulumi.Input.fromValue(map['userAgentToken'] as bool),
      username: pulumi.Input.fromValue(map['username'] as bool),
      value: pulumi.Input.fromValue(map['value'] as bool),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
      version: pulumi.Input.fromValue(map['version'] as bool),
      vlan: pulumi.Input.fromValue(map['vlan'] as bool),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as bool),
    );
  }
}


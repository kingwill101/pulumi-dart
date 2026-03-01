// ignore_for_file: unused_element, unnecessary_cast


class GetPolicyRuleAction {
  final String appService;
  final String application;
  final bool asm;
  final bool avr;
  final bool cache;
  final bool carp;
  final String category;
  final bool classify;
  final String clonePool;
  final int code;
  final bool compress;
  final bool connection;
  final String content;
  final bool cookieHash;
  final bool cookieInsert;
  final bool cookiePassive;
  final bool cookieRewrite;
  final bool decompress;
  final bool defer;
  final bool destinationAddress;
  final bool disable;
  final String domain;
  final bool enable;
  final String expiry;
  final int expirySecs;
  final String expression;
  final String extension;
  final String facility;
  final bool? forward;
  final String fromProfile;
  final bool hash;
  final String host;
  final bool http;
  final bool httpBasicAuth;
  final bool httpCookie;
  final bool httpHeader;
  final bool? httpHost;
  final bool httpReferer;
  final bool httpReply;
  final bool httpSetCookie;
  final bool httpUri;
  final String ifile;
  final bool insert;
  final String internalVirtual;
  final String ipAddress;
  final String key;
  final bool l7dos;
  final int length;
  final String location;
  final bool log;
  final bool ltmPolicy;
  final String member;
  final String message;
  final String netmask;
  final String nexthop;
  final String node;
  final int offset;
  final String path;
  final bool pem;
  final bool persist;
  final bool pin;
  final String policy;
  final String pool;
  final int port;
  final String priority;
  final String profile;
  final String protocol;
  final String queryString;
  final String rateclass;
  final bool redirect;
  final bool remove;
  final bool replace;
  final bool request;
  final bool requestAdapt;
  final bool reset;
  final bool response;
  final bool responseAdapt;
  final String scheme;
  final String script;
  final bool select;
  final bool serverSsl;
  final bool setVariable;
  final bool shutdown;
  final String snat;
  final String snatpool;
  final bool sourceAddress;
  final bool sslClientHello;
  final bool sslServerHandshake;
  final bool sslServerHello;
  final bool sslSessionId;
  final int status;
  final bool tcl;
  final bool tcpNagle;
  final String text;
  final int timeout;
  final String tmName;
  final bool uie;
  final bool universal;
  final String value;
  final String virtual;
  final String vlan;
  final int vlanId;
  final bool wam;
  final bool write;

  /// Creates a new [GetPolicyRuleAction].
  /// [appService] Required.
  /// [application] Required.
  /// [asm] Required.
  /// [avr] Required.
  /// [cache] Required.
  /// [carp] Required.
  /// [category] Required.
  /// [classify] Required.
  /// [clonePool] Required.
  /// [code] Required.
  /// [compress] Required.
  /// [connection] Required.
  /// [content] Required.
  /// [cookieHash] Required.
  /// [cookieInsert] Required.
  /// [cookiePassive] Required.
  /// [cookieRewrite] Required.
  /// [decompress] Required.
  /// [defer] Required.
  /// [destinationAddress] Required.
  /// [disable] Required.
  /// [domain] Required.
  /// [enable] Required.
  /// [expiry] Required.
  /// [expirySecs] Required.
  /// [expression] Required.
  /// [extension] Required.
  /// [facility] Required.
  /// [forward] Optional.
  /// [fromProfile] Required.
  /// [hash] Required.
  /// [host] Required.
  /// [http] Required.
  /// [httpBasicAuth] Required.
  /// [httpCookie] Required.
  /// [httpHeader] Required.
  /// [httpHost] Optional.
  /// [httpReferer] Required.
  /// [httpReply] Required.
  /// [httpSetCookie] Required.
  /// [httpUri] Required.
  /// [ifile] Required.
  /// [insert] Required.
  /// [internalVirtual] Required.
  /// [ipAddress] Required.
  /// [key] Required.
  /// [l7dos] Required.
  /// [length] Required.
  /// [location] Required.
  /// [log] Required.
  /// [ltmPolicy] Required.
  /// [member] Required.
  /// [message] Required.
  /// [netmask] Required.
  /// [nexthop] Required.
  /// [node] Required.
  /// [offset] Required.
  /// [path] Required.
  /// [pem] Required.
  /// [persist] Required.
  /// [pin] Required.
  /// [policy] Required.
  /// [pool] Required.
  /// [port] Required.
  /// [priority] Required.
  /// [profile] Required.
  /// [protocol] Required.
  /// [queryString] Required.
  /// [rateclass] Required.
  /// [redirect] Required.
  /// [remove] Required.
  /// [replace] Required.
  /// [request] Required.
  /// [requestAdapt] Required.
  /// [reset] Required.
  /// [response] Required.
  /// [responseAdapt] Required.
  /// [scheme] Required.
  /// [script] Required.
  /// [select] Required.
  /// [serverSsl] Required.
  /// [setVariable] Required.
  /// [shutdown] Required.
  /// [snat] Required.
  /// [snatpool] Required.
  /// [sourceAddress] Required.
  /// [sslClientHello] Required.
  /// [sslServerHandshake] Required.
  /// [sslServerHello] Required.
  /// [sslSessionId] Required.
  /// [status] Required.
  /// [tcl] Required.
  /// [tcpNagle] Required.
  /// [text] Required.
  /// [timeout] Required.
  /// [tmName] Required.
  /// [uie] Required.
  /// [universal] Required.
  /// [value] Required.
  /// [virtual] Required.
  /// [vlan] Required.
  /// [vlanId] Required.
  /// [wam] Required.
  /// [write] Required.
  GetPolicyRuleAction({
    required this.appService,
    required this.application,
    required this.asm,
    required this.avr,
    required this.cache,
    required this.carp,
    required this.category,
    required this.classify,
    required this.clonePool,
    required this.code,
    required this.compress,
    required this.connection,
    required this.content,
    required this.cookieHash,
    required this.cookieInsert,
    required this.cookiePassive,
    required this.cookieRewrite,
    required this.decompress,
    required this.defer,
    required this.destinationAddress,
    required this.disable,
    required this.domain,
    required this.enable,
    required this.expiry,
    required this.expirySecs,
    required this.expression,
    required this.extension,
    required this.facility,
    this.forward,
    required this.fromProfile,
    required this.hash,
    required this.host,
    required this.http,
    required this.httpBasicAuth,
    required this.httpCookie,
    required this.httpHeader,
    this.httpHost,
    required this.httpReferer,
    required this.httpReply,
    required this.httpSetCookie,
    required this.httpUri,
    required this.ifile,
    required this.insert,
    required this.internalVirtual,
    required this.ipAddress,
    required this.key,
    required this.l7dos,
    required this.length,
    required this.location,
    required this.log,
    required this.ltmPolicy,
    required this.member,
    required this.message,
    required this.netmask,
    required this.nexthop,
    required this.node,
    required this.offset,
    required this.path,
    required this.pem,
    required this.persist,
    required this.pin,
    required this.policy,
    required this.pool,
    required this.port,
    required this.priority,
    required this.profile,
    required this.protocol,
    required this.queryString,
    required this.rateclass,
    required this.redirect,
    required this.remove,
    required this.replace,
    required this.request,
    required this.requestAdapt,
    required this.reset,
    required this.response,
    required this.responseAdapt,
    required this.scheme,
    required this.script,
    required this.select,
    required this.serverSsl,
    required this.setVariable,
    required this.shutdown,
    required this.snat,
    required this.snatpool,
    required this.sourceAddress,
    required this.sslClientHello,
    required this.sslServerHandshake,
    required this.sslServerHello,
    required this.sslSessionId,
    required this.status,
    required this.tcl,
    required this.tcpNagle,
    required this.text,
    required this.timeout,
    required this.tmName,
    required this.uie,
    required this.universal,
    required this.value,
    required this.virtual,
    required this.vlan,
    required this.vlanId,
    required this.wam,
    required this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': appService,
      'application': application,
      'asm': asm,
      'avr': avr,
      'cache': cache,
      'carp': carp,
      'category': category,
      'classify': classify,
      'clonePool': clonePool,
      'code': code,
      'compress': compress,
      'connection': connection,
      'content': content,
      'cookieHash': cookieHash,
      'cookieInsert': cookieInsert,
      'cookiePassive': cookiePassive,
      'cookieRewrite': cookieRewrite,
      'decompress': decompress,
      'defer': defer,
      'destinationAddress': destinationAddress,
      'disable': disable,
      'domain': domain,
      'enable': enable,
      'expiry': expiry,
      'expirySecs': expirySecs,
      'expression': expression,
      'extension': extension,
      'facility': facility,
      'forward': ?forward,
      'fromProfile': fromProfile,
      'hash': hash,
      'host': host,
      'http': http,
      'httpBasicAuth': httpBasicAuth,
      'httpCookie': httpCookie,
      'httpHeader': httpHeader,
      'httpHost': ?httpHost,
      'httpReferer': httpReferer,
      'httpReply': httpReply,
      'httpSetCookie': httpSetCookie,
      'httpUri': httpUri,
      'ifile': ifile,
      'insert': insert,
      'internalVirtual': internalVirtual,
      'ipAddress': ipAddress,
      'key': key,
      'l7dos': l7dos,
      'length': length,
      'location': location,
      'log': log,
      'ltmPolicy': ltmPolicy,
      'member': member,
      'message': message,
      'netmask': netmask,
      'nexthop': nexthop,
      'node': node,
      'offset': offset,
      'path': path,
      'pem': pem,
      'persist': persist,
      'pin': pin,
      'policy': policy,
      'pool': pool,
      'port': port,
      'priority': priority,
      'profile': profile,
      'protocol': protocol,
      'queryString': queryString,
      'rateclass': rateclass,
      'redirect': redirect,
      'remove': remove,
      'replace': replace,
      'request': request,
      'requestAdapt': requestAdapt,
      'reset': reset,
      'response': response,
      'responseAdapt': responseAdapt,
      'scheme': scheme,
      'script': script,
      'select': select,
      'serverSsl': serverSsl,
      'setVariable': setVariable,
      'shutdown': shutdown,
      'snat': snat,
      'snatpool': snatpool,
      'sourceAddress': sourceAddress,
      'sslClientHello': sslClientHello,
      'sslServerHandshake': sslServerHandshake,
      'sslServerHello': sslServerHello,
      'sslSessionId': sslSessionId,
      'status': status,
      'tcl': tcl,
      'tcpNagle': tcpNagle,
      'text': text,
      'timeout': timeout,
      'tmName': tmName,
      'uie': uie,
      'universal': universal,
      'value': value,
      'virtual': virtual,
      'vlan': vlan,
      'vlanId': vlanId,
      'wam': wam,
      'write': write,
    };
  }

  factory GetPolicyRuleAction.fromMap(Map<String, dynamic> map) {
    return GetPolicyRuleAction(
      appService: map['appService'] as String,
      application: map['application'] as String,
      asm: map['asm'] as bool,
      avr: map['avr'] as bool,
      cache: map['cache'] as bool,
      carp: map['carp'] as bool,
      category: map['category'] as String,
      classify: map['classify'] as bool,
      clonePool: map['clonePool'] as String,
      code: map['code'] as int,
      compress: map['compress'] as bool,
      connection: map['connection'] as bool,
      content: map['content'] as String,
      cookieHash: map['cookieHash'] as bool,
      cookieInsert: map['cookieInsert'] as bool,
      cookiePassive: map['cookiePassive'] as bool,
      cookieRewrite: map['cookieRewrite'] as bool,
      decompress: map['decompress'] as bool,
      defer: map['defer'] as bool,
      destinationAddress: map['destinationAddress'] as bool,
      disable: map['disable'] as bool,
      domain: map['domain'] as String,
      enable: map['enable'] as bool,
      expiry: map['expiry'] as String,
      expirySecs: map['expirySecs'] as int,
      expression: map['expression'] as String,
      extension: map['extension'] as String,
      facility: map['facility'] as String,
      forward: map['forward'] == null ? null : map['forward'] as bool,
      fromProfile: map['fromProfile'] as String,
      hash: map['hash'] as bool,
      host: map['host'] as String,
      http: map['http'] as bool,
      httpBasicAuth: map['httpBasicAuth'] as bool,
      httpCookie: map['httpCookie'] as bool,
      httpHeader: map['httpHeader'] as bool,
      httpHost: map['httpHost'] == null ? null : map['httpHost'] as bool,
      httpReferer: map['httpReferer'] as bool,
      httpReply: map['httpReply'] as bool,
      httpSetCookie: map['httpSetCookie'] as bool,
      httpUri: map['httpUri'] as bool,
      ifile: map['ifile'] as String,
      insert: map['insert'] as bool,
      internalVirtual: map['internalVirtual'] as String,
      ipAddress: map['ipAddress'] as String,
      key: map['key'] as String,
      l7dos: map['l7dos'] as bool,
      length: map['length'] as int,
      location: map['location'] as String,
      log: map['log'] as bool,
      ltmPolicy: map['ltmPolicy'] as bool,
      member: map['member'] as String,
      message: map['message'] as String,
      netmask: map['netmask'] as String,
      nexthop: map['nexthop'] as String,
      node: map['node'] as String,
      offset: map['offset'] as int,
      path: map['path'] as String,
      pem: map['pem'] as bool,
      persist: map['persist'] as bool,
      pin: map['pin'] as bool,
      policy: map['policy'] as String,
      pool: map['pool'] as String,
      port: map['port'] as int,
      priority: map['priority'] as String,
      profile: map['profile'] as String,
      protocol: map['protocol'] as String,
      queryString: map['queryString'] as String,
      rateclass: map['rateclass'] as String,
      redirect: map['redirect'] as bool,
      remove: map['remove'] as bool,
      replace: map['replace'] as bool,
      request: map['request'] as bool,
      requestAdapt: map['requestAdapt'] as bool,
      reset: map['reset'] as bool,
      response: map['response'] as bool,
      responseAdapt: map['responseAdapt'] as bool,
      scheme: map['scheme'] as String,
      script: map['script'] as String,
      select: map['select'] as bool,
      serverSsl: map['serverSsl'] as bool,
      setVariable: map['setVariable'] as bool,
      shutdown: map['shutdown'] as bool,
      snat: map['snat'] as String,
      snatpool: map['snatpool'] as String,
      sourceAddress: map['sourceAddress'] as bool,
      sslClientHello: map['sslClientHello'] as bool,
      sslServerHandshake: map['sslServerHandshake'] as bool,
      sslServerHello: map['sslServerHello'] as bool,
      sslSessionId: map['sslSessionId'] as bool,
      status: map['status'] as int,
      tcl: map['tcl'] as bool,
      tcpNagle: map['tcpNagle'] as bool,
      text: map['text'] as String,
      timeout: map['timeout'] as int,
      tmName: map['tmName'] as String,
      uie: map['uie'] as bool,
      universal: map['universal'] as bool,
      value: map['value'] as String,
      virtual: map['virtual'] as String,
      vlan: map['vlan'] as String,
      vlanId: map['vlanId'] as int,
      wam: map['wam'] as bool,
      write: map['write'] as bool,
    );
  }
}


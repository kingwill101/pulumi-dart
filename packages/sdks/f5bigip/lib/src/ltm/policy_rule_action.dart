// ignore_for_file: unused_element, unnecessary_cast


class PolicyRuleAction {
  final String? appService;
  final String? application;
  final bool? asm;
  final bool? avr;
  final bool? cache;
  final bool? carp;
  final String? category;
  final bool? classify;
  final String? clonePool;
  final int? code;
  final bool? compress;
  /// This action is set to `true` by default, it needs to be explicitly set to `false` for actions it conflicts with.
  final bool? connection;
  final String? content;
  final bool? cookieHash;
  final bool? cookieInsert;
  final bool? cookiePassive;
  final bool? cookieRewrite;
  final bool? decompress;
  final bool? defer;
  final bool? destinationAddress;
  final bool? disable;
  final String? domain;
  final bool? enable;
  final String? expiry;
  final int? expirySecs;
  final String? expression;
  final String? extension;
  final String? facility;
  /// This action will affect forwarding.
  final bool? forward;
  final String? fromProfile;
  final bool? hash;
  final String? host;
  final bool? http;
  final bool? httpBasicAuth;
  final bool? httpCookie;
  final bool? httpHeader;
  final bool? httpHost;
  final bool? httpReferer;
  final bool? httpReply;
  final bool? httpSetCookie;
  final bool? httpUri;
  final String? ifile;
  final bool? insert;
  final String? internalVirtual;
  final String? ipAddress;
  final String? key;
  final bool? l7dos;
  final int? length;
  final String? location;
  final bool? log;
  final bool? ltmPolicy;
  final String? member;
  final String? message;
  final String? netmask;
  final String? nexthop;
  final String? node;
  final int? offset;
  final String? path;
  final bool? pem;
  final bool? persist;
  final bool? pin;
  final String? policy;
  /// This action will direct the stream to this pool.
  final String? pool;
  final int? port;
  final String? priority;
  final String? profile;
  final String? protocol;
  final String? queryString;
  final String? rateclass;
  final bool? redirect;
  final bool? remove;
  final bool? replace;
  final bool? request;
  final bool? requestAdapt;
  final bool? reset;
  final bool? response;
  final bool? responseAdapt;
  final String? scheme;
  final String? script;
  final bool? select;
  final bool? serverSsl;
  final bool? setVariable;
  final bool? shutdown;
  final String? snat;
  final String? snatpool;
  final bool? sourceAddress;
  final bool? sslClientHello;
  final bool? sslServerHandshake;
  final bool? sslServerHello;
  final bool? sslSessionId;
  final int? status;
  final bool? tcl;
  final bool? tcpNagle;
  final String? text;
  final int? timeout;
  final String? tmName;
  final bool? uie;
  final bool? universal;
  final String? value;
  final String? virtual;
  final String? vlan;
  final int? vlanId;
  final bool? wam;
  final bool? write;

  /// Creates a new [PolicyRuleAction].
  /// [appService] Optional.
  /// [application] Optional.
  /// [asm] Optional.
  /// [avr] Optional.
  /// [cache] Optional.
  /// [carp] Optional.
  /// [category] Optional.
  /// [classify] Optional.
  /// [clonePool] Optional.
  /// [code] Optional.
  /// [compress] Optional.
  /// [connection] This action is set to `true` by default, it needs to be explicitly set to `false` for actions it conflicts with.
  /// [content] Optional.
  /// [cookieHash] Optional.
  /// [cookieInsert] Optional.
  /// [cookiePassive] Optional.
  /// [cookieRewrite] Optional.
  /// [decompress] Optional.
  /// [defer] Optional.
  /// [destinationAddress] Optional.
  /// [disable] Optional.
  /// [domain] Optional.
  /// [enable] Optional.
  /// [expiry] Optional.
  /// [expirySecs] Optional.
  /// [expression] Optional.
  /// [extension] Optional.
  /// [facility] Optional.
  /// [forward] This action will affect forwarding.
  /// [fromProfile] Optional.
  /// [hash] Optional.
  /// [host] Optional.
  /// [http] Optional.
  /// [httpBasicAuth] Optional.
  /// [httpCookie] Optional.
  /// [httpHeader] Optional.
  /// [httpHost] Optional.
  /// [httpReferer] Optional.
  /// [httpReply] Optional.
  /// [httpSetCookie] Optional.
  /// [httpUri] Optional.
  /// [ifile] Optional.
  /// [insert] Optional.
  /// [internalVirtual] Optional.
  /// [ipAddress] Optional.
  /// [key] Optional.
  /// [l7dos] Optional.
  /// [length] Optional.
  /// [location] Optional.
  /// [log] Optional.
  /// [ltmPolicy] Optional.
  /// [member] Optional.
  /// [message] Optional.
  /// [netmask] Optional.
  /// [nexthop] Optional.
  /// [node] Optional.
  /// [offset] Optional.
  /// [path] Optional.
  /// [pem] Optional.
  /// [persist] Optional.
  /// [pin] Optional.
  /// [policy] Optional.
  /// [pool] This action will direct the stream to this pool.
  /// [port] Optional.
  /// [priority] Optional.
  /// [profile] Optional.
  /// [protocol] Optional.
  /// [queryString] Optional.
  /// [rateclass] Optional.
  /// [redirect] Optional.
  /// [remove] Optional.
  /// [replace] Optional.
  /// [request] Optional.
  /// [requestAdapt] Optional.
  /// [reset] Optional.
  /// [response] Optional.
  /// [responseAdapt] Optional.
  /// [scheme] Optional.
  /// [script] Optional.
  /// [select] Optional.
  /// [serverSsl] Optional.
  /// [setVariable] Optional.
  /// [shutdown] Optional.
  /// [snat] Optional.
  /// [snatpool] Optional.
  /// [sourceAddress] Optional.
  /// [sslClientHello] Optional.
  /// [sslServerHandshake] Optional.
  /// [sslServerHello] Optional.
  /// [sslSessionId] Optional.
  /// [status] Optional.
  /// [tcl] Optional.
  /// [tcpNagle] Optional.
  /// [text] Optional.
  /// [timeout] Optional.
  /// [tmName] Optional.
  /// [uie] Optional.
  /// [universal] Optional.
  /// [value] Optional.
  /// [virtual] Optional.
  /// [vlan] Optional.
  /// [vlanId] Optional.
  /// [wam] Optional.
  /// [write] Optional.
  PolicyRuleAction({
    this.appService,
    this.application,
    this.asm,
    this.avr,
    this.cache,
    this.carp,
    this.category,
    this.classify,
    this.clonePool,
    this.code,
    this.compress,
    this.connection,
    this.content,
    this.cookieHash,
    this.cookieInsert,
    this.cookiePassive,
    this.cookieRewrite,
    this.decompress,
    this.defer,
    this.destinationAddress,
    this.disable,
    this.domain,
    this.enable,
    this.expiry,
    this.expirySecs,
    this.expression,
    this.extension,
    this.facility,
    this.forward,
    this.fromProfile,
    this.hash,
    this.host,
    this.http,
    this.httpBasicAuth,
    this.httpCookie,
    this.httpHeader,
    this.httpHost,
    this.httpReferer,
    this.httpReply,
    this.httpSetCookie,
    this.httpUri,
    this.ifile,
    this.insert,
    this.internalVirtual,
    this.ipAddress,
    this.key,
    this.l7dos,
    this.length,
    this.location,
    this.log,
    this.ltmPolicy,
    this.member,
    this.message,
    this.netmask,
    this.nexthop,
    this.node,
    this.offset,
    this.path,
    this.pem,
    this.persist,
    this.pin,
    this.policy,
    this.pool,
    this.port,
    this.priority,
    this.profile,
    this.protocol,
    this.queryString,
    this.rateclass,
    this.redirect,
    this.remove,
    this.replace,
    this.request,
    this.requestAdapt,
    this.reset,
    this.response,
    this.responseAdapt,
    this.scheme,
    this.script,
    this.select,
    this.serverSsl,
    this.setVariable,
    this.shutdown,
    this.snat,
    this.snatpool,
    this.sourceAddress,
    this.sslClientHello,
    this.sslServerHandshake,
    this.sslServerHello,
    this.sslSessionId,
    this.status,
    this.tcl,
    this.tcpNagle,
    this.text,
    this.timeout,
    this.tmName,
    this.uie,
    this.universal,
    this.value,
    this.virtual,
    this.vlan,
    this.vlanId,
    this.wam,
    this.write,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appService': ?appService,
      'application': ?application,
      'asm': ?asm,
      'avr': ?avr,
      'cache': ?cache,
      'carp': ?carp,
      'category': ?category,
      'classify': ?classify,
      'clonePool': ?clonePool,
      'code': ?code,
      'compress': ?compress,
      'connection': ?connection,
      'content': ?content,
      'cookieHash': ?cookieHash,
      'cookieInsert': ?cookieInsert,
      'cookiePassive': ?cookiePassive,
      'cookieRewrite': ?cookieRewrite,
      'decompress': ?decompress,
      'defer': ?defer,
      'destinationAddress': ?destinationAddress,
      'disable': ?disable,
      'domain': ?domain,
      'enable': ?enable,
      'expiry': ?expiry,
      'expirySecs': ?expirySecs,
      'expression': ?expression,
      'extension': ?extension,
      'facility': ?facility,
      'forward': ?forward,
      'fromProfile': ?fromProfile,
      'hash': ?hash,
      'host': ?host,
      'http': ?http,
      'httpBasicAuth': ?httpBasicAuth,
      'httpCookie': ?httpCookie,
      'httpHeader': ?httpHeader,
      'httpHost': ?httpHost,
      'httpReferer': ?httpReferer,
      'httpReply': ?httpReply,
      'httpSetCookie': ?httpSetCookie,
      'httpUri': ?httpUri,
      'ifile': ?ifile,
      'insert': ?insert,
      'internalVirtual': ?internalVirtual,
      'ipAddress': ?ipAddress,
      'key': ?key,
      'l7dos': ?l7dos,
      'length': ?length,
      'location': ?location,
      'log': ?log,
      'ltmPolicy': ?ltmPolicy,
      'member': ?member,
      'message': ?message,
      'netmask': ?netmask,
      'nexthop': ?nexthop,
      'node': ?node,
      'offset': ?offset,
      'path': ?path,
      'pem': ?pem,
      'persist': ?persist,
      'pin': ?pin,
      'policy': ?policy,
      'pool': ?pool,
      'port': ?port,
      'priority': ?priority,
      'profile': ?profile,
      'protocol': ?protocol,
      'queryString': ?queryString,
      'rateclass': ?rateclass,
      'redirect': ?redirect,
      'remove': ?remove,
      'replace': ?replace,
      'request': ?request,
      'requestAdapt': ?requestAdapt,
      'reset': ?reset,
      'response': ?response,
      'responseAdapt': ?responseAdapt,
      'scheme': ?scheme,
      'script': ?script,
      'select': ?select,
      'serverSsl': ?serverSsl,
      'setVariable': ?setVariable,
      'shutdown': ?shutdown,
      'snat': ?snat,
      'snatpool': ?snatpool,
      'sourceAddress': ?sourceAddress,
      'sslClientHello': ?sslClientHello,
      'sslServerHandshake': ?sslServerHandshake,
      'sslServerHello': ?sslServerHello,
      'sslSessionId': ?sslSessionId,
      'status': ?status,
      'tcl': ?tcl,
      'tcpNagle': ?tcpNagle,
      'text': ?text,
      'timeout': ?timeout,
      'tmName': ?tmName,
      'uie': ?uie,
      'universal': ?universal,
      'value': ?value,
      'virtual': ?virtual,
      'vlan': ?vlan,
      'vlanId': ?vlanId,
      'wam': ?wam,
      'write': ?write,
    };
  }

  factory PolicyRuleAction.fromMap(Map<String, dynamic> map) {
    return PolicyRuleAction(
      appService: map['appService'] == null ? null : map['appService'] as String,
      application: map['application'] == null ? null : map['application'] as String,
      asm: map['asm'] == null ? null : map['asm'] as bool,
      avr: map['avr'] == null ? null : map['avr'] as bool,
      cache: map['cache'] == null ? null : map['cache'] as bool,
      carp: map['carp'] == null ? null : map['carp'] as bool,
      category: map['category'] == null ? null : map['category'] as String,
      classify: map['classify'] == null ? null : map['classify'] as bool,
      clonePool: map['clonePool'] == null ? null : map['clonePool'] as String,
      code: map['code'] == null ? null : map['code'] as int,
      compress: map['compress'] == null ? null : map['compress'] as bool,
      connection: map['connection'] == null ? null : map['connection'] as bool,
      content: map['content'] == null ? null : map['content'] as String,
      cookieHash: map['cookieHash'] == null ? null : map['cookieHash'] as bool,
      cookieInsert: map['cookieInsert'] == null ? null : map['cookieInsert'] as bool,
      cookiePassive: map['cookiePassive'] == null ? null : map['cookiePassive'] as bool,
      cookieRewrite: map['cookieRewrite'] == null ? null : map['cookieRewrite'] as bool,
      decompress: map['decompress'] == null ? null : map['decompress'] as bool,
      defer: map['defer'] == null ? null : map['defer'] as bool,
      destinationAddress: map['destinationAddress'] == null ? null : map['destinationAddress'] as bool,
      disable: map['disable'] == null ? null : map['disable'] as bool,
      domain: map['domain'] == null ? null : map['domain'] as String,
      enable: map['enable'] == null ? null : map['enable'] as bool,
      expiry: map['expiry'] == null ? null : map['expiry'] as String,
      expirySecs: map['expirySecs'] == null ? null : map['expirySecs'] as int,
      expression: map['expression'] == null ? null : map['expression'] as String,
      extension: map['extension'] == null ? null : map['extension'] as String,
      facility: map['facility'] == null ? null : map['facility'] as String,
      forward: map['forward'] == null ? null : map['forward'] as bool,
      fromProfile: map['fromProfile'] == null ? null : map['fromProfile'] as String,
      hash: map['hash'] == null ? null : map['hash'] as bool,
      host: map['host'] == null ? null : map['host'] as String,
      http: map['http'] == null ? null : map['http'] as bool,
      httpBasicAuth: map['httpBasicAuth'] == null ? null : map['httpBasicAuth'] as bool,
      httpCookie: map['httpCookie'] == null ? null : map['httpCookie'] as bool,
      httpHeader: map['httpHeader'] == null ? null : map['httpHeader'] as bool,
      httpHost: map['httpHost'] == null ? null : map['httpHost'] as bool,
      httpReferer: map['httpReferer'] == null ? null : map['httpReferer'] as bool,
      httpReply: map['httpReply'] == null ? null : map['httpReply'] as bool,
      httpSetCookie: map['httpSetCookie'] == null ? null : map['httpSetCookie'] as bool,
      httpUri: map['httpUri'] == null ? null : map['httpUri'] as bool,
      ifile: map['ifile'] == null ? null : map['ifile'] as String,
      insert: map['insert'] == null ? null : map['insert'] as bool,
      internalVirtual: map['internalVirtual'] == null ? null : map['internalVirtual'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      l7dos: map['l7dos'] == null ? null : map['l7dos'] as bool,
      length: map['length'] == null ? null : map['length'] as int,
      location: map['location'] == null ? null : map['location'] as String,
      log: map['log'] == null ? null : map['log'] as bool,
      ltmPolicy: map['ltmPolicy'] == null ? null : map['ltmPolicy'] as bool,
      member: map['member'] == null ? null : map['member'] as String,
      message: map['message'] == null ? null : map['message'] as String,
      netmask: map['netmask'] == null ? null : map['netmask'] as String,
      nexthop: map['nexthop'] == null ? null : map['nexthop'] as String,
      node: map['node'] == null ? null : map['node'] as String,
      offset: map['offset'] == null ? null : map['offset'] as int,
      path: map['path'] == null ? null : map['path'] as String,
      pem: map['pem'] == null ? null : map['pem'] as bool,
      persist: map['persist'] == null ? null : map['persist'] as bool,
      pin: map['pin'] == null ? null : map['pin'] as bool,
      policy: map['policy'] == null ? null : map['policy'] as String,
      pool: map['pool'] == null ? null : map['pool'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      priority: map['priority'] == null ? null : map['priority'] as String,
      profile: map['profile'] == null ? null : map['profile'] as String,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      queryString: map['queryString'] == null ? null : map['queryString'] as String,
      rateclass: map['rateclass'] == null ? null : map['rateclass'] as String,
      redirect: map['redirect'] == null ? null : map['redirect'] as bool,
      remove: map['remove'] == null ? null : map['remove'] as bool,
      replace: map['replace'] == null ? null : map['replace'] as bool,
      request: map['request'] == null ? null : map['request'] as bool,
      requestAdapt: map['requestAdapt'] == null ? null : map['requestAdapt'] as bool,
      reset: map['reset'] == null ? null : map['reset'] as bool,
      response: map['response'] == null ? null : map['response'] as bool,
      responseAdapt: map['responseAdapt'] == null ? null : map['responseAdapt'] as bool,
      scheme: map['scheme'] == null ? null : map['scheme'] as String,
      script: map['script'] == null ? null : map['script'] as String,
      select: map['select'] == null ? null : map['select'] as bool,
      serverSsl: map['serverSsl'] == null ? null : map['serverSsl'] as bool,
      setVariable: map['setVariable'] == null ? null : map['setVariable'] as bool,
      shutdown: map['shutdown'] == null ? null : map['shutdown'] as bool,
      snat: map['snat'] == null ? null : map['snat'] as String,
      snatpool: map['snatpool'] == null ? null : map['snatpool'] as String,
      sourceAddress: map['sourceAddress'] == null ? null : map['sourceAddress'] as bool,
      sslClientHello: map['sslClientHello'] == null ? null : map['sslClientHello'] as bool,
      sslServerHandshake: map['sslServerHandshake'] == null ? null : map['sslServerHandshake'] as bool,
      sslServerHello: map['sslServerHello'] == null ? null : map['sslServerHello'] as bool,
      sslSessionId: map['sslSessionId'] == null ? null : map['sslSessionId'] as bool,
      status: map['status'] == null ? null : map['status'] as int,
      tcl: map['tcl'] == null ? null : map['tcl'] as bool,
      tcpNagle: map['tcpNagle'] == null ? null : map['tcpNagle'] as bool,
      text: map['text'] == null ? null : map['text'] as String,
      timeout: map['timeout'] == null ? null : map['timeout'] as int,
      tmName: map['tmName'] == null ? null : map['tmName'] as String,
      uie: map['uie'] == null ? null : map['uie'] as bool,
      universal: map['universal'] == null ? null : map['universal'] as bool,
      value: map['value'] == null ? null : map['value'] as String,
      virtual: map['virtual'] == null ? null : map['virtual'] as String,
      vlan: map['vlan'] == null ? null : map['vlan'] as String,
      vlanId: map['vlanId'] == null ? null : map['vlanId'] as int,
      wam: map['wam'] == null ? null : map['wam'] as bool,
      write: map['write'] == null ? null : map['write'] as bool,
    );
  }
}


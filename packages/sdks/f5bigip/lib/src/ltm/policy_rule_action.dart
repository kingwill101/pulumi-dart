// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PolicyRuleAction {
  final pulumi.Input<String>? appService;
  final pulumi.Input<String>? application;
  final pulumi.Input<bool>? asm;
  final pulumi.Input<bool>? avr;
  final pulumi.Input<bool>? cache;
  final pulumi.Input<bool>? carp;
  final pulumi.Input<String>? category;
  final pulumi.Input<bool>? classify;
  final pulumi.Input<String>? clonePool;
  final pulumi.Input<int>? code;
  final pulumi.Input<bool>? compress;
  /// This action is set to `true` by default, it needs to be explicitly set to `false` for actions it conflicts with.
  final pulumi.Input<bool>? connection;
  final pulumi.Input<String>? content;
  final pulumi.Input<bool>? cookieHash;
  final pulumi.Input<bool>? cookieInsert;
  final pulumi.Input<bool>? cookiePassive;
  final pulumi.Input<bool>? cookieRewrite;
  final pulumi.Input<bool>? decompress;
  final pulumi.Input<bool>? defer;
  final pulumi.Input<bool>? destinationAddress;
  final pulumi.Input<bool>? disable;
  final pulumi.Input<String>? domain;
  final pulumi.Input<bool>? enable;
  final pulumi.Input<String>? expiry;
  final pulumi.Input<int>? expirySecs;
  final pulumi.Input<String>? expression;
  final pulumi.Input<String>? extension;
  final pulumi.Input<String>? facility;
  /// This action will affect forwarding.
  final pulumi.Input<bool>? forward;
  final pulumi.Input<String>? fromProfile;
  final pulumi.Input<bool>? hash;
  final pulumi.Input<String>? host;
  final pulumi.Input<bool>? http;
  final pulumi.Input<bool>? httpBasicAuth;
  final pulumi.Input<bool>? httpCookie;
  final pulumi.Input<bool>? httpHeader;
  final pulumi.Input<bool>? httpHost;
  final pulumi.Input<bool>? httpReferer;
  final pulumi.Input<bool>? httpReply;
  final pulumi.Input<bool>? httpSetCookie;
  final pulumi.Input<bool>? httpUri;
  final pulumi.Input<String>? ifile;
  final pulumi.Input<bool>? insert;
  final pulumi.Input<String>? internalVirtual;
  final pulumi.Input<String>? ipAddress;
  final pulumi.Input<String>? key;
  final pulumi.Input<bool>? l7dos;
  final pulumi.Input<int>? length;
  final pulumi.Input<String>? location;
  final pulumi.Input<bool>? log;
  final pulumi.Input<bool>? ltmPolicy;
  final pulumi.Input<String>? member;
  final pulumi.Input<String>? message;
  final pulumi.Input<String>? netmask;
  final pulumi.Input<String>? nexthop;
  final pulumi.Input<String>? node;
  final pulumi.Input<int>? offset;
  final pulumi.Input<String>? path;
  final pulumi.Input<bool>? pem;
  final pulumi.Input<bool>? persist;
  final pulumi.Input<bool>? pin;
  final pulumi.Input<String>? policy;
  /// This action will direct the stream to this pool.
  final pulumi.Input<String>? pool;
  final pulumi.Input<int>? port;
  final pulumi.Input<String>? priority;
  final pulumi.Input<String>? profile;
  final pulumi.Input<String>? protocol;
  final pulumi.Input<String>? queryString;
  final pulumi.Input<String>? rateclass;
  final pulumi.Input<bool>? redirect;
  final pulumi.Input<bool>? remove;
  final pulumi.Input<bool>? replace;
  final pulumi.Input<bool>? request;
  final pulumi.Input<bool>? requestAdapt;
  final pulumi.Input<bool>? reset;
  final pulumi.Input<bool>? response;
  final pulumi.Input<bool>? responseAdapt;
  final pulumi.Input<String>? scheme;
  final pulumi.Input<String>? script;
  final pulumi.Input<bool>? select;
  final pulumi.Input<bool>? serverSsl;
  final pulumi.Input<bool>? setVariable;
  final pulumi.Input<bool>? shutdown;
  final pulumi.Input<String>? snat;
  final pulumi.Input<String>? snatpool;
  final pulumi.Input<bool>? sourceAddress;
  final pulumi.Input<bool>? sslClientHello;
  final pulumi.Input<bool>? sslServerHandshake;
  final pulumi.Input<bool>? sslServerHello;
  final pulumi.Input<bool>? sslSessionId;
  final pulumi.Input<int>? status;
  final pulumi.Input<bool>? tcl;
  final pulumi.Input<bool>? tcpNagle;
  final pulumi.Input<String>? text;
  final pulumi.Input<int>? timeout;
  final pulumi.Input<String>? tmName;
  final pulumi.Input<bool>? uie;
  final pulumi.Input<bool>? universal;
  final pulumi.Input<String>? value;
  final pulumi.Input<String>? virtual;
  final pulumi.Input<String>? vlan;
  final pulumi.Input<int>? vlanId;
  final pulumi.Input<bool>? wam;
  final pulumi.Input<bool>? write;

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
      appService: map['appService'] == null ? null : (map['appService']! as String).input(),
      application: map['application'] == null ? null : (map['application']! as String).input(),
      asm: map['asm'] == null ? null : (map['asm']! as bool).input(),
      avr: map['avr'] == null ? null : (map['avr']! as bool).input(),
      cache: map['cache'] == null ? null : (map['cache']! as bool).input(),
      carp: map['carp'] == null ? null : (map['carp']! as bool).input(),
      category: map['category'] == null ? null : (map['category']! as String).input(),
      classify: map['classify'] == null ? null : (map['classify']! as bool).input(),
      clonePool: map['clonePool'] == null ? null : (map['clonePool']! as String).input(),
      code: map['code'] == null ? null : (map['code']! as int).input(),
      compress: map['compress'] == null ? null : (map['compress']! as bool).input(),
      connection: map['connection'] == null ? null : (map['connection']! as bool).input(),
      content: map['content'] == null ? null : (map['content']! as String).input(),
      cookieHash: map['cookieHash'] == null ? null : (map['cookieHash']! as bool).input(),
      cookieInsert: map['cookieInsert'] == null ? null : (map['cookieInsert']! as bool).input(),
      cookiePassive: map['cookiePassive'] == null ? null : (map['cookiePassive']! as bool).input(),
      cookieRewrite: map['cookieRewrite'] == null ? null : (map['cookieRewrite']! as bool).input(),
      decompress: map['decompress'] == null ? null : (map['decompress']! as bool).input(),
      defer: map['defer'] == null ? null : (map['defer']! as bool).input(),
      destinationAddress: map['destinationAddress'] == null ? null : (map['destinationAddress']! as bool).input(),
      disable: map['disable'] == null ? null : (map['disable']! as bool).input(),
      domain: map['domain'] == null ? null : (map['domain']! as String).input(),
      enable: map['enable'] == null ? null : (map['enable']! as bool).input(),
      expiry: map['expiry'] == null ? null : (map['expiry']! as String).input(),
      expirySecs: map['expirySecs'] == null ? null : (map['expirySecs']! as int).input(),
      expression: map['expression'] == null ? null : (map['expression']! as String).input(),
      extension: map['extension'] == null ? null : (map['extension']! as String).input(),
      facility: map['facility'] == null ? null : (map['facility']! as String).input(),
      forward: map['forward'] == null ? null : (map['forward']! as bool).input(),
      fromProfile: map['fromProfile'] == null ? null : (map['fromProfile']! as String).input(),
      hash: map['hash'] == null ? null : (map['hash']! as bool).input(),
      host: map['host'] == null ? null : (map['host']! as String).input(),
      http: map['http'] == null ? null : (map['http']! as bool).input(),
      httpBasicAuth: map['httpBasicAuth'] == null ? null : (map['httpBasicAuth']! as bool).input(),
      httpCookie: map['httpCookie'] == null ? null : (map['httpCookie']! as bool).input(),
      httpHeader: map['httpHeader'] == null ? null : (map['httpHeader']! as bool).input(),
      httpHost: map['httpHost'] == null ? null : (map['httpHost']! as bool).input(),
      httpReferer: map['httpReferer'] == null ? null : (map['httpReferer']! as bool).input(),
      httpReply: map['httpReply'] == null ? null : (map['httpReply']! as bool).input(),
      httpSetCookie: map['httpSetCookie'] == null ? null : (map['httpSetCookie']! as bool).input(),
      httpUri: map['httpUri'] == null ? null : (map['httpUri']! as bool).input(),
      ifile: map['ifile'] == null ? null : (map['ifile']! as String).input(),
      insert: map['insert'] == null ? null : (map['insert']! as bool).input(),
      internalVirtual: map['internalVirtual'] == null ? null : (map['internalVirtual']! as String).input(),
      ipAddress: map['ipAddress'] == null ? null : (map['ipAddress']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      l7dos: map['l7dos'] == null ? null : (map['l7dos']! as bool).input(),
      length: map['length'] == null ? null : (map['length']! as int).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      log: map['log'] == null ? null : (map['log']! as bool).input(),
      ltmPolicy: map['ltmPolicy'] == null ? null : (map['ltmPolicy']! as bool).input(),
      member: map['member'] == null ? null : (map['member']! as String).input(),
      message: map['message'] == null ? null : (map['message']! as String).input(),
      netmask: map['netmask'] == null ? null : (map['netmask']! as String).input(),
      nexthop: map['nexthop'] == null ? null : (map['nexthop']! as String).input(),
      node: map['node'] == null ? null : (map['node']! as String).input(),
      offset: map['offset'] == null ? null : (map['offset']! as int).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      pem: map['pem'] == null ? null : (map['pem']! as bool).input(),
      persist: map['persist'] == null ? null : (map['persist']! as bool).input(),
      pin: map['pin'] == null ? null : (map['pin']! as bool).input(),
      policy: map['policy'] == null ? null : (map['policy']! as String).input(),
      pool: map['pool'] == null ? null : (map['pool']! as String).input(),
      port: map['port'] == null ? null : (map['port']! as int).input(),
      priority: map['priority'] == null ? null : (map['priority']! as String).input(),
      profile: map['profile'] == null ? null : (map['profile']! as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol']! as String).input(),
      queryString: map['queryString'] == null ? null : (map['queryString']! as String).input(),
      rateclass: map['rateclass'] == null ? null : (map['rateclass']! as String).input(),
      redirect: map['redirect'] == null ? null : (map['redirect']! as bool).input(),
      remove: map['remove'] == null ? null : (map['remove']! as bool).input(),
      replace: map['replace'] == null ? null : (map['replace']! as bool).input(),
      request: map['request'] == null ? null : (map['request']! as bool).input(),
      requestAdapt: map['requestAdapt'] == null ? null : (map['requestAdapt']! as bool).input(),
      reset: map['reset'] == null ? null : (map['reset']! as bool).input(),
      response: map['response'] == null ? null : (map['response']! as bool).input(),
      responseAdapt: map['responseAdapt'] == null ? null : (map['responseAdapt']! as bool).input(),
      scheme: map['scheme'] == null ? null : (map['scheme']! as String).input(),
      script: map['script'] == null ? null : (map['script']! as String).input(),
      select: map['select'] == null ? null : (map['select']! as bool).input(),
      serverSsl: map['serverSsl'] == null ? null : (map['serverSsl']! as bool).input(),
      setVariable: map['setVariable'] == null ? null : (map['setVariable']! as bool).input(),
      shutdown: map['shutdown'] == null ? null : (map['shutdown']! as bool).input(),
      snat: map['snat'] == null ? null : (map['snat']! as String).input(),
      snatpool: map['snatpool'] == null ? null : (map['snatpool']! as String).input(),
      sourceAddress: map['sourceAddress'] == null ? null : (map['sourceAddress']! as bool).input(),
      sslClientHello: map['sslClientHello'] == null ? null : (map['sslClientHello']! as bool).input(),
      sslServerHandshake: map['sslServerHandshake'] == null ? null : (map['sslServerHandshake']! as bool).input(),
      sslServerHello: map['sslServerHello'] == null ? null : (map['sslServerHello']! as bool).input(),
      sslSessionId: map['sslSessionId'] == null ? null : (map['sslSessionId']! as bool).input(),
      status: map['status'] == null ? null : (map['status']! as int).input(),
      tcl: map['tcl'] == null ? null : (map['tcl']! as bool).input(),
      tcpNagle: map['tcpNagle'] == null ? null : (map['tcpNagle']! as bool).input(),
      text: map['text'] == null ? null : (map['text']! as String).input(),
      timeout: map['timeout'] == null ? null : (map['timeout']! as int).input(),
      tmName: map['tmName'] == null ? null : (map['tmName']! as String).input(),
      uie: map['uie'] == null ? null : (map['uie']! as bool).input(),
      universal: map['universal'] == null ? null : (map['universal']! as bool).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
      virtual: map['virtual'] == null ? null : (map['virtual']! as String).input(),
      vlan: map['vlan'] == null ? null : (map['vlan']! as String).input(),
      vlanId: map['vlanId'] == null ? null : (map['vlanId']! as int).input(),
      wam: map['wam'] == null ? null : (map['wam']! as bool).input(),
      write: map['write'] == null ? null : (map['write']! as bool).input(),
    );
  }
}


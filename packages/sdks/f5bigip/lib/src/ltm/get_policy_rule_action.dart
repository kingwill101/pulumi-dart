// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetPolicyRuleAction {
  final pulumi.Input<String> appService;
  final pulumi.Input<String> application;
  final pulumi.Input<bool> asm;
  final pulumi.Input<bool> avr;
  final pulumi.Input<bool> cache;
  final pulumi.Input<bool> carp;
  final pulumi.Input<String> category;
  final pulumi.Input<bool> classify;
  final pulumi.Input<String> clonePool;
  final pulumi.Input<int> code;
  final pulumi.Input<bool> compress;
  final pulumi.Input<bool> connection;
  final pulumi.Input<String> content;
  final pulumi.Input<bool> cookieHash;
  final pulumi.Input<bool> cookieInsert;
  final pulumi.Input<bool> cookiePassive;
  final pulumi.Input<bool> cookieRewrite;
  final pulumi.Input<bool> decompress;
  final pulumi.Input<bool> defer;
  final pulumi.Input<bool> destinationAddress;
  final pulumi.Input<bool> disable;
  final pulumi.Input<String> domain;
  final pulumi.Input<bool> enable;
  final pulumi.Input<String> expiry;
  final pulumi.Input<int> expirySecs;
  final pulumi.Input<String> expression;
  final pulumi.Input<String> extension;
  final pulumi.Input<String> facility;
  final pulumi.Input<bool>? forward;
  final pulumi.Input<String> fromProfile;
  final pulumi.Input<bool> hash;
  final pulumi.Input<String> host;
  final pulumi.Input<bool> http;
  final pulumi.Input<bool> httpBasicAuth;
  final pulumi.Input<bool> httpCookie;
  final pulumi.Input<bool> httpHeader;
  final pulumi.Input<bool>? httpHost;
  final pulumi.Input<bool> httpReferer;
  final pulumi.Input<bool> httpReply;
  final pulumi.Input<bool> httpSetCookie;
  final pulumi.Input<bool> httpUri;
  final pulumi.Input<String> ifile;
  final pulumi.Input<bool> insert;
  final pulumi.Input<String> internalVirtual;
  final pulumi.Input<String> ipAddress;
  final pulumi.Input<String> key;
  final pulumi.Input<bool> l7dos;
  final pulumi.Input<int> length;
  final pulumi.Input<String> location;
  final pulumi.Input<bool> log;
  final pulumi.Input<bool> ltmPolicy;
  final pulumi.Input<String> member;
  final pulumi.Input<String> message;
  final pulumi.Input<String> netmask;
  final pulumi.Input<String> nexthop;
  final pulumi.Input<String> node;
  final pulumi.Input<int> offset;
  final pulumi.Input<String> path;
  final pulumi.Input<bool> pem;
  final pulumi.Input<bool> persist;
  final pulumi.Input<bool> pin;
  final pulumi.Input<String> policy;
  final pulumi.Input<String> pool;
  final pulumi.Input<int> port;
  final pulumi.Input<String> priority;
  final pulumi.Input<String> profile;
  final pulumi.Input<String> protocol;
  final pulumi.Input<String> queryString;
  final pulumi.Input<String> rateclass;
  final pulumi.Input<bool> redirect;
  final pulumi.Input<bool> remove;
  final pulumi.Input<bool> replace;
  final pulumi.Input<bool> request;
  final pulumi.Input<bool> requestAdapt;
  final pulumi.Input<bool> reset;
  final pulumi.Input<bool> response;
  final pulumi.Input<bool> responseAdapt;
  final pulumi.Input<String> scheme;
  final pulumi.Input<String> script;
  final pulumi.Input<bool> select;
  final pulumi.Input<bool> serverSsl;
  final pulumi.Input<bool> setVariable;
  final pulumi.Input<bool> shutdown;
  final pulumi.Input<String> snat;
  final pulumi.Input<String> snatpool;
  final pulumi.Input<bool> sourceAddress;
  final pulumi.Input<bool> sslClientHello;
  final pulumi.Input<bool> sslServerHandshake;
  final pulumi.Input<bool> sslServerHello;
  final pulumi.Input<bool> sslSessionId;
  final pulumi.Input<int> status;
  final pulumi.Input<bool> tcl;
  final pulumi.Input<bool> tcpNagle;
  final pulumi.Input<String> text;
  final pulumi.Input<int> timeout;
  final pulumi.Input<String> tmName;
  final pulumi.Input<bool> uie;
  final pulumi.Input<bool> universal;
  final pulumi.Input<String> value;
  final pulumi.Input<String> virtual;
  final pulumi.Input<String> vlan;
  final pulumi.Input<int> vlanId;
  final pulumi.Input<bool> wam;
  final pulumi.Input<bool> write;

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
      appService: (map['appService'] as String).input(),
      application: (map['application'] as String).input(),
      asm: (map['asm'] as bool).input(),
      avr: (map['avr'] as bool).input(),
      cache: (map['cache'] as bool).input(),
      carp: (map['carp'] as bool).input(),
      category: (map['category'] as String).input(),
      classify: (map['classify'] as bool).input(),
      clonePool: (map['clonePool'] as String).input(),
      code: (map['code'] as int).input(),
      compress: (map['compress'] as bool).input(),
      connection: (map['connection'] as bool).input(),
      content: (map['content'] as String).input(),
      cookieHash: (map['cookieHash'] as bool).input(),
      cookieInsert: (map['cookieInsert'] as bool).input(),
      cookiePassive: (map['cookiePassive'] as bool).input(),
      cookieRewrite: (map['cookieRewrite'] as bool).input(),
      decompress: (map['decompress'] as bool).input(),
      defer: (map['defer'] as bool).input(),
      destinationAddress: (map['destinationAddress'] as bool).input(),
      disable: (map['disable'] as bool).input(),
      domain: (map['domain'] as String).input(),
      enable: (map['enable'] as bool).input(),
      expiry: (map['expiry'] as String).input(),
      expirySecs: (map['expirySecs'] as int).input(),
      expression: (map['expression'] as String).input(),
      extension: (map['extension'] as String).input(),
      facility: (map['facility'] as String).input(),
      forward: map['forward'] == null ? null : (map['forward'] as bool).input(),
      fromProfile: (map['fromProfile'] as String).input(),
      hash: (map['hash'] as bool).input(),
      host: (map['host'] as String).input(),
      http: (map['http'] as bool).input(),
      httpBasicAuth: (map['httpBasicAuth'] as bool).input(),
      httpCookie: (map['httpCookie'] as bool).input(),
      httpHeader: (map['httpHeader'] as bool).input(),
      httpHost: map['httpHost'] == null ? null : (map['httpHost'] as bool).input(),
      httpReferer: (map['httpReferer'] as bool).input(),
      httpReply: (map['httpReply'] as bool).input(),
      httpSetCookie: (map['httpSetCookie'] as bool).input(),
      httpUri: (map['httpUri'] as bool).input(),
      ifile: (map['ifile'] as String).input(),
      insert: (map['insert'] as bool).input(),
      internalVirtual: (map['internalVirtual'] as String).input(),
      ipAddress: (map['ipAddress'] as String).input(),
      key: (map['key'] as String).input(),
      l7dos: (map['l7dos'] as bool).input(),
      length: (map['length'] as int).input(),
      location: (map['location'] as String).input(),
      log: (map['log'] as bool).input(),
      ltmPolicy: (map['ltmPolicy'] as bool).input(),
      member: (map['member'] as String).input(),
      message: (map['message'] as String).input(),
      netmask: (map['netmask'] as String).input(),
      nexthop: (map['nexthop'] as String).input(),
      node: (map['node'] as String).input(),
      offset: (map['offset'] as int).input(),
      path: (map['path'] as String).input(),
      pem: (map['pem'] as bool).input(),
      persist: (map['persist'] as bool).input(),
      pin: (map['pin'] as bool).input(),
      policy: (map['policy'] as String).input(),
      pool: (map['pool'] as String).input(),
      port: (map['port'] as int).input(),
      priority: (map['priority'] as String).input(),
      profile: (map['profile'] as String).input(),
      protocol: (map['protocol'] as String).input(),
      queryString: (map['queryString'] as String).input(),
      rateclass: (map['rateclass'] as String).input(),
      redirect: (map['redirect'] as bool).input(),
      remove: (map['remove'] as bool).input(),
      replace: (map['replace'] as bool).input(),
      request: (map['request'] as bool).input(),
      requestAdapt: (map['requestAdapt'] as bool).input(),
      reset: (map['reset'] as bool).input(),
      response: (map['response'] as bool).input(),
      responseAdapt: (map['responseAdapt'] as bool).input(),
      scheme: (map['scheme'] as String).input(),
      script: (map['script'] as String).input(),
      select: (map['select'] as bool).input(),
      serverSsl: (map['serverSsl'] as bool).input(),
      setVariable: (map['setVariable'] as bool).input(),
      shutdown: (map['shutdown'] as bool).input(),
      snat: (map['snat'] as String).input(),
      snatpool: (map['snatpool'] as String).input(),
      sourceAddress: (map['sourceAddress'] as bool).input(),
      sslClientHello: (map['sslClientHello'] as bool).input(),
      sslServerHandshake: (map['sslServerHandshake'] as bool).input(),
      sslServerHello: (map['sslServerHello'] as bool).input(),
      sslSessionId: (map['sslSessionId'] as bool).input(),
      status: (map['status'] as int).input(),
      tcl: (map['tcl'] as bool).input(),
      tcpNagle: (map['tcpNagle'] as bool).input(),
      text: (map['text'] as String).input(),
      timeout: (map['timeout'] as int).input(),
      tmName: (map['tmName'] as String).input(),
      uie: (map['uie'] as bool).input(),
      universal: (map['universal'] as bool).input(),
      value: (map['value'] as String).input(),
      virtual: (map['virtual'] as String).input(),
      vlan: (map['vlan'] as String).input(),
      vlanId: (map['vlanId'] as int).input(),
      wam: (map['wam'] as bool).input(),
      write: (map['write'] as bool).input(),
    );
  }
}


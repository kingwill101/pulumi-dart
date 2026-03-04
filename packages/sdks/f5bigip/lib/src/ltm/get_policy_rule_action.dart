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
      appService: pulumi.Input.fromValue(map['appService'] as String),
      application: pulumi.Input.fromValue(map['application'] as String),
      asm: pulumi.Input.fromValue(map['asm'] as bool),
      avr: pulumi.Input.fromValue(map['avr'] as bool),
      cache: pulumi.Input.fromValue(map['cache'] as bool),
      carp: pulumi.Input.fromValue(map['carp'] as bool),
      category: pulumi.Input.fromValue(map['category'] as String),
      classify: pulumi.Input.fromValue(map['classify'] as bool),
      clonePool: pulumi.Input.fromValue(map['clonePool'] as String),
      code: pulumi.Input.fromValue(map['code'] as int),
      compress: pulumi.Input.fromValue(map['compress'] as bool),
      connection: pulumi.Input.fromValue(map['connection'] as bool),
      content: pulumi.Input.fromValue(map['content'] as String),
      cookieHash: pulumi.Input.fromValue(map['cookieHash'] as bool),
      cookieInsert: pulumi.Input.fromValue(map['cookieInsert'] as bool),
      cookiePassive: pulumi.Input.fromValue(map['cookiePassive'] as bool),
      cookieRewrite: pulumi.Input.fromValue(map['cookieRewrite'] as bool),
      decompress: pulumi.Input.fromValue(map['decompress'] as bool),
      defer: pulumi.Input.fromValue(map['defer'] as bool),
      destinationAddress: pulumi.Input.fromValue(
        map['destinationAddress'] as bool,
      ),
      disable: pulumi.Input.fromValue(map['disable'] as bool),
      domain: pulumi.Input.fromValue(map['domain'] as String),
      enable: pulumi.Input.fromValue(map['enable'] as bool),
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      expirySecs: pulumi.Input.fromValue(map['expirySecs'] as int),
      expression: pulumi.Input.fromValue(map['expression'] as String),
      extension: pulumi.Input.fromValue(map['extension'] as String),
      facility: pulumi.Input.fromValue(map['facility'] as String),
      forward: (() {
        final guardedValue = map['forward'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fromProfile: pulumi.Input.fromValue(map['fromProfile'] as String),
      hash: pulumi.Input.fromValue(map['hash'] as bool),
      host: pulumi.Input.fromValue(map['host'] as String),
      http: pulumi.Input.fromValue(map['http'] as bool),
      httpBasicAuth: pulumi.Input.fromValue(map['httpBasicAuth'] as bool),
      httpCookie: pulumi.Input.fromValue(map['httpCookie'] as bool),
      httpHeader: pulumi.Input.fromValue(map['httpHeader'] as bool),
      httpHost: (() {
        final guardedValue = map['httpHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpReferer: pulumi.Input.fromValue(map['httpReferer'] as bool),
      httpReply: pulumi.Input.fromValue(map['httpReply'] as bool),
      httpSetCookie: pulumi.Input.fromValue(map['httpSetCookie'] as bool),
      httpUri: pulumi.Input.fromValue(map['httpUri'] as bool),
      ifile: pulumi.Input.fromValue(map['ifile'] as String),
      insert: pulumi.Input.fromValue(map['insert'] as bool),
      internalVirtual: pulumi.Input.fromValue(map['internalVirtual'] as String),
      ipAddress: pulumi.Input.fromValue(map['ipAddress'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      l7dos: pulumi.Input.fromValue(map['l7dos'] as bool),
      length: pulumi.Input.fromValue(map['length'] as int),
      location: pulumi.Input.fromValue(map['location'] as String),
      log: pulumi.Input.fromValue(map['log'] as bool),
      ltmPolicy: pulumi.Input.fromValue(map['ltmPolicy'] as bool),
      member: pulumi.Input.fromValue(map['member'] as String),
      message: pulumi.Input.fromValue(map['message'] as String),
      netmask: pulumi.Input.fromValue(map['netmask'] as String),
      nexthop: pulumi.Input.fromValue(map['nexthop'] as String),
      node: pulumi.Input.fromValue(map['node'] as String),
      offset: pulumi.Input.fromValue(map['offset'] as int),
      path: pulumi.Input.fromValue(map['path'] as String),
      pem: pulumi.Input.fromValue(map['pem'] as bool),
      persist: pulumi.Input.fromValue(map['persist'] as bool),
      pin: pulumi.Input.fromValue(map['pin'] as bool),
      policy: pulumi.Input.fromValue(map['policy'] as String),
      pool: pulumi.Input.fromValue(map['pool'] as String),
      port: pulumi.Input.fromValue(map['port'] as int),
      priority: pulumi.Input.fromValue(map['priority'] as String),
      profile: pulumi.Input.fromValue(map['profile'] as String),
      protocol: pulumi.Input.fromValue(map['protocol'] as String),
      queryString: pulumi.Input.fromValue(map['queryString'] as String),
      rateclass: pulumi.Input.fromValue(map['rateclass'] as String),
      redirect: pulumi.Input.fromValue(map['redirect'] as bool),
      remove: pulumi.Input.fromValue(map['remove'] as bool),
      replace: pulumi.Input.fromValue(map['replace'] as bool),
      request: pulumi.Input.fromValue(map['request'] as bool),
      requestAdapt: pulumi.Input.fromValue(map['requestAdapt'] as bool),
      reset: pulumi.Input.fromValue(map['reset'] as bool),
      response: pulumi.Input.fromValue(map['response'] as bool),
      responseAdapt: pulumi.Input.fromValue(map['responseAdapt'] as bool),
      scheme: pulumi.Input.fromValue(map['scheme'] as String),
      script: pulumi.Input.fromValue(map['script'] as String),
      select: pulumi.Input.fromValue(map['select'] as bool),
      serverSsl: pulumi.Input.fromValue(map['serverSsl'] as bool),
      setVariable: pulumi.Input.fromValue(map['setVariable'] as bool),
      shutdown: pulumi.Input.fromValue(map['shutdown'] as bool),
      snat: pulumi.Input.fromValue(map['snat'] as String),
      snatpool: pulumi.Input.fromValue(map['snatpool'] as String),
      sourceAddress: pulumi.Input.fromValue(map['sourceAddress'] as bool),
      sslClientHello: pulumi.Input.fromValue(map['sslClientHello'] as bool),
      sslServerHandshake: pulumi.Input.fromValue(
        map['sslServerHandshake'] as bool,
      ),
      sslServerHello: pulumi.Input.fromValue(map['sslServerHello'] as bool),
      sslSessionId: pulumi.Input.fromValue(map['sslSessionId'] as bool),
      status: pulumi.Input.fromValue(map['status'] as int),
      tcl: pulumi.Input.fromValue(map['tcl'] as bool),
      tcpNagle: pulumi.Input.fromValue(map['tcpNagle'] as bool),
      text: pulumi.Input.fromValue(map['text'] as String),
      timeout: pulumi.Input.fromValue(map['timeout'] as int),
      tmName: pulumi.Input.fromValue(map['tmName'] as String),
      uie: pulumi.Input.fromValue(map['uie'] as bool),
      universal: pulumi.Input.fromValue(map['universal'] as bool),
      value: pulumi.Input.fromValue(map['value'] as String),
      virtual: pulumi.Input.fromValue(map['virtual'] as String),
      vlan: pulumi.Input.fromValue(map['vlan'] as String),
      vlanId: pulumi.Input.fromValue(map['vlanId'] as int),
      wam: pulumi.Input.fromValue(map['wam'] as bool),
      write: pulumi.Input.fromValue(map['write'] as bool),
    );
  }
}

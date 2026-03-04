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
      appService: (() {
        final guardedValue = map['appService'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      application: (() {
        final guardedValue = map['application'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      asm: (() {
        final guardedValue = map['asm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      avr: (() {
        final guardedValue = map['avr'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cache: (() {
        final guardedValue = map['cache'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      carp: (() {
        final guardedValue = map['carp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      category: (() {
        final guardedValue = map['category'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      classify: (() {
        final guardedValue = map['classify'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      clonePool: (() {
        final guardedValue = map['clonePool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      code: (() {
        final guardedValue = map['code'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      compress: (() {
        final guardedValue = map['compress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      connection: (() {
        final guardedValue = map['connection'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      content: (() {
        final guardedValue = map['content'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cookieHash: (() {
        final guardedValue = map['cookieHash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cookieInsert: (() {
        final guardedValue = map['cookieInsert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cookiePassive: (() {
        final guardedValue = map['cookiePassive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      cookieRewrite: (() {
        final guardedValue = map['cookieRewrite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      decompress: (() {
        final guardedValue = map['decompress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      defer: (() {
        final guardedValue = map['defer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      destinationAddress: (() {
        final guardedValue = map['destinationAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      disable: (() {
        final guardedValue = map['disable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enable: (() {
        final guardedValue = map['enable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      expiry: (() {
        final guardedValue = map['expiry'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      expirySecs: (() {
        final guardedValue = map['expirySecs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      expression: (() {
        final guardedValue = map['expression'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      extension: (() {
        final guardedValue = map['extension'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      facility: (() {
        final guardedValue = map['facility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      forward: (() {
        final guardedValue = map['forward'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      fromProfile: (() {
        final guardedValue = map['fromProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      hash: (() {
        final guardedValue = map['hash'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      host: (() {
        final guardedValue = map['host'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      http: (() {
        final guardedValue = map['http'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpBasicAuth: (() {
        final guardedValue = map['httpBasicAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpCookie: (() {
        final guardedValue = map['httpCookie'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpHeader: (() {
        final guardedValue = map['httpHeader'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpHost: (() {
        final guardedValue = map['httpHost'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpReferer: (() {
        final guardedValue = map['httpReferer'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpReply: (() {
        final guardedValue = map['httpReply'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpSetCookie: (() {
        final guardedValue = map['httpSetCookie'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      httpUri: (() {
        final guardedValue = map['httpUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ifile: (() {
        final guardedValue = map['ifile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      insert: (() {
        final guardedValue = map['insert'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      internalVirtual: (() {
        final guardedValue = map['internalVirtual'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ipAddress: (() {
        final guardedValue = map['ipAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      l7dos: (() {
        final guardedValue = map['l7dos'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      length: (() {
        final guardedValue = map['length'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      log: (() {
        final guardedValue = map['log'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      ltmPolicy: (() {
        final guardedValue = map['ltmPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      member: (() {
        final guardedValue = map['member'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      message: (() {
        final guardedValue = map['message'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      netmask: (() {
        final guardedValue = map['netmask'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nexthop: (() {
        final guardedValue = map['nexthop'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      node: (() {
        final guardedValue = map['node'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      offset: (() {
        final guardedValue = map['offset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      path: (() {
        final guardedValue = map['path'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pem: (() {
        final guardedValue = map['pem'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      persist: (() {
        final guardedValue = map['persist'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      pin: (() {
        final guardedValue = map['pin'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      policy: (() {
        final guardedValue = map['policy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      pool: (() {
        final guardedValue = map['pool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      priority: (() {
        final guardedValue = map['priority'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profile: (() {
        final guardedValue = map['profile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      queryString: (() {
        final guardedValue = map['queryString'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      rateclass: (() {
        final guardedValue = map['rateclass'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      redirect: (() {
        final guardedValue = map['redirect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      remove: (() {
        final guardedValue = map['remove'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      replace: (() {
        final guardedValue = map['replace'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      request: (() {
        final guardedValue = map['request'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      requestAdapt: (() {
        final guardedValue = map['requestAdapt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      reset: (() {
        final guardedValue = map['reset'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      response: (() {
        final guardedValue = map['response'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      responseAdapt: (() {
        final guardedValue = map['responseAdapt'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      scheme: (() {
        final guardedValue = map['scheme'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      script: (() {
        final guardedValue = map['script'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      select: (() {
        final guardedValue = map['select'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      serverSsl: (() {
        final guardedValue = map['serverSsl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      setVariable: (() {
        final guardedValue = map['setVariable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      shutdown: (() {
        final guardedValue = map['shutdown'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      snat: (() {
        final guardedValue = map['snat'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      snatpool: (() {
        final guardedValue = map['snatpool'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sourceAddress: (() {
        final guardedValue = map['sourceAddress'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sslClientHello: (() {
        final guardedValue = map['sslClientHello'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sslServerHandshake: (() {
        final guardedValue = map['sslServerHandshake'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sslServerHello: (() {
        final guardedValue = map['sslServerHello'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sslSessionId: (() {
        final guardedValue = map['sslSessionId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tcl: (() {
        final guardedValue = map['tcl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      tcpNagle: (() {
        final guardedValue = map['tcpNagle'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      tmName: (() {
        final guardedValue = map['tmName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      uie: (() {
        final guardedValue = map['uie'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      universal: (() {
        final guardedValue = map['universal'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      virtual: (() {
        final guardedValue = map['virtual'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vlan: (() {
        final guardedValue = map['vlan'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      vlanId: (() {
        final guardedValue = map['vlanId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      wam: (() {
        final guardedValue = map['wam'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      write: (() {
        final guardedValue = map['write'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}

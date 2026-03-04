// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ltm_monitor_monitor_args_doc}
/// The set of arguments for Monitor.
/// {@endtemplate}
/// {@macro pulumi_ltm_monitor_monitor_args_doc}
class MonitorArgs {
  /// Specifies whether adaptive response time monitoring is enabled for this monitor. The default is `disabled`.
  final pulumi.Input<String>? adaptive;

  /// Specifies the absolute number of milliseconds that may not be exceeded by a monitor probe, regardless of Allowed Divergence.
  final pulumi.Input<int>? adaptiveLimit;

  /// Specifies the location in the LDAP tree from which the monitor starts the health check
  final pulumi.Input<String>? base;

  /// Specifies whether the system will query the LDAP servers pointed to by any referrals in the query results.
  final pulumi.Input<String>? chaseReferrals;

  /// Specifies, when enabled, that the SSL options setting (in OpenSSL) is set to ALL. Accepts 'enabled' or 'disabled' values, the default value is 'enabled'.
  final pulumi.Input<String>? compatibility;

  /// Custom parent monitor for the system to use for setting initial values for the new monitor.
  final pulumi.Input<String>? customParent;

  /// Specifies the database in which the user is created
  final pulumi.Input<String>? database;

  /// Specify an alias address for monitoring
  final pulumi.Input<String>? destination;

  /// Specifies the domain name to check, for example, Domain is allowed only in case of Parent as /Common/smtp.
  final pulumi.Input<String>? domain;

  /// Specifies the full path and file name of the file that the system attempts to download. The health check is successful if the system can download the file.
  final pulumi.Input<String>? filename;

  /// Specifies an LDAP key for which the monitor searches
  final pulumi.Input<String>? filter;

  /// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown,value of `interval` should be always less than `timeout`. Default is `5`.
  final pulumi.Input<int>? interval;

  /// Displays the differentiated services code point (DSCP).The default is `0 (zero)`.
  final pulumi.Input<int>? ipDscp;

  /// Specifies whether the target must include attributes in its response to be considered up. The options are no (Specifies that the system performs only a one-level search (based on the Filter setting), and does not require that the target returns any attributes.) and yes (Specifies that the system performs a sub-tree search, and if the target returns no attributes, the target is considered down.)
  final pulumi.Input<String>? mandatoryAttributes;

  /// Specifies whether the system automatically changes the status of a resource to Enabled at the next successful monitor check.
  final pulumi.Input<String>? manualResume;

  /// Specifies the data transfer process (DTP) mode. The default value is passive. The options are passive (Specifies that the monitor sends a data transfer request to the FTP server. When the FTP server receives the request, the FTP server then initiates and establishes the data connection.) and active (Specifies that the monitor initiates and establishes the data connection with the FTP server.).
  final pulumi.Input<String>? mode;

  /// Specifies the Name of the LTM Monitor.Name of Monitor should be full path,full path is the combination of the `partition + monitor name`,For ex:`/Common/test-ltm-monitor`.
  final pulumi.Input<String> name;

  /// Parent monitor for the system to use for setting initial values for the new monitor.
  final pulumi.Input<String> parent;

  /// Specifies the password if the monitored target requires authentication
  final pulumi.Input<String>? password;

  /// Specifies the regular expression representing the text string that the monitor looks for in the returned resource.
  final pulumi.Input<String>? receive;

  /// The system marks the node or pool member disabled when its response matches Receive Disable String but not Receive String.
  final pulumi.Input<String>? receiveDisable;

  /// Instructs the system to mark the target resource down when the test is successful.
  final pulumi.Input<String>? reverse;

  /// Specifies the secure communications protocol that the monitor uses to communicate with the target. The options are none (Specifies that the system does not use a security protocol for communications with the target.), ssl (Specifies that the system uses the SSL protocol for communications with the target.), and tls (Specifies that the system uses the TLS protocol for communications with the target.)
  final pulumi.Input<String>? security;

  /// Specifies the text string that the monitor sends to the target object.
  final pulumi.Input<String>? send;

  /// Specifies the ssl profile for the monitor. It only makes sense when the parent is `/Common/https`
  final pulumi.Input<String>? sslProfile;

  /// Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to up.
  final pulumi.Input<int>? timeUntilUp;

  /// Specifies the number of seconds the target has in which to respond to the monitor request. The default is `16` seconds
  final pulumi.Input<int>? timeout;

  /// Specifies whether the monitor operates in transparent mode.
  final pulumi.Input<String>? transparent;

  /// Specifies the interval for the system to use to perform the health check when a resource is up. The default is `0(Disabled)`
  final pulumi.Input<int>? upInterval;

  /// Specifies the user name if the monitored target requires authentication
  final pulumi.Input<String>? username;

  /// Creates a new [MonitorArgs].
  /// [adaptive] Specifies whether adaptive response time monitoring is enabled for this monitor. The default is `disabled`.
  /// [adaptiveLimit] Specifies the absolute number of milliseconds that may not be exceeded by a monitor probe, regardless of Allowed Divergence.
  /// [base] Specifies the location in the LDAP tree from which the monitor starts the health check
  /// [chaseReferrals] Specifies whether the system will query the LDAP servers pointed to by any referrals in the query results.
  /// [compatibility] Specifies, when enabled, that the SSL options setting (in OpenSSL) is set to ALL. Accepts 'enabled' or 'disabled' values, the default value is 'enabled'.
  /// [customParent] Custom parent monitor for the system to use for setting initial values for the new monitor.
  /// [database] Specifies the database in which the user is created
  /// [destination] Specify an alias address for monitoring
  /// [domain] Specifies the domain name to check, for example, Domain is allowed only in case of Parent as /Common/smtp.
  /// [filename] Specifies the full path and file name of the file that the system attempts to download. The health check is successful if the system can download the file.
  /// [filter] Specifies an LDAP key for which the monitor searches
  /// [interval] Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown,value of `interval` should be always less than `timeout`. Default is `5`.
  /// [ipDscp] Displays the differentiated services code point (DSCP).The default is `0 (zero)`.
  /// [mandatoryAttributes] Specifies whether the target must include attributes in its response to be considered up. The options are no (Specifies that the system performs only a one-level search (based on the Filter setting), and does not require that the target returns any attributes.) and yes (Specifies that the system performs a sub-tree search, and if the target returns no attributes, the target is considered down.)
  /// [manualResume] Specifies whether the system automatically changes the status of a resource to Enabled at the next successful monitor check.
  /// [mode] Specifies the data transfer process (DTP) mode. The default value is passive. The options are passive (Specifies that the monitor sends a data transfer request to the FTP server. When the FTP server receives the request, the FTP server then initiates and establishes the data connection.) and active (Specifies that the monitor initiates and establishes the data connection with the FTP server.).
  /// [name] Specifies the Name of the LTM Monitor.Name of Monitor should be full path,full path is the combination of the `partition + monitor name`,For ex:`/Common/test-ltm-monitor`.
  /// [parent] Parent monitor for the system to use for setting initial values for the new monitor.
  /// [password] Specifies the password if the monitored target requires authentication
  /// [receive] Specifies the regular expression representing the text string that the monitor looks for in the returned resource.
  /// [receiveDisable] The system marks the node or pool member disabled when its response matches Receive Disable String but not Receive String.
  /// [reverse] Instructs the system to mark the target resource down when the test is successful.
  /// [security] Specifies the secure communications protocol that the monitor uses to communicate with the target. The options are none (Specifies that the system does not use a security protocol for communications with the target.), ssl (Specifies that the system uses the SSL protocol for communications with the target.), and tls (Specifies that the system uses the TLS protocol for communications with the target.)
  /// [send] Specifies the text string that the monitor sends to the target object.
  /// [sslProfile] Specifies the ssl profile for the monitor. It only makes sense when the parent is `/Common/https`
  /// [timeUntilUp] Specifies the number of seconds to wait after a resource first responds correctly to the monitor before setting the resource to up.
  /// [timeout] Specifies the number of seconds the target has in which to respond to the monitor request. The default is `16` seconds
  /// [transparent] Specifies whether the monitor operates in transparent mode.
  /// [upInterval] Specifies the interval for the system to use to perform the health check when a resource is up. The default is `0(Disabled)`
  /// [username] Specifies the user name if the monitored target requires authentication
  MonitorArgs({
    this.adaptive,
    this.adaptiveLimit,
    this.base,
    this.chaseReferrals,
    this.compatibility,
    this.customParent,
    this.database,
    this.destination,
    this.domain,
    this.filename,
    this.filter,
    this.interval,
    this.ipDscp,
    this.mandatoryAttributes,
    this.manualResume,
    this.mode,
    required this.name,
    required this.parent,
    this.password,
    this.receive,
    this.receiveDisable,
    this.reverse,
    this.security,
    this.send,
    this.sslProfile,
    this.timeUntilUp,
    this.timeout,
    this.transparent,
    this.upInterval,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptive': ?adaptive,
      'adaptiveLimit': ?adaptiveLimit,
      'base': ?base,
      'chaseReferrals': ?chaseReferrals,
      'compatibility': ?compatibility,
      'customParent': ?customParent,
      'database': ?database,
      'destination': ?destination,
      'domain': ?domain,
      'filename': ?filename,
      'filter': ?filter,
      'interval': ?interval,
      'ipDscp': ?ipDscp,
      'mandatoryAttributes': ?mandatoryAttributes,
      'manualResume': ?manualResume,
      'mode': ?mode,
      'name': name,
      'parent': parent,
      'password': ?password,
      'receive': ?receive,
      'receiveDisable': ?receiveDisable,
      'reverse': ?reverse,
      'security': ?security,
      'send': ?send,
      'sslProfile': ?sslProfile,
      'timeUntilUp': ?timeUntilUp,
      'timeout': ?timeout,
      'transparent': ?transparent,
      'upInterval': ?upInterval,
      'username': ?username,
    };
  }

  factory MonitorArgs.fromMap(Map<String, dynamic> map) {
    return MonitorArgs(
      adaptive: (() {
        final guardedValue = map['adaptive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      adaptiveLimit: (() {
        final guardedValue = map['adaptiveLimit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      base: (() {
        final guardedValue = map['base'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      chaseReferrals: (() {
        final guardedValue = map['chaseReferrals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      compatibility: (() {
        final guardedValue = map['compatibility'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customParent: (() {
        final guardedValue = map['customParent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      database: (() {
        final guardedValue = map['database'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      domain: (() {
        final guardedValue = map['domain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filename: (() {
        final guardedValue = map['filename'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      filter: (() {
        final guardedValue = map['filter'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      interval: (() {
        final guardedValue = map['interval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      ipDscp: (() {
        final guardedValue = map['ipDscp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mandatoryAttributes: (() {
        final guardedValue = map['mandatoryAttributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      manualResume: (() {
        final guardedValue = map['manualResume'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mode: (() {
        final guardedValue = map['mode'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      parent: pulumi.Input.fromValue(map['parent'] as String),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      receive: (() {
        final guardedValue = map['receive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      receiveDisable: (() {
        final guardedValue = map['receiveDisable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      reverse: (() {
        final guardedValue = map['reverse'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      security: (() {
        final guardedValue = map['security'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      send: (() {
        final guardedValue = map['send'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslProfile: (() {
        final guardedValue = map['sslProfile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeUntilUp: (() {
        final guardedValue = map['timeUntilUp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      timeout: (() {
        final guardedValue = map['timeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      transparent: (() {
        final guardedValue = map['transparent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      upInterval: (() {
        final guardedValue = map['upInterval'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

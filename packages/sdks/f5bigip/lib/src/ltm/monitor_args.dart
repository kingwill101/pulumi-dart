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
    pulumi.Output<String>? adaptive,
    pulumi.Output<int>? adaptiveLimit,
    pulumi.Output<String>? base,
    pulumi.Output<String>? chaseReferrals,
    pulumi.Output<String>? compatibility,
    pulumi.Output<String>? customParent,
    pulumi.Output<String>? database,
    pulumi.Output<String>? destination,
    pulumi.Output<String>? domain,
    pulumi.Output<String>? filename,
    pulumi.Output<String>? filter,
    pulumi.Output<int>? interval,
    pulumi.Output<int>? ipDscp,
    pulumi.Output<String>? mandatoryAttributes,
    pulumi.Output<String>? manualResume,
    pulumi.Output<String>? mode,
    required pulumi.Output<String> name,
    required pulumi.Output<String> parent,
    pulumi.Output<String>? password,
    pulumi.Output<String>? receive,
    pulumi.Output<String>? receiveDisable,
    pulumi.Output<String>? reverse,
    pulumi.Output<String>? security,
    pulumi.Output<String>? send,
    pulumi.Output<String>? sslProfile,
    pulumi.Output<int>? timeUntilUp,
    pulumi.Output<int>? timeout,
    pulumi.Output<String>? transparent,
    pulumi.Output<int>? upInterval,
    pulumi.Output<String>? username,
  }) :
      adaptive = pulumi.Input.asOptionalInput<String>(adaptive),
      adaptiveLimit = pulumi.Input.asOptionalInput<int>(adaptiveLimit),
      base = pulumi.Input.asOptionalInput<String>(base),
      chaseReferrals = pulumi.Input.asOptionalInput<String>(chaseReferrals),
      compatibility = pulumi.Input.asOptionalInput<String>(compatibility),
      customParent = pulumi.Input.asOptionalInput<String>(customParent),
      database = pulumi.Input.asOptionalInput<String>(database),
      destination = pulumi.Input.asOptionalInput<String>(destination),
      domain = pulumi.Input.asOptionalInput<String>(domain),
      filename = pulumi.Input.asOptionalInput<String>(filename),
      filter = pulumi.Input.asOptionalInput<String>(filter),
      interval = pulumi.Input.asOptionalInput<int>(interval),
      ipDscp = pulumi.Input.asOptionalInput<int>(ipDscp),
      mandatoryAttributes = pulumi.Input.asOptionalInput<String>(mandatoryAttributes),
      manualResume = pulumi.Input.asOptionalInput<String>(manualResume),
      mode = pulumi.Input.asOptionalInput<String>(mode),
      name = pulumi.Input.asInput<String>(name),
      parent = pulumi.Input.asInput<String>(parent),
      password = pulumi.Input.asOptionalInput<String>(password),
      receive = pulumi.Input.asOptionalInput<String>(receive),
      receiveDisable = pulumi.Input.asOptionalInput<String>(receiveDisable),
      reverse = pulumi.Input.asOptionalInput<String>(reverse),
      security = pulumi.Input.asOptionalInput<String>(security),
      send = pulumi.Input.asOptionalInput<String>(send),
      sslProfile = pulumi.Input.asOptionalInput<String>(sslProfile),
      timeUntilUp = pulumi.Input.asOptionalInput<int>(timeUntilUp),
      timeout = pulumi.Input.asOptionalInput<int>(timeout),
      transparent = pulumi.Input.asOptionalInput<String>(transparent),
      upInterval = pulumi.Input.asOptionalInput<int>(upInterval),
      username = pulumi.Input.asOptionalInput<String>(username);

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
      adaptive: map['adaptive'] == null ? null : pulumi.Output.create<String>(map['adaptive'] as String),
      adaptiveLimit: map['adaptiveLimit'] == null ? null : pulumi.Output.create<int>(map['adaptiveLimit'] as int),
      base: map['base'] == null ? null : pulumi.Output.create<String>(map['base'] as String),
      chaseReferrals: map['chaseReferrals'] == null ? null : pulumi.Output.create<String>(map['chaseReferrals'] as String),
      compatibility: map['compatibility'] == null ? null : pulumi.Output.create<String>(map['compatibility'] as String),
      customParent: map['customParent'] == null ? null : pulumi.Output.create<String>(map['customParent'] as String),
      database: map['database'] == null ? null : pulumi.Output.create<String>(map['database'] as String),
      destination: map['destination'] == null ? null : pulumi.Output.create<String>(map['destination'] as String),
      domain: map['domain'] == null ? null : pulumi.Output.create<String>(map['domain'] as String),
      filename: map['filename'] == null ? null : pulumi.Output.create<String>(map['filename'] as String),
      filter: map['filter'] == null ? null : pulumi.Output.create<String>(map['filter'] as String),
      interval: map['interval'] == null ? null : pulumi.Output.create<int>(map['interval'] as int),
      ipDscp: map['ipDscp'] == null ? null : pulumi.Output.create<int>(map['ipDscp'] as int),
      mandatoryAttributes: map['mandatoryAttributes'] == null ? null : pulumi.Output.create<String>(map['mandatoryAttributes'] as String),
      manualResume: map['manualResume'] == null ? null : pulumi.Output.create<String>(map['manualResume'] as String),
      mode: map['mode'] == null ? null : pulumi.Output.create<String>(map['mode'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      parent: pulumi.Output.create<String>(map['parent'] as String),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      receive: map['receive'] == null ? null : pulumi.Output.create<String>(map['receive'] as String),
      receiveDisable: map['receiveDisable'] == null ? null : pulumi.Output.create<String>(map['receiveDisable'] as String),
      reverse: map['reverse'] == null ? null : pulumi.Output.create<String>(map['reverse'] as String),
      security: map['security'] == null ? null : pulumi.Output.create<String>(map['security'] as String),
      send: map['send'] == null ? null : pulumi.Output.create<String>(map['send'] as String),
      sslProfile: map['sslProfile'] == null ? null : pulumi.Output.create<String>(map['sslProfile'] as String),
      timeUntilUp: map['timeUntilUp'] == null ? null : pulumi.Output.create<int>(map['timeUntilUp'] as int),
      timeout: map['timeout'] == null ? null : pulumi.Output.create<int>(map['timeout'] as int),
      transparent: map['transparent'] == null ? null : pulumi.Output.create<String>(map['transparent'] as String),
      upInterval: map['upInterval'] == null ? null : pulumi.Output.create<int>(map['upInterval'] as int),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
    );
  }
}


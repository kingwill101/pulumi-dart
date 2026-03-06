// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getMonitor.
class GetMonitorResult {
  /// Displays whether adaptive response time monitoring is enabled for this monitor.
  final String adaptive;
  /// Displays whether adaptive response time monitoring is enabled for this monitor.
  final int adaptiveLimit;
  final String base;
  final String chaseReferrals;
  final String database;
  final String defaultsFrom;
  /// id will be full path name of ltm monitor.
  final String destination;
  final String filename;
  final String filter;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.
  final int interval;
  /// Displays the differentiated services code point (DSCP). DSCP is a 6-bit value in the Differentiated Services (DS) field of the IP header.
  final int ipDscp;
  final String mandatoryAttributes;
  /// Displays whether the system automatically changes the status of a resource to Enabled at the next successful monitor check.
  final String manualResume;
  final String mode;
  final String name;
  final String partition;
  final String receiveDisable;
  /// Instructs the system to mark the target resource down when the test is successful.
  final String reverse;
  final String security;
  final int timeUntilUp;
  final int timeout;
  /// Displays whether the monitor operates in transparent mode.
  final String transparent;
  final String username;

  /// Creates a new [GetMonitorResult].
  /// [adaptive] Displays whether adaptive response time monitoring is enabled for this monitor.
  /// [adaptiveLimit] Displays whether adaptive response time monitoring is enabled for this monitor.
  /// [base] Required.
  /// [chaseReferrals] Required.
  /// [database] Required.
  /// [defaultsFrom] Required.
  /// [destination] id will be full path name of ltm monitor.
  /// [filename] Required.
  /// [filter] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [interval] Specifies, in seconds, the frequency at which the system issues the monitor check when either the resource is down or the status of the resource is unknown.
  /// [ipDscp] Displays the differentiated services code point (DSCP). DSCP is a 6-bit value in the Differentiated Services (DS) field of the IP header.
  /// [mandatoryAttributes] Required.
  /// [manualResume] Displays whether the system automatically changes the status of a resource to Enabled at the next successful monitor check.
  /// [mode] Required.
  /// [name] Required.
  /// [partition] Required.
  /// [receiveDisable] Required.
  /// [reverse] Instructs the system to mark the target resource down when the test is successful.
  /// [security] Required.
  /// [timeUntilUp] Required.
  /// [timeout] Required.
  /// [transparent] Displays whether the monitor operates in transparent mode.
  /// [username] Required.
  const GetMonitorResult({
    required this.adaptive,
    required this.adaptiveLimit,
    required this.base,
    required this.chaseReferrals,
    required this.database,
    required this.defaultsFrom,
    required this.destination,
    required this.filename,
    required this.filter,
    required this.id,
    required this.interval,
    required this.ipDscp,
    required this.mandatoryAttributes,
    required this.manualResume,
    required this.mode,
    required this.name,
    required this.partition,
    required this.receiveDisable,
    required this.reverse,
    required this.security,
    required this.timeUntilUp,
    required this.timeout,
    required this.transparent,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adaptive': adaptive,
      'adaptiveLimit': adaptiveLimit,
      'base': base,
      'chaseReferrals': chaseReferrals,
      'database': database,
      'defaultsFrom': defaultsFrom,
      'destination': destination,
      'filename': filename,
      'filter': filter,
      'id': id,
      'interval': interval,
      'ipDscp': ipDscp,
      'mandatoryAttributes': mandatoryAttributes,
      'manualResume': manualResume,
      'mode': mode,
      'name': name,
      'partition': partition,
      'receiveDisable': receiveDisable,
      'reverse': reverse,
      'security': security,
      'timeUntilUp': timeUntilUp,
      'timeout': timeout,
      'transparent': transparent,
      'username': username,
    };
  }

  factory GetMonitorResult.fromMap(Map<String, dynamic> map) {
    return GetMonitorResult(
      adaptive: map['adaptive'] as String,
      adaptiveLimit: map['adaptiveLimit'] as int,
      base: map['base'] as String,
      chaseReferrals: map['chaseReferrals'] as String,
      database: map['database'] as String,
      defaultsFrom: map['defaultsFrom'] as String,
      destination: map['destination'] as String,
      filename: map['filename'] as String,
      filter: map['filter'] as String,
      id: map['id'] as String,
      interval: map['interval'] as int,
      ipDscp: map['ipDscp'] as int,
      mandatoryAttributes: map['mandatoryAttributes'] as String,
      manualResume: map['manualResume'] as String,
      mode: map['mode'] as String,
      name: map['name'] as String,
      partition: map['partition'] as String,
      receiveDisable: map['receiveDisable'] as String,
      reverse: map['reverse'] as String,
      security: map['security'] as String,
      timeUntilUp: map['timeUntilUp'] as int,
      timeout: map['timeout'] as int,
      transparent: map['transparent'] as String,
      username: map['username'] as String,
    );
  }
}


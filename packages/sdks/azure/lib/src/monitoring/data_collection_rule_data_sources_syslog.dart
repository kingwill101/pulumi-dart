// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCollectionRuleDataSourcesSyslog {
  /// Specifies a list of facility names. Use a wildcard `*` to collect logs for all facility names. Possible values are `alert`, `*`, `audit`, `auth`, `authpriv`, `clock`, `cron`, `daemon`, `ftp`, `kern`, `local5`, `local4`, `local1`, `local7`, `local6`, `local3`, `local2`, `local0`, `lpr`, `mail`, `mark`, `news`, `nopri`, `ntp`, `syslog`, `user` and `uucp`.
  final pulumi.Input<List<String>> facilityNames;
  /// Specifies a list of log levels. Use a wildcard `*` to collect logs for all log levels. Possible values are `Debug`, `Info`, `Notice`, `Warning`, `Error`, `Critical`, `Alert`, `Emergency`,and `*`.
  final pulumi.Input<List<String>> logLevels;
  /// The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  final pulumi.Input<String> name;
  /// Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-Syslog`,and `Microsoft-CiscoAsa`, and `Microsoft-CommonSecurityLog`.
  final pulumi.Input<List<String>> streams;

  /// Creates a new [DataCollectionRuleDataSourcesSyslog].
  /// [facilityNames] Specifies a list of facility names. Use a wildcard `*` to collect logs for all facility names. Possible values are `alert`, `*`, `audit`, `auth`, `authpriv`, `clock`, `cron`, `daemon`, `ftp`, `kern`, `local5`, `local4`, `local1`, `local7`, `local6`, `local3`, `local2`, `local0`, `lpr`, `mail`, `mark`, `news`, `nopri`, `ntp`, `syslog`, `user` and `uucp`.
  /// [logLevels] Specifies a list of log levels. Use a wildcard `*` to collect logs for all log levels. Possible values are `Debug`, `Info`, `Notice`, `Warning`, `Error`, `Critical`, `Alert`, `Emergency`,and `*`.
  /// [name] The name which should be used for this data source. This name should be unique across all data sources regardless of type within the Data Collection Rule.
  /// [streams] Specifies a list of streams that this data source will be sent to. A stream indicates what schema will be used for this data and usually what table in Log Analytics the data will be sent to. Possible values include but not limited to `Microsoft-Syslog`,and `Microsoft-CiscoAsa`, and `Microsoft-CommonSecurityLog`.
  DataCollectionRuleDataSourcesSyslog({
    required this.facilityNames,
    required this.logLevels,
    required this.name,
    required this.streams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'facilityNames': facilityNames,
      'logLevels': logLevels,
      'name': name,
      'streams': streams,
    };
  }

  factory DataCollectionRuleDataSourcesSyslog.fromMap(Map<String, dynamic> map) {
    return DataCollectionRuleDataSourcesSyslog(
      facilityNames: ((map['facilityNames'] as List).cast<String>()).input(),
      logLevels: ((map['logLevels'] as List).cast<String>()).input(),
      name: (map['name'] as String).input(),
      streams: ((map['streams'] as List).cast<String>()).input(),
    );
  }
}


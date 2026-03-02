// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_logs_get_logs_args_doc}
/// Arguments for getLogs.
/// {@endtemplate}
/// {@macro pulumi_index_get_logs_get_logs_args_doc}
class GetLogsArgs {
  final pulumi.Input<bool>? details;
  /// Discard headers that docker appends to each log entry
  final pulumi.Input<bool>? discardHeaders;
  final pulumi.Input<bool>? follow;
  /// If true populate computed value `logs_list_string`
  final pulumi.Input<bool>? logsListStringEnabled;
  /// The name of the Docker Container
  final pulumi.Input<String> name;
  final pulumi.Input<bool>? showStderr;
  final pulumi.Input<bool>? showStdout;
  final pulumi.Input<String>? since;
  final pulumi.Input<String>? tail;
  final pulumi.Input<bool>? timestamps;
  final pulumi.Input<String>? until;

  /// Creates a new [GetLogsArgs].
  /// [details] Optional.
  /// [discardHeaders] Discard headers that docker appends to each log entry
  /// [follow] Optional.
  /// [logsListStringEnabled] If true populate computed value `logs_list_string`
  /// [name] The name of the Docker Container
  /// [showStderr] Optional.
  /// [showStdout] Optional.
  /// [since] Optional.
  /// [tail] Optional.
  /// [timestamps] Optional.
  /// [until] Optional.
  GetLogsArgs({
    this.details,
    this.discardHeaders,
    this.follow,
    this.logsListStringEnabled,
    required this.name,
    this.showStderr,
    this.showStdout,
    this.since,
    this.tail,
    this.timestamps,
    this.until,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'details': ?details,
      'discardHeaders': ?discardHeaders,
      'follow': ?follow,
      'logsListStringEnabled': ?logsListStringEnabled,
      'name': name,
      'showStderr': ?showStderr,
      'showStdout': ?showStdout,
      'since': ?since,
      'tail': ?tail,
      'timestamps': ?timestamps,
      'until': ?until,
    };
  }

  factory GetLogsArgs.fromMap(Map<String, dynamic> map) {
    return GetLogsArgs(
      details: map['details'] == null ? null : (map['details'] as bool).input(),
      discardHeaders: map['discardHeaders'] == null ? null : (map['discardHeaders'] as bool).input(),
      follow: map['follow'] == null ? null : (map['follow'] as bool).input(),
      logsListStringEnabled: map['logsListStringEnabled'] == null ? null : (map['logsListStringEnabled'] as bool).input(),
      name: (map['name'] as String).input(),
      showStderr: map['showStderr'] == null ? null : (map['showStderr'] as bool).input(),
      showStdout: map['showStdout'] == null ? null : (map['showStdout'] as bool).input(),
      since: map['since'] == null ? null : (map['since'] as String).input(),
      tail: map['tail'] == null ? null : (map['tail'] as String).input(),
      timestamps: map['timestamps'] == null ? null : (map['timestamps'] as bool).input(),
      until: map['until'] == null ? null : (map['until'] as String).input(),
    );
  }
}


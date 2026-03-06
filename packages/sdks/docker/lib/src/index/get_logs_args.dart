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
  const GetLogsArgs({
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
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      discardHeaders: (() { final guardedValue = map['discardHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      follow: (() { final guardedValue = map['follow']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      logsListStringEnabled: (() { final guardedValue = map['logsListStringEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      showStderr: (() { final guardedValue = map['showStderr']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      showStdout: (() { final guardedValue = map['showStdout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      since: (() { final guardedValue = map['since']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tail: (() { final guardedValue = map['tail']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timestamps: (() { final guardedValue = map['timestamps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      until: (() { final guardedValue = map['until']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}


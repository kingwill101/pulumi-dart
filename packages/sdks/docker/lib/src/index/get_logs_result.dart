// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogs.
class GetLogsResult {
  final bool? details;
  /// Discard headers that docker appends to each log entry
  final bool? discardHeaders;
  final bool? follow;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// If true populate computed value `logsListString`
  final bool? logsListStringEnabled;
  /// List of container logs, each element is a line.
  final List<String>? logsListStrings;
  /// The name of the Docker Container
  final String? name;
  final bool? showStderr;
  final bool? showStdout;
  final String? since;
  final String? tail;
  final bool? timestamps;
  final String? until;

  /// Creates a new [GetLogsResult].
  /// [details] Optional.
  /// [discardHeaders] Discard headers that docker appends to each log entry
  /// [follow] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logsListStringEnabled] If true populate computed value `logsListString`
  /// [logsListStrings] List of container logs, each element is a line.
  /// [name] The name of the Docker Container
  /// [showStderr] Optional.
  /// [showStdout] Optional.
  /// [since] Optional.
  /// [tail] Optional.
  /// [timestamps] Optional.
  /// [until] Optional.
  const GetLogsResult({
    this.details,
    this.discardHeaders,
    this.follow,
    this.id,
    this.logsListStringEnabled,
    this.logsListStrings,
    this.name,
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
      'id': ?id,
      'logsListStringEnabled': ?logsListStringEnabled,
      'logsListStrings': ?logsListStrings,
      'name': ?name,
      'showStderr': ?showStderr,
      'showStdout': ?showStdout,
      'since': ?since,
      'tail': ?tail,
      'timestamps': ?timestamps,
      'until': ?until,
    };
  }

  factory GetLogsResult.fromMap(Map<String, dynamic> map) {
    return GetLogsResult(
      details: (() { final guardedValue = map['details']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      discardHeaders: (() { final guardedValue = map['discardHeaders']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      follow: (() { final guardedValue = map['follow']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logsListStringEnabled: (() { final guardedValue = map['logsListStringEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      logsListStrings: (() { final guardedValue = map['logsListStrings']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      showStderr: (() { final guardedValue = map['showStderr']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      showStdout: (() { final guardedValue = map['showStdout']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      since: (() { final guardedValue = map['since']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tail: (() { final guardedValue = map['tail']; if (guardedValue == null) return null; return guardedValue as String; })(),
      timestamps: (() { final guardedValue = map['timestamps']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      until: (() { final guardedValue = map['until']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

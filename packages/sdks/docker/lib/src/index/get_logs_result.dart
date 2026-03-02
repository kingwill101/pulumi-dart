// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getLogs.
class GetLogsResult {
  final bool? details;
  /// Discard headers that docker appends to each log entry
  final bool? discardHeaders;
  final bool? follow;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// If true populate computed value `logs_list_string`
  final bool? logsListStringEnabled;
  /// List of container logs, each element is a line.
  final List<String> logsListStrings;
  /// The name of the Docker Container
  final String name;
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
  /// [logsListStringEnabled] If true populate computed value `logs_list_string`
  /// [logsListStrings] List of container logs, each element is a line.
  /// [name] The name of the Docker Container
  /// [showStderr] Optional.
  /// [showStdout] Optional.
  /// [since] Optional.
  /// [tail] Optional.
  /// [timestamps] Optional.
  /// [until] Optional.
  GetLogsResult({
    this.details,
    this.discardHeaders,
    this.follow,
    required this.id,
    this.logsListStringEnabled,
    required this.logsListStrings,
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
      'id': id,
      'logsListStringEnabled': ?logsListStringEnabled,
      'logsListStrings': logsListStrings,
      'name': name,
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
      details: map['details'] == null ? null : map['details']! as bool,
      discardHeaders: map['discardHeaders'] == null ? null : map['discardHeaders']! as bool,
      follow: map['follow'] == null ? null : map['follow']! as bool,
      id: map['id'] as String,
      logsListStringEnabled: map['logsListStringEnabled'] == null ? null : map['logsListStringEnabled']! as bool,
      logsListStrings: (map['logsListStrings'] as List).cast<String>(),
      name: map['name'] as String,
      showStderr: map['showStderr'] == null ? null : map['showStderr']! as bool,
      showStdout: map['showStdout'] == null ? null : map['showStdout']! as bool,
      since: map['since'] == null ? null : map['since']! as String,
      tail: map['tail'] == null ? null : map['tail']! as String,
      timestamps: map['timestamps'] == null ? null : map['timestamps']! as bool,
      until: map['until'] == null ? null : map['until']! as String,
    );
  }
}


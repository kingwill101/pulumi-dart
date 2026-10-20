// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVersion.
class GetVersionResult {
  /// The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  final String? createTime;
  /// Optional. The developer-provided description of this version.
  final String? description;
  /// The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final String? name;
  /// The status of this version. This field is read-only and cannot be set by create and update methods.
  final String? status;
  /// The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  final int? versionNumber;

  /// Creates a new [GetVersionResult].
  /// [createTime] The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  /// [description] Optional. The developer-provided description of this version.
  /// [name] The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// [status] The status of this version. This field is read-only and cannot be set by create and update methods.
  /// [versionNumber] The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  const GetVersionResult({
    this.createTime,
    this.description,
    this.name,
    this.status,
    this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'description': ?description,
      'name': ?name,
      'status': ?status,
      'versionNumber': ?versionNumber,
    };
  }

  factory GetVersionResult.fromMap(Map<String, dynamic> map) {
    return GetVersionResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      versionNumber: (() { final guardedValue = map['versionNumber']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}

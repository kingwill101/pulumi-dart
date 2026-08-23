// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getVersion.
class GetVersionDialogflowV2beta1Result {
  /// The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  final String createTime;
  /// Optional. The developer-provided description of this version.
  final String description;
  /// The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  final String name;
  /// The status of this version. This field is read-only and cannot be set by create and update methods.
  final String status;
  /// The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  final int versionNumber;

  /// Creates a new [GetVersionDialogflowV2beta1Result].
  /// [createTime] The creation time of this version. This field is read-only, i.e., it cannot be set by create and update methods.
  /// [description] Optional. The developer-provided description of this version.
  /// [name] The unique identifier of this agent version. Supported formats: - `projects//agent/versions/` - `projects//locations//agent/versions/`
  /// [status] The status of this version. This field is read-only and cannot be set by create and update methods.
  /// [versionNumber] The sequential number of this version. This field is read-only which means it cannot be set by create and update methods.
  const GetVersionDialogflowV2beta1Result({
    required this.createTime,
    required this.description,
    required this.name,
    required this.status,
    required this.versionNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'name': name,
      'status': status,
      'versionNumber': versionNumber,
    };
  }

  factory GetVersionDialogflowV2beta1Result.fromMap(Map<String, dynamic> map) {
    return GetVersionDialogflowV2beta1Result(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      status: map['status'] as String,
      versionNumber: map['versionNumber'] as int,
    );
  }
}

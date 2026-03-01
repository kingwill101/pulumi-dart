// ignore_for_file: unused_element, unnecessary_cast


/// The storage task assignment report
class StorageTaskAssignmentReportResponse {
  /// The container prefix for the location of storage task assignment report
  final String prefix;

  /// Creates a new [StorageTaskAssignmentReportResponse].
  /// [prefix] The container prefix for the location of storage task assignment report
  StorageTaskAssignmentReportResponse({
    required this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'prefix': prefix,
    };
  }

  factory StorageTaskAssignmentReportResponse.fromMap(Map<String, dynamic> map) {
    return StorageTaskAssignmentReportResponse(
      prefix: map['prefix'] as String,
    );
  }
}


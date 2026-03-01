// ignore_for_file: unused_element, unnecessary_cast


/// Protected append writes history setting for the blob container with Legal holds.
class ProtectedAppendWritesHistoryResponse {
  /// When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  final bool? allowProtectedAppendWritesAll;
  /// Returns the date and time the tag was added.
  final String timestamp;

  /// Creates a new [ProtectedAppendWritesHistoryResponse].
  /// [allowProtectedAppendWritesAll] When enabled, new blocks can be written to both 'Append and Bock Blobs' while maintaining legal hold protection and compliance. Only new blocks can be added and any existing blocks cannot be modified or deleted.
  /// [timestamp] Returns the date and time the tag was added.
  ProtectedAppendWritesHistoryResponse({
    this.allowProtectedAppendWritesAll,
    required this.timestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowProtectedAppendWritesAll': ?allowProtectedAppendWritesAll,
      'timestamp': timestamp,
    };
  }

  factory ProtectedAppendWritesHistoryResponse.fromMap(Map<String, dynamic> map) {
    return ProtectedAppendWritesHistoryResponse(
      allowProtectedAppendWritesAll: map['allowProtectedAppendWritesAll'] == null ? null : map['allowProtectedAppendWritesAll'] as bool,
      timestamp: map['timestamp'] as String,
    );
  }
}


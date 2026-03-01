// ignore_for_file: unused_element, unnecessary_cast


class AgentOptionsResponse {
  /// The number of hugepages to allocate.
  final double hugepagesCount;
  /// The size of the hugepages to allocate.
  final String? hugepagesSize;

  /// Creates a new [AgentOptionsResponse].
  /// [hugepagesCount] The number of hugepages to allocate.
  /// [hugepagesSize] The size of the hugepages to allocate.
  AgentOptionsResponse({
    required this.hugepagesCount,
    this.hugepagesSize,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepagesCount': hugepagesCount,
      'hugepagesSize': ?hugepagesSize,
    };
  }

  factory AgentOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AgentOptionsResponse(
      hugepagesCount: map['hugepagesCount'] as double,
      hugepagesSize: map['hugepagesSize'] == null ? null : map['hugepagesSize'] as String,
    );
  }
}


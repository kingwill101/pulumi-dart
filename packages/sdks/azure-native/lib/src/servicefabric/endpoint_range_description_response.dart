// ignore_for_file: unused_element, unnecessary_cast


/// Port range details
class EndpointRangeDescriptionResponse {
  /// End port of a range of ports
  final int endPort;
  /// Starting port of a range of ports
  final int startPort;

  /// Creates a new [EndpointRangeDescriptionResponse].
  /// [endPort] End port of a range of ports
  /// [startPort] Starting port of a range of ports
  EndpointRangeDescriptionResponse({
    required this.endPort,
    required this.startPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPort': endPort,
      'startPort': startPort,
    };
  }

  factory EndpointRangeDescriptionResponse.fromMap(Map<String, dynamic> map) {
    return EndpointRangeDescriptionResponse(
      endPort: map['endPort'] as int,
      startPort: map['startPort'] as int,
    );
  }
}


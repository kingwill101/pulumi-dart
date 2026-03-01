// ignore_for_file: unused_element, unnecessary_cast


/// Port range details
class EndpointRangeDescription {
  /// End port of a range of ports
  final int endPort;
  /// Starting port of a range of ports
  final int startPort;

  /// Creates a new [EndpointRangeDescription].
  /// [endPort] End port of a range of ports
  /// [startPort] Starting port of a range of ports
  EndpointRangeDescription({
    required this.endPort,
    required this.startPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endPort': endPort,
      'startPort': startPort,
    };
  }

  factory EndpointRangeDescription.fromMap(Map<String, dynamic> map) {
    return EndpointRangeDescription(
      endPort: map['endPort'] as int,
      startPort: map['startPort'] as int,
    );
  }
}


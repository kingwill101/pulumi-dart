// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Port range details
class EndpointRangeDescription {
  /// End port of a range of ports
  final pulumi.Input<int> endPort;
  /// Starting port of a range of ports
  final pulumi.Input<int> startPort;

  /// Creates a new [EndpointRangeDescription].
  /// [endPort] End port of a range of ports
  /// [startPort] Starting port of a range of ports
  const EndpointRangeDescription({
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
      endPort: pulumi.Input.fromValue(map['endPort'] as int),
      startPort: pulumi.Input.fromValue(map['startPort'] as int),
    );
  }
}

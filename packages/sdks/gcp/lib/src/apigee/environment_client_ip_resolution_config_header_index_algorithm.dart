// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm {
  /// The index of the ip in the header. Positive indices 0, 1, 2, 3 chooses indices from the left (first ips). Negative indices -1, -2, -3 chooses indices from the right (last ips).
  final pulumi.Input<int> ipHeaderIndex;

  /// The name of the header to extract the client ip from. We are currently only supporting the X-Forwarded-For header.
  final pulumi.Input<String> ipHeaderName;

  /// Creates a new [EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm].
  /// [ipHeaderIndex] The index of the ip in the header. Positive indices 0, 1, 2, 3 chooses indices from the left (first ips). Negative indices -1, -2, -3 chooses indices from the right (last ips).
  /// [ipHeaderName] The name of the header to extract the client ip from. We are currently only supporting the X-Forwarded-For header.
  EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm({
    required this.ipHeaderIndex,
    required this.ipHeaderName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipHeaderIndex': ipHeaderIndex,
      'ipHeaderName': ipHeaderName,
    };
  }

  factory EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm.fromMap(
    Map<String, dynamic> map,
  ) {
    return EnvironmentClientIpResolutionConfigHeaderIndexAlgorithm(
      ipHeaderIndex: pulumi.Input.fromValue(map['ipHeaderIndex'] as int),
      ipHeaderName: pulumi.Input.fromValue(map['ipHeaderName'] as String),
    );
  }
}

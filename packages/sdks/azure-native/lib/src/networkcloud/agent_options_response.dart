// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentOptionsResponse {
  /// The number of hugepages to allocate.
  final pulumi.Input<double> hugepagesCount;
  /// The size of the hugepages to allocate.
  final pulumi.Input<String?>? hugepagesSize;

  /// Creates a new [AgentOptionsResponse].
  /// [hugepagesCount] The number of hugepages to allocate.
  /// [hugepagesSize] The size of the hugepages to allocate.
  AgentOptionsResponse({
    required this.hugepagesCount,
    pulumi.Input<String?>? hugepagesSize,
  }) : hugepagesSize = hugepagesSize ?? pulumi.Input.fromValue('2M');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hugepagesCount': hugepagesCount,
      'hugepagesSize': ?hugepagesSize,
    };
  }

  factory AgentOptionsResponse.fromMap(Map<String, dynamic> map) {
    return AgentOptionsResponse(
      hugepagesCount: pulumi.Input.fromValue((map['hugepagesCount'] as num).toDouble()),
      hugepagesSize: (() { final guardedValue = map['hugepagesSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

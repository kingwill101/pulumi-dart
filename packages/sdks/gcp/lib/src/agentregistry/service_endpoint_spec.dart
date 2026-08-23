// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceEndpointSpec {
  /// The type of the Endpoint spec content.
  /// Possible values are: `NO_SPEC`.
  final pulumi.Input<String> type;

  /// Creates a new [ServiceEndpointSpec].
  /// [type] The type of the Endpoint spec content.
  const ServiceEndpointSpec({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory ServiceEndpointSpec.fromMap(Map<String, dynamic> map) {
    return ServiceEndpointSpec(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

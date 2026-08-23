// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiscoveredWorkloadWorkloadReference {
  /// The underlying resource URI.
  final pulumi.Input<String> uri;

  /// Creates a new [GetDiscoveredWorkloadWorkloadReference].
  /// [uri] The underlying resource URI.
  const GetDiscoveredWorkloadWorkloadReference({
    required this.uri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uri': uri,
    };
  }

  factory GetDiscoveredWorkloadWorkloadReference.fromMap(Map<String, dynamic> map) {
    return GetDiscoveredWorkloadWorkloadReference(
      uri: pulumi.Input.fromValue(map['uri'] as String),
    );
  }
}

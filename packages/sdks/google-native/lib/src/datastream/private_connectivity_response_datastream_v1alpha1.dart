// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Connectivity
class PrivateConnectivityResponseDatastreamV1alpha1 {
  final pulumi.Input<String> privateConnectionName;

  /// Creates a new [PrivateConnectivityResponseDatastreamV1alpha1].
  /// [privateConnectionName] Required.
  const PrivateConnectivityResponseDatastreamV1alpha1({
    required this.privateConnectionName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateConnectionName': privateConnectionName,
    };
  }

  factory PrivateConnectivityResponseDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return PrivateConnectivityResponseDatastreamV1alpha1(
      privateConnectionName: pulumi.Input.fromValue(map['privateConnectionName'] as String),
    );
  }
}

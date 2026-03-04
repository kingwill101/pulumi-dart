// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Private Connectivity
class PrivateConnectivityDatastreamV1alpha1 {
  final pulumi.Input<String>? privateConnectionName;

  /// Creates a new [PrivateConnectivityDatastreamV1alpha1].
  /// [privateConnectionName] Optional.
  PrivateConnectivityDatastreamV1alpha1({this.privateConnectionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'privateConnectionName': ?privateConnectionName};
  }

  factory PrivateConnectivityDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return PrivateConnectivityDatastreamV1alpha1(
      privateConnectionName: (() {
        final guardedValue = map['privateConnectionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

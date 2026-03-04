// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsClusterControlPlaneInstancePlacement {
  /// The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  final pulumi.Input<String>? tenancy;

  /// Creates a new [AwsClusterControlPlaneInstancePlacement].
  /// [tenancy] The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  AwsClusterControlPlaneInstancePlacement({this.tenancy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tenancy': ?tenancy};
  }

  factory AwsClusterControlPlaneInstancePlacement.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsClusterControlPlaneInstancePlacement(
      tenancy: (() {
        final guardedValue = map['tenancy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}

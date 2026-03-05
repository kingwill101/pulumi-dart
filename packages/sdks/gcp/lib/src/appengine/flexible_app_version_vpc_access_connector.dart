// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FlexibleAppVersionVpcAccessConnector {
  /// Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
  final pulumi.Input<String> name;

  /// Creates a new [FlexibleAppVersionVpcAccessConnector].
  /// [name] Full Serverless VPC Access Connector name e.g. /projects/my-project/locations/us-central1/connectors/c1.
  FlexibleAppVersionVpcAccessConnector({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory FlexibleAppVersionVpcAccessConnector.fromMap(Map<String, dynamic> map) {
    return FlexibleAppVersionVpcAccessConnector(
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}


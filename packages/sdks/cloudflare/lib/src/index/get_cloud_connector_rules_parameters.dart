// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetCloudConnectorRulesParameters {
  /// Host to perform Cloud Connection to
  final pulumi.Input<String> host;

  /// Creates a new [GetCloudConnectorRulesParameters].
  /// [host] Host to perform Cloud Connection to
  const GetCloudConnectorRulesParameters({
    required this.host,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': host,
    };
  }

  factory GetCloudConnectorRulesParameters.fromMap(Map<String, dynamic> map) {
    return GetCloudConnectorRulesParameters(
      host: pulumi.Input.fromValue(map['host'] as String),
    );
  }
}

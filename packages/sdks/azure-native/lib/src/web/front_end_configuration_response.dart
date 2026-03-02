// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FrontEndConfigurationResponse {
  final pulumi.Input<String>? kind;

  /// Creates a new [FrontEndConfigurationResponse].
  /// [kind] Optional.
  FrontEndConfigurationResponse({
    this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kind': ?kind,
    };
  }

  factory FrontEndConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return FrontEndConfigurationResponse(
      kind: map['kind'] == null ? null : (map['kind']! as String).input(),
    );
  }
}


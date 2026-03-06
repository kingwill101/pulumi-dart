// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PerimeterBasedAccessRuleResponse {
  /// NSP id in the ARM id format.
  final pulumi.Input<String> id;
  /// Location of the NSP supplied.
  final pulumi.Input<String> location;
  /// Resource guid of the NSP supplied.
  final pulumi.Input<String> perimeterGuid;

  /// Creates a new [PerimeterBasedAccessRuleResponse].
  /// [id] NSP id in the ARM id format.
  /// [location] Location of the NSP supplied.
  /// [perimeterGuid] Resource guid of the NSP supplied.
  const PerimeterBasedAccessRuleResponse({
    required this.id,
    required this.location,
    required this.perimeterGuid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'location': location,
      'perimeterGuid': perimeterGuid,
    };
  }

  factory PerimeterBasedAccessRuleResponse.fromMap(Map<String, dynamic> map) {
    return PerimeterBasedAccessRuleResponse(
      id: pulumi.Input.fromValue(map['id'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      perimeterGuid: pulumi.Input.fromValue(map['perimeterGuid'] as String),
    );
  }
}


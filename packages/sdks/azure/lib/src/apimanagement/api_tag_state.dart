// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiTag resources.
class ApiTagState {
  /// The ID of the API Management API. Changing this forces a new API Management API Tag to be created.
  final pulumi.Input<String>? apiId;
  /// The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created.
  final pulumi.Input<String>? name;

  /// Creates a new [ApiTagState].
  /// [apiId] The ID of the API Management API. Changing this forces a new API Management API Tag to be created.
  /// [name] The name of the tag. It must be known in the API Management instance. Changing this forces a new API Management API Tag to be created.
  ApiTagState({
    this.apiId,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'name': ?name,
    };
  }

  factory ApiTagState.fromMap(Map<String, dynamic> map) {
    return ApiTagState(
      apiId: map['apiId'] == null ? null : (map['apiId'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}


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
    pulumi.Output<String>? apiId,
    pulumi.Output<String>? name,
  }) :
      apiId = pulumi.Input.asOptionalInput<String>(apiId),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': ?apiId,
      'name': ?name,
    };
  }

  factory ApiTagState.fromMap(Map<String, dynamic> map) {
    return ApiTagState(
      apiId: map['apiId'] == null ? null : pulumi.Output.create<String>(map['apiId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


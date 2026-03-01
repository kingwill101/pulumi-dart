// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApiOperationTag resources.
class ApiOperationTagState {
  /// The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
  final pulumi.Input<String>? apiOperationId;
  /// The display name of the API Management API Operation Tag.
  final pulumi.Input<String>? displayName;
  /// The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service.
  final pulumi.Input<String>? name;

  /// Creates a new [ApiOperationTagState].
  /// [apiOperationId] The ID of the API Management API Operation. Changing this forces a new API Management API Operation Tag to be created.
  /// [displayName] The display name of the API Management API Operation Tag.
  /// [name] The name which should be used for this API Management API Operation Tag. Changing this forces a new API Management API Operation Tag to be created. The name must be unique in the API Management Service.
  ApiOperationTagState({
    pulumi.Output<String>? apiOperationId,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
  }) :
      apiOperationId = pulumi.Input.asOptionalInput<String>(apiOperationId),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiOperationId': ?apiOperationId,
      'displayName': ?displayName,
      'name': ?name,
    };
  }

  factory ApiOperationTagState.fromMap(Map<String, dynamic> map) {
    return ApiOperationTagState(
      apiOperationId: map['apiOperationId'] == null ? null : pulumi.Output.create<String>(map['apiOperationId'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}


// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'error_detail_response.dart';

/// The resourceId extended model. This is used to document failed resources with a resourceId and a corresponding error.
class ResourceReferenceExtendedResponse {
  /// The error detail.
  final pulumi.Input<ErrorDetailResponse>? error;
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final pulumi.Input<String> id;

  /// Creates a new [ResourceReferenceExtendedResponse].
  /// [error] The error detail.
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  const ResourceReferenceExtendedResponse({
    this.error,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': ?pulumi.Input.mapOptionalInputValue<ErrorDetailResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'id': id,
    };
  }

  factory ResourceReferenceExtendedResponse.fromMap(Map<String, dynamic> map) {
    return ResourceReferenceExtendedResponse(
      error: (() { final guardedValue = map['error']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ErrorDetailResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}


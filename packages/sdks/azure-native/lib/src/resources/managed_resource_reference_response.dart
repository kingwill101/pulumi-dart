// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The managed resource model.
class ManagedResourceReferenceResponse {
  /// denyAssignment settings applied to the resource.
  final pulumi.Input<String?>? denyStatus;
  /// The ARM Resource ID of a resource managed by the deployment stack.
  final pulumi.Input<String> id;
  /// Current management state of the resource in the deployment stack.
  final pulumi.Input<String?>? status;

  /// Creates a new [ManagedResourceReferenceResponse].
  /// [denyStatus] denyAssignment settings applied to the resource.
  /// [id] The ARM Resource ID of a resource managed by the deployment stack.
  /// [status] Current management state of the resource in the deployment stack.
  ManagedResourceReferenceResponse({
    pulumi.Input<String?>? denyStatus,
    required this.id,
    this.status,
  }) : denyStatus = denyStatus ?? pulumi.Input.fromValue('none');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'denyStatus': ?denyStatus,
      'id': id,
      'status': ?status,
    };
  }

  factory ManagedResourceReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedResourceReferenceResponse(
      denyStatus: (() { final guardedValue = map['denyStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

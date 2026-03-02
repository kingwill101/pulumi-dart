// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RunCommandOutputBlobManagedIdentity {
  /// The client ID of the managed identity.
  final pulumi.Input<String>? clientId;
  /// The object ID of the managed identity.
  final pulumi.Input<String>? objectId;

  /// Creates a new [RunCommandOutputBlobManagedIdentity].
  /// [clientId] The client ID of the managed identity.
  /// [objectId] The object ID of the managed identity.
  RunCommandOutputBlobManagedIdentity({
    this.clientId,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'objectId': ?objectId,
    };
  }

  factory RunCommandOutputBlobManagedIdentity.fromMap(Map<String, dynamic> map) {
    return RunCommandOutputBlobManagedIdentity(
      clientId: map['clientId'] == null ? null : (map['clientId'] as String).input(),
      objectId: map['objectId'] == null ? null : (map['objectId'] as String).input(),
    );
  }
}

